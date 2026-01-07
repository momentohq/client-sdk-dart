import 'dart:io';
import 'dart:async';

import 'package:momento/momento.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  late final TestSetup testSetup;
  late final String integrationTestCacheName;
  late final CacheClient cacheClient;
  late final TopicClient topicClient;

  setUpAll(() async {
    testSetup = await setUpIntegrationTests(apiKeyV2: true);
    integrationTestCacheName = testSetup.cacheName;
    cacheClient = testSetup.cacheClient;
    topicClient = testSetup.topicClient;
  });

  tearDownAll(() async {
    await cleanUpIntegrationTests(testSetup);
  });

  group('control plane operations', () {
    test('caches can be created, listed, and deleted', () async {
      final newTestCacheName = generateStringWithUuid("dart-create-cache");
      final createResp = await cacheClient.createCache(newTestCacheName);
      switch (createResp) {
        case CreateCacheSuccess():
          expect(createResp.runtimeType, CreateCacheSuccess,
              reason: "create cache should succeed");
        case CreateCacheAlreadyExists():
          fail('Expected Success but got AlreadyExists');
        case CreateCacheError():
          fail(
              'Expected Success but got Error while creating cache $newTestCacheName: ${createResp.errorCode} ${createResp.message}');
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
              'Expected Success but got Error while listing caches: ${listResp.errorCode} ${listResp.message}');
      }

      sleep(Duration(seconds: 1));
      final deleteResp = await cacheClient.deleteCache(newTestCacheName);
      switch (deleteResp) {
        case DeleteCacheSuccess():
          expect(deleteResp.runtimeType, DeleteCacheSuccess,
              reason: "delete cache should succeed");
        case DeleteCacheError():
          fail(
              'Expected Success but got Error when trying to delete cache $newTestCacheName: ${deleteResp.errorCode} ${deleteResp.message}');
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
              'Expected Success but got Error listing caches after deletion: ${listResp2.errorCode} ${listResp2.message}');
      }
    });
  });

  group('scalar get, set, delete', () {
    test('cache items can be set, get, and deleted', () async {
      final key = "key";
      final value = "value";

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

  group('lists', () {
    test('concatenate and fetch', () async {
      final listName = generateStringWithUuid("list-name");
      final listValue1 = "string value 1";
      final listValue2 = "string value 2";

      final concateFront = await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue1, listValue2]);
      switch (concateFront) {
        case ListConcatenateFrontSuccess():
          expect(concateFront.runtimeType, ListConcatenateFrontSuccess,
              reason: "list concatenate front should succeed");
        case ListConcatenateFrontError():
          fail(
              'Expected Success but got Error: ${concateFront.errorCode} ${concateFront.message}');
      }

      final fetchResp1 =
          await cacheClient.listFetch(integrationTestCacheName, listName);
      switch (fetchResp1) {
        case ListFetchHit():
          expect(fetchResp1.values, [listValue1, listValue2],
              reason: "list should contain the value that was pushed");
        case ListFetchMiss():
          fail('Expected Hit but got Miss');
        case ListFetchError():
          fail(
              'Expected Hit but got Error: ${fetchResp1.errorCode} ${fetchResp1.message}');
      }

      final concateBack = await cacheClient.listConcatenateBack(
          integrationTestCacheName, listName, [listValue1, listValue2]);
      switch (concateBack) {
        case ListConcatenateBackSuccess():
          expect(concateBack.runtimeType, ListConcatenateBackSuccess,
              reason: "list concatenate back should succeed");
        case ListConcatenateBackError():
          fail(
              'Expected Success but got Error: ${concateBack.errorCode} ${concateBack.message}');
      }

      final fetchResp2 = await cacheClient
          .listFetch(integrationTestCacheName, listName, startIndex: 1);
      switch (fetchResp2) {
        case ListFetchHit():
          expect(fetchResp2.values, [listValue2, listValue1, listValue2],
              reason:
                  "list should contain the value that was pushed starting at index 1");
        case ListFetchMiss():
          fail('Expected Hit but got Miss');
        case ListFetchError():
          fail(
              'Expected Hit but got Error: ${fetchResp2.errorCode} ${fetchResp2.message}');
      }
    });

    test('listLength', () async {
      final listName = generateStringWithUuid("list-length");
      final listValue1 = "string value 1";
      final listValue2 = "string value 2";
      await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue1, listValue2]);
      await verifyListLength(
          integrationTestCacheName, listName, 2, cacheClient);
    });

    test('listPopBack', () async {
      final listName = generateStringWithUuid("list-pop-back");
      final listValue1 = ("string value 1");
      final listValue2 = ("string value 2");
      await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue1, listValue2]);
      final popResp1 =
          await cacheClient.listPopBack(integrationTestCacheName, listName);
      switch (popResp1) {
        case ListPopBackHit():
          expect(popResp1.value, listValue2,
              reason: "popped value should be the last value in the list");
        case ListPopBackMiss():
          fail('Expected Hit but got Miss');
        case ListPopBackError():
          fail(
              'Expected Hit but got Error: ${popResp1.errorCode} ${popResp1.message}');
      }
      await verifyListLength(
          integrationTestCacheName, listName, 1, cacheClient);
    });

    test('listPopFront', () async {
      final listName = generateStringWithUuid("list-pop-front");
      final listValue1 = "string value 1";
      final listValue2 = "string value 2";
      await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue1, listValue2]);
      final popResp1 =
          await cacheClient.listPopFront(integrationTestCacheName, listName);
      switch (popResp1) {
        case ListPopFrontHit():
          expect(popResp1.value, listValue1,
              reason: "popped value should be the first one in the list");
        case ListPopFrontMiss():
          fail('Expected Hit but got Miss');
        case ListPopFrontError():
          fail(
              'Expected Hit but got Error: ${popResp1.errorCode} ${popResp1.message}');
      }
      await verifyListLength(
          integrationTestCacheName, listName, 1, cacheClient);
    });

    test('listPushFront', () async {
      final listName = generateStringWithUuid("list-push-front");
      final listValue1 = "string value 1";
      final listValue2 = "string value 2";
      await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue2]);
      final listPushFrontResp = await cacheClient.listPushFront(
          integrationTestCacheName, listName, listValue1);
      switch (listPushFrontResp) {
        case ListPushFrontSuccess():
          expect(listPushFrontResp.length, 2,
              reason: "list should have length 2 after push");
          break;
        case ListPushFrontError():
          fail(
              'Expected Success but got Error: ${listPushFrontResp.errorCode} ${listPushFrontResp.message}');
      }
      await verifyListFetch(integrationTestCacheName, listName,
          [listValue1, listValue2], cacheClient);
    });

    test('listPushBack', () async {
      final listName = generateStringWithUuid("list-push-back");
      final listValue1 = "string value 1";
      final listValue2 = "string value 2";
      await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue1]);
      final listPushBackResp = await cacheClient.listPushBack(
          integrationTestCacheName, listName, listValue2);
      switch (listPushBackResp) {
        case ListPushBackSuccess():
          expect(listPushBackResp.length, 2,
              reason: "list should have length 2 after push");
          break;
        case ListPushBackError():
          fail(
              'Expected Success but got Error: ${listPushBackResp.errorCode} ${listPushBackResp.message}');
      }
      await verifyListFetch(integrationTestCacheName, listName,
          [listValue1, listValue2], cacheClient);
    });

    test('listRemoveValue', () async {
      final listName = generateStringWithUuid("list-remove-value");
      final listValue1 = "string value 1";
      final listValue2 = "string value 2";
      await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue1, listValue2]);
      final removeResp1 = await cacheClient.listRemoveValue(
          integrationTestCacheName, listName, listValue1);
      switch (removeResp1) {
        case ListRemoveValueSuccess():
          // this is expected
          break;
        case ListRemoveValueError():
          fail(
              'Expected Success but got Error: ${removeResp1.errorCode} ${removeResp1.message}');
      }
      await verifyListFetch(
          integrationTestCacheName, listName, [listValue2], cacheClient);
    });

    test('listRetain', () async {
      final listName = generateStringWithUuid("list-retain");
      final listValue1 = "string value 1";
      final listValue2 = "string value 2";
      await cacheClient.listConcatenateFront(
          integrationTestCacheName, listName, [listValue1, listValue2]);
      final retainResp1 = await cacheClient
          .listRetain(integrationTestCacheName, listName, startIndex: 1);
      switch (retainResp1) {
        case ListRetainSuccess():
          // this is expected
          break;
        case ListRetainError():
          fail(
              'Expected Success but got Error: ${retainResp1.errorCode} ${retainResp1.message}');
      }
      await verifyListFetch(
          integrationTestCacheName, listName, [listValue2], cacheClient);
    });
  });

  group('topics', () {
    test("can publish and subscribe to a topic", () async {
      final topicName = generateStringWithUuid("dart-pubsub");
      final topicValue = "Momento pubsub";

      final subscribeResp =
          await topicClient.subscribe(integrationTestCacheName, topicName);
      switch (subscribeResp) {
        case TopicSubscription():
          expect(subscribeResp.runtimeType, TopicSubscription,
              reason: "subscribe should succeed");
        case TopicSubscribeError():
          fail(
              'Expected Success but got Error: ${subscribeResp.errorCode} ${subscribeResp.message}');
      }

      // unsubscribe 10 seconds from now
      Timer(const Duration(seconds: 10), () {
        subscribeResp.unsubscribe();
      });

      // publish a message 2 seconds from now
      Timer(const Duration(seconds: 2), () async {
        final publishResp = await topicClient.publish(
            integrationTestCacheName, topicName, topicValue);
        switch (publishResp) {
          case TopicPublishSuccess():
            expect(publishResp.runtimeType, TopicPublishSuccess,
                reason: "publish should succeed");
          case TopicPublishError():
            fail(
                'Expected Success but got Error: ${publishResp.errorCode} ${publishResp.message}');
        }
      });

      try {
        await for (final msg in subscribeResp.stream) {
          switch (msg) {
            case TopicSubscriptionItemBinary():
              fail("Expected String value, got binary value: ${msg.value}");
            case TopicSubscriptionItemText():
              expect(msg.value, topicValue,
                  reason:
                      "subscription should receive the published string value");
          }
          break;
        }
      } catch (e) {
        fail("Error with await for loop: $e");
      }

      subscribeResp.unsubscribe();
    });
  });
}
