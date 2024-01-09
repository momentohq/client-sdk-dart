import 'dart:io';

import 'package:momento/momento.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  late final TestSetup testSetup;
  late final String integrationTestCacheName;
  late final TopicClient topicClient;

  setUpAll(() async {
    testSetup = await setUpIntegrationTests();
    integrationTestCacheName = testSetup.cacheName;
    topicClient = testSetup.topicClient;
  });

  tearDownAll(() async {
    await cleanUpIntegrationTests(testSetup);
  });

  group('topics', () {
    test('arguments are validated', () async {
      final publishResp = await topicClient.publish(
          "   ", "topic-name", StringValue("message"));
      switch (publishResp) {
        case TopicPublishSuccess():
          fail('Expected Error but got Success');
        case TopicPublishError():
          expect(publishResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "publish should not accept empty cache name");
      }

      final publishResp2 = await topicClient.publish(
          integrationTestCacheName, "   ", StringValue("message"));
      switch (publishResp2) {
        case TopicPublishSuccess():
          fail('Expected Error but got Success');
        case TopicPublishError():
          expect(publishResp2.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "publish should not accept empty topic name");
      }

      final subscribeResp = await topicClient.subscribe("   ", "topic-name");
      switch (subscribeResp) {
        case TopicSubscription():
          fail('Expected Error but got Success');
        case TopicSubscribeError():
          expect(subscribeResp.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "subscribe should not accept empty cache name");
      }

      final subscribeResp2 =
          await topicClient.subscribe(integrationTestCacheName, "   ");
      switch (subscribeResp2) {
        case TopicSubscription():
          fail('Expected Error but got Success');
        case TopicSubscribeError():
          expect(
              subscribeResp2.errorCode, MomentoErrorCode.invalidArgumentError,
              reason: "subscribe should not accept empty cache name");
      }
    });

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

      sleep(Duration(seconds: 1));
      final publishResp = await topicClient.publish(
          integrationTestCacheName, topicName, StringValue(topicValue));
      switch (publishResp) {
        case TopicPublishSuccess():
          expect(publishResp.runtimeType, TopicPublishSuccess,
              reason: "publish should succeed");
        case TopicPublishError():
          fail(
              'Expected Success but got Error: ${publishResp.errorCode} ${publishResp.message}');
      }
      sleep(Duration(seconds: 1));

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
    });
  });
}
