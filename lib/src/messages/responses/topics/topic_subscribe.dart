import 'package:client_sdk_dart/generated/cachepubsub.pbgrpc.dart';
import 'package:client_sdk_dart/src/errors/errors.dart';
import 'package:client_sdk_dart/src/messages/responses/responses_base.dart';
import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';
import 'package:fixnum/fixnum.dart';

import '../../../internal/pubsub_client.dart';
import 'topic_subscription_item.dart';

sealed class TopicSubscribeResponse {}

class TopicSubscription implements TopicSubscribeResponse {
  ResponseStream<SubscriptionItem_> _stream;
  Int64 lastSequenceNumber;
  final ClientPubsub _client;
  String cacheName;
  String topicName;
  bool retry = true;
  final logger = Logger("TopicSubscribeResponse");

  TopicSubscription(this._stream, this.lastSequenceNumber, this._client,
      this.cacheName, this.topicName);

  Stream<TopicSubscriptionItemResponse> get stream {
    return _handleStream();
  }

  Stream<TopicSubscriptionItemResponse> _handleStream() async* {
    while (retry) {
      try {
        await for (final msg in _stream) {
          var result = _processResult(msg);
          if (result != null) {
            yield result;
          }
        }
      } catch (e) {
        if (e is CancelledException ||
            (e is GrpcError && e.codeName == "CANCELLED")) {
          logger.fine("Subscription was cancelled, not reconnecting");
          retry = false;
        } else {
          logger.fine("Attempting to reconnect after receiving error: $e");
          var result = _client.subscribe(cacheName, topicName,
              resumeAtTopicSequenceNumber: lastSequenceNumber);
          if (result is TopicSubscription) {
            _stream = result._stream;
            lastSequenceNumber = result.lastSequenceNumber;
          } else if (result is TopicSubscribeError) {
            logger.fine("Error reconnecting: ${result.message}");
          }
        }
      }
    }
  }

  TopicSubscriptionItemResponse? _processResult(SubscriptionItem_ item) {
    switch (item.whichKind()) {
      case SubscriptionItem__Kind.item:
        lastSequenceNumber = item.item.topicSequenceNumber;
        return createTopicItemResponse(item.item);
      case SubscriptionItem__Kind.heartbeat:
        logger.fine("topic client received a heartbeat");
      case SubscriptionItem__Kind.discontinuity:
        logger.fine("topic client received a discontinuity");
      default:
        logger.shout(
            "topic client received unknown subscription item: ${item.whichKind()}");
    }
    return null;
  }

  void unsubscribe() async {
    await _stream.cancel();
  }
}

class TopicSubscribeError extends ErrorResponseBase
    implements TopicSubscribeResponse {
  TopicSubscribeError(super.exception);
}
