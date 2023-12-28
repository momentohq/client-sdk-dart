import 'dart:io';

import 'package:client_sdk_dart/client_sdk_dart.dart';
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
        case CreateCacheAlreadyExists():
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

//   group('scalar operations', () {
//     test('arguments are validated', () async {
//       final getInvalidCacheName =
//           await cacheClient.get("    ", StringValue("abc"));
//       switch (getInvalidCacheName) {
//         case GetError():
//           if (getInvalidCacheName.errorCode ==
//               MomentoErrorCode.invalidArgumentError) {
//             expect(getInvalidCacheName.errorCode,
//                 MomentoErrorCode.invalidArgumentError);
//           } else {
//             fail(
//                 'expected invalidArgumentError but got: ${getInvalidCacheName.errorCode} ${getInvalidCacheName.message}');
//           }
//         default:
//           fail('expected error but got: $getInvalidCacheName');
//       }

//       final setInvalidCacheName =
//           await cacheClient.set("    ", StringValue("abc"), StringValue("xyz"));
//       switch (setInvalidCacheName) {
//         case SetError():
//           expect(setInvalidCacheName.errorCode,
//               MomentoErrorCode.invalidArgumentError);
//         default:
//           fail('expected error but got: $setInvalidCacheName');
//       }

//       final deleteInvalidCacheName =
//           await cacheClient.delete("    ", StringValue("abc"));
//       switch (deleteInvalidCacheName) {
//         case DeleteError():
//           expect(deleteInvalidCacheName.errorCode,
//               MomentoErrorCode.invalidArgumentError);
//         default:
//           fail('expected Error but got: $deleteInvalidCacheName');
//       }
//     });

//     test('can get and set and delete a cache item', () async {
//       final getNonexistentItem =
//           await cacheClient.get(integrationTestCacheName, StringValue("abc"));
//       switch (getNonexistentItem) {
//         case GetMiss():
//           expect(getNonexistentItem.runtimeType, GetMiss,
//               reason: "get should miss for nonexistent item");
//         case GetHit():
//           fail('expected Miss but got Hit: ${getNonexistentItem.value}');
//         case GetError():
//           fail(
//               'expected Miss but got Error: ${getNonexistentItem.errorCode} ${getNonexistentItem.message}');
//       }

//       // set the item
//       // get the item
//       // delete the item
//       // get the item should fail
//     });
//   });
}
