import 'package:momento/src/auth/credential_provider.dart';
import 'package:momento/src/config/logger.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/internal/utils/validators.dart';
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

  /// Client to perform publish and subscribe operations against a Momento topic.
  ///
  /// ```dart
  /// final topicClient = TopicClient(
  ///   CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
  ///   TopicClientConfigurations.latest());
  /// ```
  TopicClient(CredentialProvider credentialProvider,
      TopicClientConfiguration configuration)
      : _pubsubClient = ClientPubsub(credentialProvider, configuration) {
    _logger.setLevel(configuration.logLevel);
    _logger.trace("initializing topic client");
  }

  /// Publish a value to a topic.
  ///
  /// Publishes [value] to a topic specified by [topicName] which exists on a cache
  /// specified by [cacheName].
  /// Returns a response that can be resolved to one of its possible types:
  /// ```dart
  /// switch (publishResponse) {
  ///   case TopicPublishSuccess():
  ///     print("Published to topic");
  ///   case TopicPublishError():
  ///     print("Got an error: ${publishResponse.errorCode} ${publishResponse.message}");
  /// }
  /// ```
  @override
  Future<TopicPublishResponse> publish(
      String cacheName, String topicName, Value value) async {
    try {
      validateCacheName(cacheName);
      validateTopicName(topicName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(TopicPublishError(e));
      } else {
        return Future.value(TopicPublishError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return await _pubsubClient.publish(cacheName, topicName, value);
  }

  /// Subscribe to a topic.
  ///
  /// Subscribes to a topic specified by [topicName] which exists on a cache specified
  /// by [cacheName]. The returned value can be used to iterate over newly published
  /// messages on the topic:
  /// ```dart
  /// final messageStream = switch(subscribeResponse) {
  ///   TopicSubscription() => subscription.stream,
  ///   TopicSubscribeError() => throw Exception(
  ///      "Subscribe error: ${subscription.errorCode} ${subscription.message}"),
  /// }
  ///
  /// try {
  ///   await for (final msg in messageStream) {
  ///     switch (msg) {
  ///       case TopicSubscriptionItemBinary():
  ///         print("Binary value: ${msg.value}");
  ///       case TopicSubscriptionItemText():
  ///         print("String value: ${msg.value}");
  ///     }
  ///   }
  /// } catch (e) {
  ///   print("Error processing messageStream: $e");
  /// }
  /// ```
  @override
  Future<TopicSubscribeResponse> subscribe(
      String cacheName, String topicName) async {
    try {
      validateCacheName(cacheName);
      validateTopicName(topicName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(TopicSubscribeError(e));
      } else {
        return Future.value(TopicSubscribeError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return await _pubsubClient.subscribe(cacheName, topicName);
  }

  /// Close the client and free up all associated resources.
  ///
  /// NOTE: the client object will not be usable after calling this method.
  @override
  void close() {
    _pubsubClient.close();
  }
}
