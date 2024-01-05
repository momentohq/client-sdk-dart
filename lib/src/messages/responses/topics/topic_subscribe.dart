import 'package:momento/generated/cachepubsub.pbgrpc.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/messages/responses/responses_base.dart';
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
  late Stream _broadcastStream;

  TopicSubscription(this._stream, this.lastSequenceNumber, this._client,
      this.cacheName, this.topicName) {
    _broadcastStream = _stream.asBroadcastStream();
  }

  Future<void> init() async {
    await for (final firstItem in _broadcastStream) {
      if (firstItem.whichKind() != SubscriptionItem__Kind.heartbeat) {
        throw InternalServerException(
            "Expected heartbeat message for topic $topicName on cache $cacheName, got ${firstItem.whichKind()}",
            null,
            null);
      }
      break;
    }
  }

  Stream<TopicSubscriptionItemResponse> get stream {
    return _handleStream();
  }

  Stream<TopicSubscriptionItemResponse> _handleStream() async* {
    while (retry) {
      try {
        await for (final msg in _broadcastStream) {
          var result = _processResult(msg);
          if (result != null) {
            yield result;
          }
        }
      } catch (e) {
        if (e is CancelledException ||
            (e is GrpcError && e.codeName == "CANCELLED")) {
          logger.fine("Subscription was cancelled, not reconnecting");
          await _stream.cancel();
          retry = false;
        } else if (e is ClientResourceExhaustedException ||
            (e is GrpcError && e.codeName == "RESOURCE_EXHAUSTED")) {
          logger.fine("Subscription limit reached, not reconnecting");
          await _stream.cancel();
          retry = false;
        } else {
          logger.fine("Attempting to reconnect after receiving error: $e");
        }
      }

      if (retry) {
        logger.fine("retry is still true");
        retry = await attemptReconnect();
      }
    }
  }

  Future<bool> attemptReconnect() async {
    await _stream.cancel();
    var result = await _client.subscribe(cacheName, topicName,
        resumeAtTopicSequenceNumber: lastSequenceNumber);
    if (result is TopicSubscription) {
      _stream = result._stream;
      _broadcastStream = result._broadcastStream;
      lastSequenceNumber = result.lastSequenceNumber;
    } else if (result is TopicSubscribeError) {
      logger.fine("Error reconnecting: ${result.message}");
      if (result.errorCode == MomentoErrorCode.limitExceededError ||
          result.errorCode == MomentoErrorCode.cancelledError) {
        return false;
      }
    }
    return true;
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
