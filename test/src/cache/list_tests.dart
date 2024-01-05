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
                          case ListPushBackSuccess():
                            fail('Expected Error but got Success');
                          case ListPushBackError():
                            expect(pushResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushBack should not accept empty cache name");
                        }

                        final pushResp2 = await cacheClient.listPushBack(
                            validString, invalidString, StringValue("string"));
                        switch (pushResp2) {
                          case ListPushBackSuccess():
                            fail('Expected Error but got Success');
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
                          case ListPushFrontSuccess():
                            fail('Expected Error but got Success');
                          case ListPushFrontError():
                            expect(pushResp1.errorCode,
                                MomentoErrorCode.invalidArgumentError,
                                reason:
                                    "listPushFront should not accept empty cache name");
                        }

                        final pushResp2 = await cacheClient.listPushFront(
                            validString, invalidString, StringValue("string"));
                        switch (pushResp2) {
                          case ListPushFrontSuccess():
                            fail('Expected Error but got Success');
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
                final listPushFrontResp = await cacheClient.listPushFront(
                    integrationTestCacheName, listName, listValue,
                    ttl: CollectionTtl(Duration(hours: 60), true));
                switch (listPushFrontResp) {
                  case ListPushFrontSuccess():
                    expect(listPushFrontResp.length, 1);
                    break;
                  case ListPushFrontError():
                    fail('Expected list push front Success but got Error');
                }
                final fetchResp1 = await cacheClient.listFetch(
                    integrationTestCacheName, listName);
                switch (fetchResp1) {
                  case ListFetchHit():
                    expect(fetchResp1.values, [listValue.toUtf8()],
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
