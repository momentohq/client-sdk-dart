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
                                    "listFetch should not accept empty list name");
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
                                    "listConcatenateBack should not accept empty list name");
                        }

                        final concatResp3 = await cacheClient
                            .listConcatenateBack(validString, validString, []);
                        switch (concatResp3) {
                          case ListConcatenateBackSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateBackError():
                            expect(concatResp3.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateBack should not accept empty list of values");
                        }

                        final concatResp4 = await cacheClient
                            .listConcatenateBack(validString, validString, [123]);
                        switch (concatResp4) {
                          case ListConcatenateBackSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateBackError():
                            expect(concatResp4.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateBack should not accept list with values that aren't String or List<int>");
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
                                    "listConcatenateFront should not accept empty list name");
                        }

                        final concatResp3 = await cacheClient
                            .listConcatenateFront(validString, validString, []);
                        switch (concatResp3) {
                          case ListConcatenateFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateFrontError():
                            expect(concatResp3.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateFront should not accept empty list of values");
                        }

                        final concatResp4 = await cacheClient
                            .listConcatenateFront(validString, validString, [123]);
                        switch (concatResp4) {
                          case ListConcatenateFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListConcatenateFrontError():
                            expect(concatResp4.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listConcatenateFront should not accept list with values that aren't String or List<int>");
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
                                    "listLength should not accept empty list name");
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
                                    "listPopBack should not accept empty list name");
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
                                    "listPopFront should not accept empty list name");
                        }
                      }),
                      test('listPushBack', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final pushResp1 = await cacheClient.listPushBack(
                            invalidString, validString, "string");
                        switch (pushResp1) {
                          case ListPushBackSuccess():
                            fail('Expected Error but got Success');
                          case ListPushBackError():
                            expect(pushResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushBack should not accept empty cache name");
                        }

                        final pushResp2 = await cacheClient.listPushBack(
                            validString, invalidString, "string");
                        switch (pushResp2) {
                          case ListPushBackSuccess():
                            fail('Expected Error but got Success');
                          case ListPushBackError():
                            expect(pushResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushBack should not accept empty list name");
                        }

                        final pushResp3 = await cacheClient.listPushBack(
                            validString, invalidString, 123);
                        switch (pushResp3) {
                          case ListPushBackSuccess():
                            fail('Expected Error but got Success');
                          case ListPushBackError():
                            expect(pushResp3.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushBack should not accept value that isn't String or List<int>");
                        }
                      }),
                      test('listPushFront', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final pushResp1 = await cacheClient.listPushFront(
                            invalidString, validString, ("string"));
                        switch (pushResp1) {
                          case ListPushFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListPushFrontError():
                            expect(pushResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushFront should not accept empty cache name");
                        }

                        final pushResp2 = await cacheClient.listPushFront(
                            validString, invalidString, ("string"));
                        switch (pushResp2) {
                          case ListPushFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListPushFrontError():
                            expect(pushResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushFront should not accept empty list name");
                        }

                        final pushResp3 = await cacheClient.listPushFront(
                            validString, invalidString, 123);
                        switch (pushResp3) {
                          case ListPushFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListPushFrontError():
                            expect(pushResp3.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushFront should not accept value that isn't String or List<int>");
                        }
                      }),
                      test('listRemoveValue', () async {
                        final validString = "valid";
                        final invalidString = "   ";

                        final removeResp1 = await cacheClient.listRemoveValue(
                            invalidString, validString, "string");
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
                            validString, invalidString, "string");
                        switch (removeResp2) {
                          case ListRemoveValueSuccess():
                            fail('Expected Error but got Success');
                          case ListRemoveValueError():
                            expect(removeResp2.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listRemoveValue should not accept empty list name");
                        }

                        final removeResp3 = await cacheClient.listRemoveValue(
                            validString, invalidString, 123);
                        switch (removeResp3) {
                          case ListRemoveValueSuccess():
                            fail('Expected Error but got Success');
                          case ListRemoveValueError():
                            expect(removeResp3.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listRemoveValue should not accept value that isn't String or List<int>,m9");
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
                                    "listRetain should not accept empty list name");
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
                    fail(
                        'Expected Miss but got Error: ${fetchResp1.errorCode} ${fetchResp1.message}');
                }
              });
              test('it should add items to a list, and return the when fetched',
                  () async {
                final listName = generateStringWithUuid("list-name");
                final listValue = "string value";
                await cacheClient.listPushFront(
                    integrationTestCacheName, listName, listValue);
                final fetchResp1 = await cacheClient.listFetch(
                    integrationTestCacheName, listName);
                switch (fetchResp1) {
                  case ListFetchHit():
                    expect(fetchResp1.values, [listValue],
                        reason:
                            "list should contain the value that was pushed");
                  case ListFetchMiss():
                    fail('Expected Hit but got Miss');
                  case ListFetchError():
                    fail(
                        'Expected Hit but got Error: ${fetchResp1.errorCode} ${fetchResp1.message}');
                }
              });
              test('it should fetch listed items using start and end indices',
                  () async {
                final listName = generateStringWithUuid("list-name");
                final listValue1 = "string value 1";
                final listValue2 = "string value 2";
                await cacheClient.listConcatenateFront(integrationTestCacheName,
                    listName, [listValue1, listValue2]);
                final fetchResp1 = await cacheClient.listFetch(
                    integrationTestCacheName, listName);
                switch (fetchResp1) {
                  case ListFetchHit():
                    expect(fetchResp1.values,
                        [listValue1, listValue2],
                        reason:
                            "list should contain the value that was pushed");
                  case ListFetchMiss():
                    fail('Expected Hit but got Miss');
                  case ListFetchError():
                    fail(
                        'Expected Hit but got Error: ${fetchResp1.errorCode} ${fetchResp1.message}');
                }

                final fetchResp2 = await cacheClient.listFetch(
                    integrationTestCacheName, listName,
                    startIndex: 1);
                switch (fetchResp2) {
                  case ListFetchHit():
                    expect(fetchResp2.values, [listValue2],
                        reason:
                            "list should contain the value that was pushed starting at index 1");
                  case ListFetchMiss():
                    fail('Expected Hit but got Miss');
                  case ListFetchError():
                    fail(
                        'Expected Hit but got Error: ${fetchResp2.errorCode} ${fetchResp2.message}');
                }

                final fetchResp3 = await cacheClient
                    .listFetch(integrationTestCacheName, listName, endIndex: 1);
                switch (fetchResp3) {
                  case ListFetchHit():
                    expect(fetchResp3.values, [listValue1],
                        reason:
                            "list should contain the value that was pushed up until index 1");
                  case ListFetchMiss():
                    fail('Expected Hit but got Miss');
                  case ListFetchError():
                    fail(
                        'Expected Hit but got Error: ${fetchResp3.errorCode} ${fetchResp3.message}');
                }
              });
            }),
            group(
                'listLength',
                () => {
                      test('it should return the length of a list', () async {
                        final listName = generateStringWithUuid("list-length");
                        final listValue1 = "string value 1";
                        final listValue2 = "string value 2";
                        await cacheClient.listConcatenateFront(
                            integrationTestCacheName,
                            listName,
                            [listValue1, listValue2]);
                        await verifyListLength(
                            integrationTestCacheName, listName, 2, cacheClient);
                      }),
                    }),
            group('listPopBack', () {
              test('it should pop the last item from a list', () async {
                final listName = generateStringWithUuid("list-pop-back");
                final listValue1 = ("string value 1");
                final listValue2 = ("string value 2");
                await cacheClient.listConcatenateFront(integrationTestCacheName,
                    listName, [listValue1, listValue2]);
                final popResp1 = await cacheClient.listPopBack(
                    integrationTestCacheName, listName);
                switch (popResp1) {
                  case ListPopBackHit():
                    expect(popResp1.value, listValue2,
                        reason:
                            "popped value should be the last value in the list");
                  case ListPopBackMiss():
                    fail('Expected Hit but got Miss');
                  case ListPopBackError():
                    fail(
                        'Expected Hit but got Error: ${popResp1.errorCode} ${popResp1.message}');
                }
                await verifyListLength(
                    integrationTestCacheName, listName, 1, cacheClient);
              });
            }),
            group('listPopFront', () {
              test('it should pop the first item from a list', () async {
                final listName = generateStringWithUuid("list-pop-front");
                final listValue1 = "string value 1";
                final listValue2 = "string value 2";
                await cacheClient.listConcatenateFront(integrationTestCacheName,
                    listName, [listValue1, listValue2]);
                final popResp1 = await cacheClient.listPopFront(
                    integrationTestCacheName, listName);
                switch (popResp1) {
                  case ListPopFrontHit():
                    expect(popResp1.value, listValue1,
                        reason:
                            "popped value should be the first one in the list");
                  case ListPopFrontMiss():
                    fail('Expected Hit but got Miss');
                  case ListPopFrontError():
                    fail(
                        'Expected Hit but got Error: ${popResp1.errorCode} ${popResp1.message}');
                }
                await verifyListLength(
                    integrationTestCacheName, listName, 1, cacheClient);
              });
            }),
            group('listPushFront', () {
              test('it should push items to the front of a list', () async {
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
            }),
            group('listPushBack', () {
              test('it should push items to the back of a list', () async {
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
            }),
            group('listRemoveValue', () {
              test('it should remove items from a list', () async {
                final listName = generateStringWithUuid("list-remove-value");
                final listValue1 = "string value 1";
                final listValue2 = "string value 2";
                await cacheClient.listConcatenateFront(integrationTestCacheName,
                    listName, [listValue1, listValue2]);
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
                await verifyListFetch(integrationTestCacheName, listName,
                    [listValue2], cacheClient);
              });
            }),
            group('listRetain', () {
              test('it should remove items from a list', () async {
                final listName = generateStringWithUuid("list-retain");
                final listValue1 = "string value 1";
                final listValue2 = "string value 2";
                await cacheClient.listConcatenateFront(integrationTestCacheName,
                    listName, [listValue1, listValue2]);
                final retainResp1 = await cacheClient.listRetain(
                    integrationTestCacheName, listName,
                    startIndex: 1);
                switch (retainResp1) {
                  case ListRetainSuccess():
                    // this is expected
                    break;
                  case ListRetainError():
                    fail(
                        'Expected Success but got Error: ${retainResp1.errorCode} ${retainResp1.message}');
                }
                await verifyListFetch(integrationTestCacheName, listName,
                    [listValue2], cacheClient);
              });
            }),
          });
}
