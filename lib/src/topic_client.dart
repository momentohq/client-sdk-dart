import 'package:client_sdk_dart/src/auth/credential_provider.dart';
// import 'package:client_sdk_dart/src/config/logger.dart';
import 'package:logging/logging.dart';
import 'config/topic_configuration.dart';
import 'internal/pubsub_client.dart';
import 'messages/responses/topics/topic_subscribe.dart';
import 'messages/values.dart';
import 'messages/responses/topics/topic_publish.dart';

abstract class ITopicClient {
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value);

  TopicSubscribeResponse subscribe(String cacheName, String topicName);

  void close();
}

class TopicClient implements ITopicClient {
  final ClientPubsub _pubsubClient;
  final Logger _logger = Logger('MomentoTopicClient');

  TopicClient(
      CredentialProvider credentialProvider, TopicConfiguration configuration)
      : _pubsubClient = ClientPubsub(credentialProvider, configuration) {
    // TODO: fix logging level issue
    // _logger.level = determineLoggerLevel(configuration.logLevel);
    _logger.finest("initializing topic client");
  }

  @override
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value) async {
    return await _pubsubClient.publish(cacheName, topicName, value);
  }

  @override
  TopicSubscribeResponse subscribe(String cacheName, String topicName) {
    return _pubsubClient.subscribe(cacheName, topicName);
  }

  @override
  void close() {
    _pubsubClient.close();
  }
}
