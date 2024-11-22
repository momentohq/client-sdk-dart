import 'package:fixnum/fixnum.dart';
import 'package:logging/logging.dart';
import 'package:momento/generated/cachepubsub.pb.dart';

sealed class TopicSubscriptionItemResponse {}

class TopicSubscriptionItemText implements TopicSubscriptionItemResponse {
  final String _value;
  final Int64 _sequenceNumber;
  final Int64 _sequencePage;

  TopicSubscriptionItemText(
      this._value, this._sequenceNumber, this._sequencePage);
  String get value => _value;
  Int64 get sequenceNumber => _sequenceNumber;
  Int64 get sequencePage => _sequencePage;
}

class TopicSubscriptionItemBinary implements TopicSubscriptionItemResponse {
  final List<int> _value;
  final Int64 _sequenceNumber;
  final Int64 _sequencePage;

  TopicSubscriptionItemBinary(
      this._value, this._sequenceNumber, this._sequencePage);
  List<int> get value => _value;
  Int64 get sequenceNumber => _sequenceNumber;
  Int64 get sequencePage => _sequencePage;
}

TopicSubscriptionItemResponse? createTopicItemResponse(TopicItem_ item) {
  final logger = Logger("TopicSubscriptionItemResponse");
  switch (item.value.whichKind()) {
    case TopicValue__Kind.text:
      return TopicSubscriptionItemText(
          item.value.text, item.topicSequenceNumber, item.sequencePage);
    case TopicValue__Kind.binary:
      return TopicSubscriptionItemBinary(
          item.value.binary, item.topicSequenceNumber, item.sequencePage);
    case TopicValue__Kind.notSet:
      logger.fine("Received topic subscription item with no set value");
      return null;
  }
}
