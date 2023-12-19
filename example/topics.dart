import 'dart:io';

import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:client_sdk_dart/src/config/topic_configuration.dart';
import 'package:client_sdk_dart/src/config/topic_configurations.dart';
import 'package:client_sdk_dart/src/messages/responses/topics/topic_publish.dart';
import 'package:client_sdk_dart/src/messages/responses/topics/topic_subscribe.dart';
import 'package:client_sdk_dart/src/messages/responses/topics/topic_subscription_item.dart';
import 'package:client_sdk_dart/src/messages/values.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  var topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      Mobile.latest());

  var result = await topicClient.publish("cache", "topic", StringValue("hi"));
  switch (result) {
    case TopicPublishSuccess():
      print("Successful publish!");
    case TopicPublishError():
      print("Publish error: ${result.errorCode} ${result.message}");
  }

  var sub = await topicClient.subscribe("cache", "topic");
  switch (sub) {
    case TopicSubscription():
      print("Successful subscription!");
      await for (final msg in sub.stream) {
        switch (msg) {
          case TopicSubscriptionItemBinary():
            print("Binary value: ${msg.value}");
          case TopicSubscriptionItemText():
            print("String value: ${msg.value}");
          case TopicSubscriptionItemError():
            print("Error receiving message: ${msg.errorCode}");
        }
      }
    case TopicSubscribeError():
      print("Subscribe error: ${sub.errorCode} ${sub.message}");
  }

  print("End of Momento topics example");
  exit(0);
}
