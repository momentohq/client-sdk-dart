import 'dart:async';
import 'dart:io';
import 'package:client_sdk_dart/client_sdk_dart.dart';

void main() async {
  var topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      Mobile.latest());

  var sub = topicClient.subscribe("cache", "topic");
  switch (sub) {
    case TopicSubscription():
      print("Successful subscription!");

      // cancel subscription 15 seconds from now
      Timer(const Duration(seconds: 15), () {
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
  print("Closed Momento Topics subscriber");
  exit(0);
}
