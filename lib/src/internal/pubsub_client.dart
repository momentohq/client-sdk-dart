import 'dart:typed_data';

import 'package:client_sdk_dart/generated/cachepubsub.pb.dart';
import 'package:client_sdk_dart/generated/cachepubsub.pbgrpc.dart';
import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

import '../messages/responses/topics/topic_publish.dart';

sealed class Value {}
class StringValue  implements Value {
  String _value;
  StringValue(String v) : _value = v;
  String get value => _value;
}

class BinaryValue implements Value {
  List<int> _value;
  BinaryValue(List<int> v) : _value = v;
  List<int> get value => _value;
}

abstract class AbstractPubsubClient {
  Future<TopicPublishResponse> publish(String cacheName, String topicName, Value value);
}

class ClientPubsub implements AbstractPubsubClient {
  late ClientChannel _channel;
  late PubsubClient _client;
  late CredentialProvider _credentialProvider;
  ClientPubsub(CredentialProvider credentialProvider) {
    _channel = ClientChannel(credentialProvider.cacheEndpoint);
    _credentialProvider = credentialProvider;
    _client = PubsubClient(_channel);
  }
  @override
  Future<TopicPublishResponse> publish(String cacheName, String topicName, Value value) async {
    var request = PublishRequest_();
    request.cacheName = cacheName;
    request.topic = topicName;
    request.value = _valueToTopicValue(value);
    await _client.publish(request);
    // TODO: implement publish
    throw UnimplementedError();
  }

  TopicValue_ _valueToTopicValue(Value v) {
    var topicValue = TopicValue_();
    switch (v) {
      case StringValue():
        topicValue.text = v.value;
        return topicValue;
      case BinaryValue():
        topicValue.binary = v.value;
        return topicValue;
    }
  }
}