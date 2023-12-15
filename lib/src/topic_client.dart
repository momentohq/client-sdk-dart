import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:logging/logging.dart';
import 'internal/pubsub_client.dart';
import 'messages/Values.dart';
import 'messages/responses/topics/topic_publish.dart';

abstract class ITopicClient {
  Future<TopicPublishResponse> publish(String cacheName, String topicName, Value value);
}

class TopicClient implements ITopicClient {
  ClientPubsub _pubsubClient;
  CredentialProvider _credentialProvider;
  final Logger _logger = Logger('MomentoTopicClient');

  TopicClient(this._credentialProvider) : _pubsubClient = ClientPubsub(_credentialProvider);

  @override
  Future<TopicPublishResponse> publish(String cacheName, String topicName, Value value) {
    return this._pubsubClient.publish(cacheName, topicName, value);
  }
}
