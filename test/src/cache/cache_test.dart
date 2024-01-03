import 'dart:io';

import 'package:momento/momento.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  late final TestSetup testSetup;
  late final String integrationTestCacheName;
  late final CacheClient cacheClient;

  setUpAll(() async {
    testSetup = await setUpIntegrationTests();
    integrationTestCacheName = testSetup.cacheName;
    cacheClient = testSetup.cacheClient;
  });

  tearDownAll(() async {
    cleanUpIntegrationTests(testSetup);
  });

  group('control plane operations', () {
    test('arguments are validated', () {
      // TODO: after validators are added
    });

    test('caches can be created, listed, and deleted', () async {
      final newTestCacheName = generateStringWithUuid("dart-create-cache");
      final createResp = await cacheClient.createCache(newTestCacheName);
      switch (createResp) {
        case CreateCacheSuccess():
          expect(createResp.runtimeType, CreateCacheSuccess,
              reason: "create cache should succeed");
        case AlreadyExists():
          fail('Expected Success but got AlreadyExists');
        case CreateCacheError():
          fail(
              'Expected Success but got Error: ${createResp.errorCode} ${createResp.message}');
      }

      sleep(Duration(seconds: 1));
      final listResp = await cacheClient.listCaches();
      switch (listResp) {
        case ListCachesSuccess():
          final cacheNames = listResp.caches.map((cacheInfo) => cacheInfo.name);
          expect(cacheNames.contains(newTestCacheName), true,
              reason: "new cache should be in list of caches");
          expect(cacheNames.contains(integrationTestCacheName), true,
              reason: "integration test cache should be in list of caches");
        case ListCachesError():
          fail(
              'Expected Success but got Error: ${listResp.errorCode} ${listResp.message}');
      }

      sleep(Duration(seconds: 1));
      final deleteResp = await cacheClient.deleteCache(newTestCacheName);
      switch (deleteResp) {
        case DeleteCacheSuccess():
          expect(deleteResp.runtimeType, DeleteCacheSuccess,
              reason: "delete cache should succeed");
        case DeleteCacheError():
          fail(
              'Expected Success but got Error: ${deleteResp.errorCode} ${deleteResp.message}');
      }

      sleep(Duration(seconds: 1));
      final listResp2 = await cacheClient.listCaches();
      switch (listResp2) {
        case ListCachesSuccess():
          final cacheNames =
              listResp2.caches.map((cacheInfo) => cacheInfo.name);
          expect(cacheNames.contains(newTestCacheName), false,
              reason: "new cache should no longer be in list of caches");
          expect(cacheNames.contains(integrationTestCacheName), true,
              reason:
                  "integration test cache should still be in list of caches");
        case ListCachesError():
          fail(
              'Expected Success but got Error: ${listResp2.errorCode} ${listResp2.message}');
      }
    });
  });
}
