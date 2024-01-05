import 'package:momento/src/auth/credential_provider.dart';
import 'package:momento/src/config/logger.dart';
import 'config/topic_configuration.dart';
import 'internal/pubsub_client.dart';
import 'messages/responses/topics/topic_subscribe.dart';
import 'messages/values.dart';
import 'messages/responses/topics/topic_publish.dart';

abstract class ITopicClient {
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value);

  Future<TopicSubscribeResponse> subscribe(String cacheName, String topicName);

  void close();
}

class TopicClient implements ITopicClient {
  final ClientPubsub _pubsubClient;
  final MomentoLogger _logger = MomentoLogger('MomentoTopicClient');

  TopicClient(
      CredentialProvider credentialProvider, TopicConfiguration configuration)
      : _pubsubClient = ClientPubsub(credentialProvider, configuration) {
    _logger.setLevel(configuration.logLevel);
    _logger.trace("initializing topic client");
  }

  @override
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value) async {
    return await _pubsubClient.publish(cacheName, topicName, value);
  }

  @override
  Future<TopicSubscribeResponse> subscribe(
      String cacheName, String topicName) async {
    return await _pubsubClient.subscribe(cacheName, topicName);
  }

  @override
  void close() {
    _pubsubClient.close();
  }
}
