import 'package:momento/momento.dart';
import 'package:uuid/uuid.dart';
import 'package:test/test.dart';

final apiKeyEnvVarName = "MOMENTO_API_KEY";
final uuidGenerator = Uuid();

class TestSetup {
  late final String cacheName;
  late final CacheClient cacheClient;
  late final TopicClient topicClient;

  TestSetup(this.cacheName, this.cacheClient, this.topicClient);
}

Future<TestSetup> setUpIntegrationTests() async {
  final cacheClient = CacheClient(
      CredentialProvider.fromEnvironmentVariable(apiKeyEnvVarName),
      CacheClientConfigurations.latest(),
      Duration(seconds: 30));
  final topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable(apiKeyEnvVarName),
      TopicClientConfigurations.latest());
  final integrationTestCacheName =
      generateStringWithUuid("dart-sdk-cache-tests");
  await cacheClient.createCache(integrationTestCacheName);

  return TestSetup(integrationTestCacheName, cacheClient, topicClient);
}

Future<void> cleanUpIntegrationTests(TestSetup testSetup) async {
  await testSetup.cacheClient.deleteCache(testSetup.cacheName);
  await testSetup.cacheClient.close();
  testSetup.topicClient.close();
}

String generateStringWithUuid(String prefix) {
  return "$prefix-${uuidGenerator.v4()}-dart-int-test";
}

Future<void> verifyListFetch(String cacheName, String listName,
    List<String> expected, CacheClient cacheClient) async {
  final listResp = await cacheClient.listFetch(cacheName, listName);
  switch (listResp) {
    case ListFetchHit():
      expect(listResp.values.toList(), expected);
      break;
    case ListFetchMiss():
      fail('Expected Hit but got Miss');
    case ListFetchError():
      fail(
          'Expected Hit but got Error: ${listResp.errorCode} ${listResp.message}');
  }
}

Future<void> verifyListLength(String cacheName, String listName, int expected,
    CacheClient cacheClient) async {
  final listResp = await cacheClient.listLength(cacheName, listName);
  switch (listResp) {
    case ListLengthHit():
      expect(listResp.length, expected);
      break;
    case ListLengthMiss():
      fail('Expected Hit but got Miss');
    case ListLengthError():
      fail(
          'Expected Hit but got Error: ${listResp.errorCode} ${listResp.message}');
  }
}
