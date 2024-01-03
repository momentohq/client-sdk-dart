import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:uuid/uuid.dart';

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
      MobileCacheConfiguration.latest(),
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
  return "$prefix-${uuidGenerator.v4()}";
}
