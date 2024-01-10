import 'dart:io';

import 'package:momento/momento.dart';
import 'package:momento/src/errors/errors.dart';
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
    await cleanUpIntegrationTests(testSetup);
  });

  group('control plane operations', () {
    test('arguments are validated', () async {
      final createResp = await cacheClient.createCache("   ");
      switch (createResp) {
        case CreateCacheSuccess():
          fail('Expected Error but got Success');
        case AlreadyExists():
          fail('Expected Error but got AlreadyExists');
        case CreateCacheError():
          expect(createResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "create cache should not accept empty cache name");
      }

      final deleteResp = await cacheClient.deleteCache("   ");
      switch (deleteResp) {
        case DeleteCacheSuccess():
          fail('Expected Error but got Success');
        case DeleteCacheError():
          expect(deleteResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "delete cache should not accept empty cache name");
      }
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
          final cacheNames = listResp.cacheNames;
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
          final cacheNames = listResp2.cacheNames;
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

  group('scalar get, set, delete', () {
    test('arguments are validated', () async {
      final key = "key";
      final value = "value";
      final invalid = 123;

      final getResp = await cacheClient.get("   ", key);
      switch (getResp) {
        case GetHit():
          fail('Expected Error but got Hit');
        case GetMiss():
          fail('Expected Error but got Miss');
        case GetError():
          expect(getResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "get should not accept empty cache name");
      }

      final getResp2 = await cacheClient.get(integrationTestCacheName, invalid);
      switch (getResp2) {
        case GetHit():
          fail('Expected Error but got Hit');
        case GetMiss():
          fail('Expected Error but got Miss');
        case GetError():
          expect(getResp2.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "get should not accept key that's not String or List<int>");
      }

      final setResp = await cacheClient.set("   ", key, value);
      switch (setResp) {
        case SetSuccess():
          fail('Expected Error but got Success');
        case SetError():
          expect(setResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "set should not accept empty cache name");
      }

      final setResp2 = await cacheClient.set(integrationTestCacheName, invalid, value);
      switch (setResp2) {
        case SetSuccess():
          fail('Expected Error but got Success');
        case SetError():
          expect(setResp2.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "set should not accept key that's not String or List<int>");
      }

      final setResp3 = await cacheClient.set(integrationTestCacheName, key, invalid);
      switch (setResp3) {
        case SetSuccess():
          fail('Expected Error but got Success');
        case SetError():
          expect(setResp3.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "set should not accept value that's not String or List<int>");
      }

      final deleteResp = await cacheClient.delete("   ", key);
      switch (deleteResp) {
        case DeleteSuccess():
          fail('Expected Error but got Success');
        case DeleteError():
          expect(deleteResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "delete cache should not accept empty cache name");
      }

      final deleteResp2 = await cacheClient.delete(integrationTestCacheName, invalid);
      switch (deleteResp2) {
        case DeleteSuccess():
          fail('Expected Error but got Success');
        case DeleteError():
          expect(deleteResp2.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "delete cache should not accept key that's not String or List<int>");
      }
    });

    test('cache items can be set, get, and deleted', () async {
      final key = StringValue("key");
      final value = StringValue("value");

      // expect first get to miss
      final getResp1 = await cacheClient.get(integrationTestCacheName, key);
      switch (getResp1) {
        case GetHit():
          fail('Expected Miss but got Hit');
        case GetMiss():
          expect(getResp1.runtimeType, GetMiss,
              reason: "get should miss on empty cache");
        case GetError():
          fail(
              'Expected Miss but got Error: ${getResp1.errorCode} ${getResp1.message}');
      }

      // expect set with ttl to succeed
      final setResp = await cacheClient.set(
          integrationTestCacheName, key, value,
          ttl: Duration(seconds: 60));
      switch (setResp) {
        case SetSuccess():
          expect(setResp.runtimeType, SetSuccess, reason: "set should succeed");
        case SetError():
          fail(
              'Expected Success but got Error: ${setResp.errorCode} ${setResp.message}');
      }

      // expect second get to hit
      final getResp2 = await cacheClient.get(integrationTestCacheName, key);
      switch (getResp2) {
        case GetHit():
          expect(getResp2.runtimeType, GetHit,
              reason: "get should hit on value set in cache");

        case GetMiss():
          fail('Expected Hit but got Miss');
        case GetError():
          fail(
              'Expected Hit but got Error: ${getResp2.errorCode} ${getResp2.message}');
      }

      // expect delete to succeed
      final deleteResp =
          await cacheClient.delete(integrationTestCacheName, key);
      switch (deleteResp) {
        case DeleteSuccess():
          expect(deleteResp.runtimeType, DeleteSuccess,
              reason: "delete should succeed");
        case DeleteError():
          fail(
              'Expected Success but got Error: ${deleteResp.errorCode} ${deleteResp.message}');
      }

      // expect third get to miss
      final getResp3 = await cacheClient.get(integrationTestCacheName, key);
      switch (getResp3) {
        case GetHit():
          fail('Expected Miss but got Hit');
        case GetMiss():
          expect(getResp3.runtimeType, GetMiss,
              reason: "get should miss on empty cache");
        case GetError():
          fail(
              'Expected Miss but got Error: ${getResp3.errorCode} ${getResp3.message}');
      }
    });
  });
}
