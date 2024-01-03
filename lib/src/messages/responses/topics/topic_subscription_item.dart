import 'package:momento/generated/cachepubsub.pb.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/messages/responses/responses_base.dart';

sealed class TopicSubscriptionItemResponse {}

class TopicSubscriptionItemText implements TopicSubscriptionItemResponse {
  final String _value;
  TopicSubscriptionItemText(this._value);
  String get value => _value;
}

class TopicSubscriptionItemBinary implements TopicSubscriptionItemResponse {
  final List<int> _value;
  TopicSubscriptionItemBinary(this._value);
  List<int> get value => _value;
}

class TopicSubscriptionItemError extends ErrorResponseBase
    implements TopicSubscriptionItemResponse {
  TopicSubscriptionItemError(super.exception);
}

TopicSubscriptionItemResponse createTopicItemResponse(TopicItem_ item) {
  switch (item.value.whichKind()) {
    case TopicValue__Kind.text:
      return TopicSubscriptionItemText(item.value.text);
    case TopicValue__Kind.binary:
      return TopicSubscriptionItemBinary(item.value.binary);
    default:
      return TopicSubscriptionItemError(UnknownException(
          "unknown TopicItemResponse value: ${item.value}", null, null));
  }
}
