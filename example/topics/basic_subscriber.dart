import 'dart:async';
import 'package:momento/momento.dart';

void main() async {
  var topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      MobileTopicConfiguration.latest());

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
        case TopicSubscriptionItemNotSet():
          print("Value was not set");
      }
    }
  } catch (e) {
    print("Runtime type: ${e.runtimeType}");
    print("Error with await for loop: $e");
  }

  topicClient.close();
  print("Closed Momento Topics subscriber");
}
