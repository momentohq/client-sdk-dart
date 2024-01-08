import 'dart:async';
import 'dart:io';

import 'package:momento/momento.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  var topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      MobileTopicConfiguration.latest());

  // start publishing messages in 2 seconds
  Timer(const Duration(seconds: 2), () async {
    // publish 10 messages spaced 1 second apart
    for (final i in Iterable.generate(10)) {
      var result =
          await topicClient.publish("cache", "topic", StringValue("hi $i"));
      switch (result) {
        case TopicPublishSuccess():
          print("Successful publish!");
        case TopicPublishError():
          print("Publish error: ${result.errorCode} ${result.message}");
      }
      sleep(Duration(seconds: 1));
    }
  });

  var subscription = topicClient.subscribe("cache", "topic");
  var messageStream = switch (subscription) {
    TopicSubscription() => subscription.stream,
    TopicSubscribeError() => throw Exception(
        "Subscribe error: ${subscription.errorCode} ${subscription.message}"),
  };

  // cancel subscription 15 seconds from now
  Timer(const Duration(seconds: 15), () {
    print("Cancelling subscription!");
    subscription.unsubscribe();
  });

  try {
    await for (final msg in messageStream) {
      switch (msg) {
        case TopicSubscriptionItemBinary():
          print("Binary value: ${msg.value}");
        case TopicSubscriptionItemText():
          print("String value: ${msg.value}");
      }
    }
  } catch (e) {
    print("Runtime type: ${e.runtimeType}");
    print("Error with await for loop: $e");
  }

  // unsubscribing should not affect the topic client's ability
  // to subscribe to another topic afterwards
  var sub2 = topicClient.subscribe("cache", "topic");
  switch (sub2) {
    case TopicSubscription():
      print("Successful 2nd subscription!");
    case TopicSubscribeError():
      print("Subscribe error: ${sub2.errorCode} ${sub2.message}");
  }

  topicClient.close();
  print("End of Momento topics example");
}
