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

  group('scalar get, set, delete', () {
    test('arguments are validated', () async {
      final key = StringValue("key");
      final value = StringValue("value");

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

      final setResp = await cacheClient.set("   ", key, value);
      switch (setResp) {
        case SetSuccess():
          fail('Expected Error but got Success');
        case SetError():
          expect(setResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "set should not accept empty cache name");
      }

      final deleteResp = await cacheClient.delete("   ", key);
      switch (deleteResp) {
        case DeleteSuccess():
          fail('Expected Error but got Success');
        case DeleteError():
          expect(deleteResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "delete cache should not accept empty cache name");
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

  group(
      'list collection type',
      () => {
            group(
                'arguments are validated',
                () => {
                      test('listFetch', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final fetchResp1 = await cacheClient.listFetch(
                            invalidString, validString);
                        switch (fetchResp1) {
                          case ListFetchHit():
                            fail('Expected Error but got Success');
                          case ListFetchMiss():
                            fail('Expected Error but got Miss');
                          case ListFetchError():
                            expect(fetchResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listFetch should not accept empty cache name");
                        }

                        final fetchResp2 = await cacheClient.listFetch(
                            validString, invalidString);
                        switch (fetchResp2) {
                          case ListFetchHit():
                            fail('Expected Error but got Success');
                          case ListFetchMiss():
                            fail('Expected Error but got Miss');
                          case ListFetchError():
                            expect(fetchResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listFetch should not accept empty cache name");
                        }
                      }),
                      test('listConcatenateBack', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final concatResp1 = await cacheClient
                            .listConcatenateBack(
                                invalidString, validString, []);
                        switch (concatResp1) {
                          case ListConcatenateBackSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateBackError():
                            expect(concatResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateBack should not accept empty cache name");
                        }

                        final concatResp2 = await cacheClient
                            .listConcatenateBack(
                                validString, invalidString, []);
                        switch (concatResp2) {
                          case ListConcatenateBackSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateBackError():
                            expect(concatResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateBack should not accept empty cache name");
                        }
                      }),
                      test('listConcatenateFront', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final concatResp1 = await cacheClient
                            .listConcatenateFront(
                                invalidString, validString, []);
                        switch (concatResp1) {
                          case ListConcatenateFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateFrontError():
                            expect(concatResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateFront should not accept empty cache name");
                        }

                        final concatResp2 = await cacheClient
                            .listConcatenateFront(
                                validString, invalidString, []);
                        switch (concatResp2) {
                          case ListConcatenateFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateFrontError():
                            expect(concatResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateFront should not accept empty cache name");
                        }
                      }),
                      test('listLength', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final lengthResp1 = await cacheClient.listLength(
                            invalidString, validString);
                        switch (lengthResp1) {
                          case ListLengthHit():
                            fail('Expected Error but got Hit');
                          case ListLengthMiss():
                            fail('Expected Error but got Miss');
                          case ListLengthError():
                            expect(lengthResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listLength should not accept empty cache name");
                        }

                        final lengthResp2 = await cacheClient.listLength(
                            validString, invalidString);
                        switch (lengthResp2) {
                          case ListLengthHit():
                            fail('Expected Error but got Hit');
                          case ListLengthMiss():
                            fail('Expected Error but got Miss');
                          case ListLengthError():
                            expect(lengthResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listLength should not accept empty cache name");
                        }
                      }),
                      test('listPopBack', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final popResp1 = await cacheClient.listPopBack(
                            invalidString, validString);
                        switch (popResp1) {
                          case ListPopBackHit():
                            fail('Expected Error but got Hit');
                          case ListPopBackMiss():
                            fail('Expected Error but got Miss');
                          case ListPopBackError():
                            expect(popResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPopBack should not accept empty cache name");
                        }

                        final popResp2 = await cacheClient.listPopBack(
                            validString, invalidString);
                        switch (popResp2) {
                          case ListPopBackHit():
                            fail('Expected Error but got Hit');
                          case ListPopBackMiss():
                            fail('Expected Error but got Miss');
                          case ListPopBackError():
                            expect(popResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPopBack should not accept empty cache name");
                        }
                      }),
                      test('listPopFront', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final popResp1 = await cacheClient.listPopFront(
                            invalidString, validString);
                        switch (popResp1) {
                          case ListPopFrontHit():
                            fail('Expected Error but got Hit');
                          case ListPopFrontMiss():
                            fail('Expected Error but got Miss');
                          case ListPopFrontError():
                            expect(popResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPopFront should not accept empty cache name");
                        }

                        final popResp2 = await cacheClient.listPopFront(
                            validString, invalidString);
                        switch (popResp2) {
                          case ListPopFrontHit():
                            fail('Expected Error but got Hit');
                          case ListPopFrontMiss():
                            fail('Expected Error but got Miss');
                          case ListPopFrontError():
                            expect(popResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPopFront should not accept empty cache name");
                        }
                      }),
                      test('listPushBack', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final pushResp1 = await cacheClient.listPushBack(
                            invalidString, validString, StringValue("string"));
                        switch (pushResp1) {
                          case ListPushBackHit():
                            fail('Expected Error but got Hit');
                          case ListPushBackMiss():
                            fail('Expected Error but got Miss');
                          case ListPushBackError():
                            expect(pushResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushBack should not accept empty cache name");
                        }

                        final pushResp2 = await cacheClient.listPushBack(
                            validString, invalidString, StringValue("string"));
                        switch (pushResp2) {
                          case ListPushBackHit():
                            fail('Expected Error but got Hit');
                          case ListPushBackMiss():
                            fail('Expected Error but got Miss');
                          case ListPushBackError():
                            expect(pushResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushBack should not accept empty cache name");
                        }
                      }),
                      test('listPushFront', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final pushResp1 = await cacheClient.listPushFront(
                            invalidString, validString, StringValue("string"));
                        switch (pushResp1) {
                          case ListPushFrontHit():
                            fail('Expected Error but got Hit');
                          case ListPushFrontMiss():
                            fail('Expected Error but got Miss');
                          case ListPushFrontError():
                            expect(pushResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushFront should not accept empty cache name");
                        }

                        final pushResp2 = await cacheClient.listPushFront(
                            validString, invalidString, StringValue("string"));
                        switch (pushResp2) {
                          case ListPushFrontHit():
                            fail('Expected Error but got Hit');
                          case ListPushFrontMiss():
                            fail('Expected Error but got Miss');
                          case ListPushFrontError():
                            expect(pushResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushFront should not accept empty cache name");
                        }
                      }),
                      test('listRemoveValue', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final removeResp1 = await cacheClient.listRemoveValue(
                            invalidString, validString, StringValue("string"));
                        switch (removeResp1) {
                          case ListRemoveValueSuccess():
                            fail('Expected Error but got Success');
                          case ListRemoveValueError():
                            expect(removeResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listRemoveValue should not accept empty cache name");
                        }

                        final removeResp2 = await cacheClient.listRemoveValue(
                            validString, invalidString, StringValue("string"));
                        switch (removeResp2) {
                          case ListRemoveValueSuccess():
                            fail('Expected Error but got Success');
                          case ListRemoveValueError():
                            expect(removeResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listRemoveValue should not accept empty cache name");
                        }
                      }),
                      test('listRetain', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final retainResp1 = await cacheClient.listRetain(
                            invalidString, validString);
                        switch (retainResp1) {
                          case ListRetainSuccess():
                            fail('Expected Error but got Success');
                          case ListRetainError():
                            expect(retainResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listRetain should not accept empty cache name");
                        }

                        final retainResp2 = await cacheClient.listRetain(
                            validString, invalidString);
                        switch (retainResp2) {
                          case ListRetainSuccess():
                            fail('Expected Error but got Success');
                          case ListRetainError():
                            expect(retainResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listRetain should not accept empty cache name");
                        }
                      }),
                    }),
            group('listFetch', () {
              test('it should miss when a list doesnt exist', () async {
                final nonExistentListName =
                    generateStringWithUuid("non-existent-list");
                final fetchResp1 = await cacheClient.listFetch(
                    integrationTestCacheName, nonExistentListName);
                switch (fetchResp1) {
                  case ListFetchHit():
                    fail('Expected Miss but got Success');
                  case ListFetchMiss():
                    // this is expected
                    return;
                  case ListFetchError():
                    fail('Expected Miss but got Error');
                }
              });
              test('it should add items to a list, and return the when fetched',
                  () async {
                final listName = generateStringWithUuid("list-name");
                final listValue = StringValue("string value");
                await cacheClient.listPushFront(
                    integrationTestCacheName, listName, listValue);
                final fetchResp1 = await cacheClient.listFetch(
                    integrationTestCacheName, listName);
                switch (fetchResp1) {
                  case ListFetchHit():
                    expect(fetchResp1.values.toList(), [listValue],
                        reason:
                            "list should contain the value that was pushed");
                  case ListFetchMiss():
                    fail('Expected Hit but got Miss');
                  case ListFetchError():
                    fail('Expected Hit but got Error');
                }
              });
            }),
          });
}
