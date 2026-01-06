import 'dart:async';
import 'dart:io';
import 'package:momento/momento.dart';
import 'package:uuid/uuid.dart';

String retrieveApiKeyFromYourSecretsManager() {
  // this is not a valid API key but conforms to the syntax requirements.
  return "eyJhcGlfa2V5IjogImV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpwYzNNaU9pSlBibXhwYm1VZ1NsZFVJRUoxYVd4a1pYSWlMQ0pwWVhRaU9qRTJOemd6TURVNE1USXNJbVY0Y0NJNk5EZzJOVFV4TlRReE1pd2lZWFZrSWpvaUlpd2ljM1ZpSWpvaWFuSnZZMnRsZEVCbGVHRnRjR3hsTG1OdmJTSjkuOEl5OHE4NExzci1EM1lDb19IUDRkLXhqSGRUOFVDSXV2QVljeGhGTXl6OCIsICJlbmRwb2ludCI6ICJ0ZXN0Lm1vbWVudG9ocS5jb20ifQo=";
}

String retrieveApiKeyV2FromYourSecretsManager() {
  // this is not a valid API key but conforms to the syntax requirements.
  return "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0IjoiZyIsImp0aSI6InNvbWUtaWQifQ.GMr9nA6HE0ttB6llXct_2Sg5-fOKGFbJCdACZFgNbN1fhT6OPg_hVc8ThGzBrWC_RlsBpLA1nzqK3SOJDXYxAw";
}

void example_API_CredentialProviderFromApiKeyV2() {
  final apiKey = retrieveApiKeyV2FromYourSecretsManager();
  final endpoint = "cell-4-us-west-2-1.prod.a.momentohq.com";
  CredentialProvider.fromApiKeyV2(apiKey, endpoint);
}

void example_API_CredentialProviderFromDisposableToken() {
  final authToken = retrieveApiKeyFromYourSecretsManager();
  CredentialProvider.fromDisposableToken(authToken);
}

void example_API_CredentialProviderFromEnvVarV2() {
  CredentialProvider.fromEnvironmentVariablesV2();
}

Future<void> example_API_InstantiateCacheClient() async {
  try {
    final cacheClient = CacheClient(
        CredentialProvider.fromEnvironmentVariablesV2(),
        CacheClientConfigurations.latest(),
        Duration(seconds: 30));
  } catch (e) {
    print("Unable to create cache client: $e");
    exit(1);
  }
}

Future<void> example_API_CreateCache(CacheClient cacheClient) async {
  final result = await cacheClient.createCache("test-cache");
  switch (result) {
    case CreateCacheAlreadyExists():
      print("Cache already exists");
    case CreateCacheError():
      print("Error creating cache: $result");
    case CreateCacheSuccess():
      print("Successfully created the cache");
  }
}

Future<void> example_API_ListCaches(CacheClient cacheClient) async {
  final result = await cacheClient.listCaches();
  switch (result) {
    case ListCachesError():
      print("Error listing caches: $result");
    case ListCachesSuccess():
      print("Successfully listed caches: ${result.cacheNames}");
  }
}

Future<void> example_API_DeleteCache(CacheClient cacheClient) async {
  final result = await cacheClient.deleteCache("test-cache");
  switch (result) {
    case DeleteCacheError():
      print("Error deleting cache: $result");
      exit(1);
    case DeleteCacheSuccess():
      print("Successfully deleted cache");
  }
}

Future<void> example_API_Set(CacheClient cacheClient) async {
  final result = await cacheClient.set("test-cache", "test-key", "test-value");
  switch (result) {
    case SetError():
      print("Error setting key: $result");
      exit(1);
    case SetSuccess():
      print("Successfully set item in the cache");
  }
}

Future<void> example_API_Get(CacheClient cacheClient) async {
  final result = await cacheClient.get("test-cache", "test-key");
  switch (result) {
    case GetMiss():
      print("Key was not found in cache.");
    case GetError():
      print("Error getting key: $result");
    case GetHit():
      print("Successfully got item from cache: ${result.value}");
  }
}

Future<void> example_API_Delete(CacheClient cacheClient) async {
  final result = await cacheClient.delete("test-cache", "test-key");
  switch (result) {
    case DeleteError():
      print("Error deleting key: $result");
      exit(1);
    case DeleteSuccess():
      print("Successfully deleted key from cache");
  }
}

Future<void> example_API_InstantiateTopicClient() async {
  try {
    final topicClient = TopicClient(
        CredentialProvider.fromEnvironmentVariablesV2(),
        TopicClientConfigurations.latest());
  } catch (e) {
    print("Unable to create topic client: $e");
    exit(1);
  }
}

Future<void> example_API_TopicSubscribe(TopicClient topicClient) async {
  final subscription = await topicClient.subscribe("test-cache", "test-topic");
  final messageStream = switch (subscription) {
    TopicSubscription() => subscription.stream,
    TopicSubscribeError() => throw Exception(
        "Subscribe error: ${subscription.errorCode} ${subscription.message}"),
  };

  // cancel subscription 5 seconds from now
  Timer(const Duration(seconds: 5), () {
    print("Cancelling subscription!");
    subscription.unsubscribe();
  });

  try {
    await for (final msg in messageStream) {
      switch (msg) {
        case TopicSubscriptionItemBinary():
          print("Binary value: ${msg.value}");
        case TopicSubscriptionItemText():
          print("String value: ${msg.value}");
      }
    }
  } catch (e) {
    print("Runtime type: ${e.runtimeType}");
    print("Error with await for loop: $e");
  }
}

Future<void> example_API_TopicPublish(TopicClient topicClient) async {
  final result = await topicClient.publish("cache", "topic", "hello message!");
  switch (result) {
    case TopicPublishSuccess():
      print("Successful publish!");
    case TopicPublishError():
      print("Publish error: ${result.errorCode} ${result.message}");
  }
}

Future<void> main() async {
  example_API_CredentialProviderFromApiKeyV2();
  example_API_CredentialProviderFromDisposableToken();
  example_API_CredentialProviderFromEnvVarV2();

  final cacheClient = CacheClient(
      CredentialProvider.fromEnvironmentVariablesV2(),
      CacheClientConfigurations.latest(),
      Duration(seconds: 30));

  final topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariablesV2(),
      TopicClientConfigurations.latest());

  final cacheName = "doc-example-apis-${Uuid().v4()}";
  final key = "myKey";
  final value = "myValue";

  await example_API_InstantiateCacheClient();
  await example_API_CreateCache(cacheClient);
  await example_API_ListCaches(cacheClient);

  await example_API_Set(cacheClient);
  await example_API_Get(cacheClient);
  await example_API_Delete(cacheClient);

  await example_API_DeleteCache(cacheClient);

  await example_API_InstantiateTopicClient();

  // the following topics tests need "test-cache" created
  await example_API_CreateCache(cacheClient);

  await example_API_TopicSubscribe(topicClient);
  await example_API_TopicPublish(topicClient);

  // clean up cache used for topic methods
  await example_API_DeleteCache(cacheClient);

  // close the clients to clean up their resources and allow the program to exit
  await cacheClient.close();
  topicClient.close();
}
