import 'package:momento/generated/cachepubsub.pb.dart';

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

class TopicSubscriptionItemNotSet implements TopicSubscriptionItemResponse {}

TopicSubscriptionItemResponse createTopicItemResponse(TopicItem_ item) {
  switch (item.value.whichKind()) {
    case TopicValue__Kind.text:
      return TopicSubscriptionItemText(item.value.text);
    case TopicValue__Kind.binary:
      return TopicSubscriptionItemBinary(item.value.binary);
    case TopicValue__Kind.notSet:
      return TopicSubscriptionItemNotSet();
  }
}
