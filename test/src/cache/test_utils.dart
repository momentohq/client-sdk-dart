import 'package:momento/momento.dart';
import 'package:uuid/uuid.dart';
import 'package:test/test.dart';

final apiKeyEnvVarName = "TEST_API_KEY";
final uuidGenerator = Uuid();

class TestSetup {
  late final String cacheName;
  late final CacheClient cacheClient;

  TestSetup(this.cacheName, this.cacheClient);
}

Future<TestSetup> setUpIntegrationTests() async {
  final cacheClient = CacheClient(
      CredentialProvider.fromEnvironmentVariable(apiKeyEnvVarName),
      CacheClientConfigurations.latest(),
      Duration(seconds: 30));
  final integrationTestCacheName =
      generateStringWithUuid("dart-sdk-cache-tests");
  await cacheClient.createCache(integrationTestCacheName);

  return TestSetup(integrationTestCacheName, cacheClient);
}

Future<void> cleanUpIntegrationTests(TestSetup testSetup) async {
  await testSetup.cacheClient.deleteCache(testSetup.cacheName);
}

String generateStringWithUuid(String prefix) {
  return "$prefix-${uuidGenerator.v4()}-dart-int-test";
}

Future<void> verifyListFetch(String cacheName, String listName,
    List<Value> expected, CacheClient cacheClient) async {
  final listResp = await cacheClient.listFetch(cacheName, listName);
  switch (listResp) {
    case ListFetchHit():
      expect(listResp.values.toList(), expected.map((e) => e.toUtf8()).toList());
      break;
    case ListFetchMiss():
      fail('Expected Hit but got Miss');
    case ListFetchError():
      fail('Expected Hit but got Error');
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
      fail('Expected Hit but got Error');
  }
}
