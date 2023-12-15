import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:logging/logging.dart';
import 'internal/pubsub_client.dart';
import 'messages/values.dart';
import 'messages/responses/topics/topic_publish.dart';

abstract class ITopicClient {
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value);
}

class TopicClient implements ITopicClient {
  final ClientPubsub _pubsubClient;
  final Logger _logger = Logger('MomentoTopicClient');

  TopicClient(CredentialProvider credentialProvider)
      : _pubsubClient = ClientPubsub(credentialProvider) {
    _logger.finest("initializing topic client");
  }

  @override
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value) {
    return _pubsubClient.publish(cacheName, topicName, value);
  }
}
