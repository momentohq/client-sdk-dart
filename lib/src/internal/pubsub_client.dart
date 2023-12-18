import 'package:client_sdk_dart/generated/cachepubsub.pbgrpc.dart';
import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:client_sdk_dart/src/errors/errors.dart';
import 'package:grpc/grpc.dart';

import '../messages/values.dart';
import '../messages/responses/topics/topic_publish.dart';

abstract class AbstractPubsubClient {
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value);
}

class ClientPubsub implements AbstractPubsubClient {
  late ClientChannel _channel;
  late PubsubClient _client;

  ClientPubsub(CredentialProvider credentialProvider) {
    _channel = ClientChannel(credentialProvider.cacheEndpoint);
    _client = PubsubClient(_channel,
        options: CallOptions(metadata: {
          'authorization': credentialProvider.apiKey,
          'agent': 'dart:0.1.0'
        }));
  }

  @override
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value) async {
    var request = PublishRequest_();
    request.cacheName = cacheName;
    request.topic = topicName;
    request.value = _valueToTopicValue(value);
    try {
      await _client.publish(request);
      return TopicPublishSuccess();
    } catch (e) {
      if (e is SdkException) {
        return TopicPublishError(e);
      }
      return TopicPublishError(
          UnknownException("Unexpected error: $e", null, null));
    }
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
