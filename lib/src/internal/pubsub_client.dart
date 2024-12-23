import 'package:momento/generated/cachepubsub.pbgrpc.dart';
import 'package:momento/src/auth/credential_provider.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/internal/topics_grpc_manager.dart';
import 'package:momento/src/messages/responses/topics/topic_subscribe.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../config/logger.dart';
import '../config/topic_configuration.dart';
import '../messages/values.dart';
import '../messages/responses/topics/topic_publish.dart';
import 'utils/utils.dart';

abstract class AbstractPubsubClient {
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value);

  Future<TopicSubscribeResponse> subscribe(String cacheName, String topicName);

  void close();
}

class ClientPubsub implements AbstractPubsubClient {
  final TopicClientConfiguration _configuration;
  late final TopicGrpcManager _grpcManager;
  final MomentoLogger _logger = MomentoLogger('MomentoPubsubClient');
  var firstRequest = true;

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

  Map<String, String> makeHeaders({String? cacheName}) {
    final headers =
        constructHeaders(firstRequest, "topic", cacheName: cacheName);
    if (firstRequest) {
      firstRequest = false;
      _logger.info("First request, sending agent header: $headers");
    }
    return headers;
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
              metadata: makeHeaders(),
              timeout: _configuration.transportStrategy.grpcConfig.deadline));
      return TopicPublishSuccess();
    } catch (e) {
      if (e is GrpcError) {
        return TopicPublishError(grpcStatusToSdkException(e));
      }
      return TopicPublishError(
          UnknownException("Unexpected error: $e", null, null));
    }
  }

  @override
  Future<TopicSubscribeResponse> subscribe(String cacheName, String topicName,
      {Int64? resumeAtTopicSequenceNumber,
      Int64? resumeAtTopicSequencePage}) async {
    var request = SubscriptionRequest_();
    request.cacheName = cacheName;
    request.topic = topicName;
    request.resumeAtTopicSequenceNumber =
        resumeAtTopicSequenceNumber ?? Int64(0);
    request.sequencePage = resumeAtTopicSequencePage ?? Int64(0);
    try {
      var stream = _grpcManager.client
          .subscribe(request, options: CallOptions(metadata: makeHeaders()));
      final subscription = TopicSubscription(
          stream,
          request.resumeAtTopicSequenceNumber,
          this,
          cacheName,
          topicName,
          request.sequencePage);

      try {
        await subscription.init();
        return subscription;
      } catch (e) {
        rethrow;
      }
    } catch (e) {
      if (e is GrpcError) {
        return TopicSubscribeError(grpcStatusToSdkException(e));
      } else if (e is SdkException) {
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
