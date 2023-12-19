import 'package:client_sdk_dart/generated/cachepubsub.pbgrpc.dart';
import 'package:client_sdk_dart/src/messages/responses/responses_base.dart';
import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';

import 'topic_subscription_item.dart';

sealed class TopicSubscribeResponse {}

class TopicSubscription implements TopicSubscribeResponse {
  final ResponseStream<SubscriptionItem_> _stream;

  TopicSubscription(this._stream);

  Stream<TopicSubscriptionItemResponse?> get stream =>
      _stream.map(_processResult).where((item) => item != null);

  TopicSubscriptionItemResponse? _processResult(SubscriptionItem_ item) {
    final logger = Logger("TopicSubscribeResponse");
    switch (item.whichKind()) {
      case SubscriptionItem__Kind.item:
        return createTopicItemResponse(item.item);
      case SubscriptionItem__Kind.heartbeat:
        logger.info("topic client received a heartbeat");
      case SubscriptionItem__Kind.discontinuity:
        logger.info("topic client received a discontinuity");
      default:
        logger.shout("topic client received unknown subscription item: ${item.whichKind()}");
    }
    return null;
  }
}

class TopicSubscribeError extends ErrorResponseBase
    implements TopicSubscribeResponse {
  TopicSubscribeError(super.exception);
}
