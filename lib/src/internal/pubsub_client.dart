import 'package:client_sdk_dart/generated/cachepubsub.pbgrpc.dart';
import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:client_sdk_dart/src/errors/errors.dart';
import 'package:client_sdk_dart/src/internal/topics_grpc_manager.dart';
import 'package:client_sdk_dart/src/messages/responses/topics/topic_subscribe.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../config/topic_configuration.dart';
import '../messages/values.dart';
import '../messages/responses/topics/topic_publish.dart';

abstract class AbstractPubsubClient {
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value);

  TopicSubscribeResponse subscribe(String cacheName, String topicName);

  void close();
}

class ClientPubsub implements AbstractPubsubClient {
  final TopicConfiguration _configuration;
  late final TopicGrpcManager _grpcManager;

  ClientPubsub(CredentialProvider credentialProvider, this._configuration) {
    _grpcManager = TopicGrpcManager(credentialProvider);
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

  @override
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value) async {
    var request = PublishRequest_();
    request.cacheName = cacheName;
    request.topic = topicName;
    request.value = _valueToTopicValue(value);
    try {
      await _grpcManager.client.publish(request,
          options: CallOptions(
              timeout: _configuration.transportStrategy.grpcConfig.deadline));
      return TopicPublishSuccess();
    } catch (e) {
      if (e is SdkException) {
        return TopicPublishError(e);
      }
      return TopicPublishError(
          UnknownException("Unexpected error: $e", null, null));
    }
  }

  @override
  TopicSubscribeResponse subscribe(String cacheName, String topicName,
      {Int64? resumeAtTopicSequenceNumber}) {
    var request = SubscriptionRequest_();
    request.cacheName = cacheName;
    request.topic = topicName;
    request.resumeAtTopicSequenceNumber =
        resumeAtTopicSequenceNumber ?? Int64(0);
    try {
      var stream = _grpcManager.client.subscribe(request);
      return TopicSubscription(stream, request.resumeAtTopicSequenceNumber,
          this, cacheName, topicName);
    } catch (e) {
      print("Error in pubsubclient.subscribe: $e");
      if (e is SdkException) {
        return TopicSubscribeError(e);
      }
      return TopicSubscribeError(
          UnknownException("Unexpected error: $e", null, null));
    }
  }

  @override
  void close() {
    _grpcManager.close();
  }
}
