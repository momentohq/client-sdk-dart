import 'dart:async';
import 'dart:io';

import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  var topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      Mobile.latest());

  // start publishing messages in 2 seconds
  Timer(const Duration(seconds: 2), () async {
    // publish 10 messages spaced 1 second apart
    for (final _ in Iterable.generate(10)) {
      var result =
          await topicClient.publish("cache", "topic", StringValue("hi"));
      switch (result) {
        case TopicPublishSuccess():
          print("Successful publish!");
        case TopicPublishError():
          print("Publish error: ${result.errorCode} ${result.message}");
      }
      sleep(Duration(seconds: 1));
    }
  });

  var sub = topicClient.subscribe("cache", "topic");
  switch (sub) {
    case TopicSubscription():
      print("Successful subscription!");

      // cancel subscription 10 seconds from now
      Timer(const Duration(seconds: 10), () {
        print("Cancelling subscription!");
        sub.unsubscribe();
      });

      try {
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
      } catch (e) {
        print("Runtime type: ${e.runtimeType}");
        print("Error with await for loop: $e");
      }
    case TopicSubscribeError():
      print("Subscribe error: ${sub.errorCode} ${sub.message}");
  }

  topicClient.close();
  print("End of Momento topics example");
  exit(0);
}
