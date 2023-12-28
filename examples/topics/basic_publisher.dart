import 'dart:io';
import 'package:client_sdk_dart/client_sdk_dart.dart';

void main() async {
  var topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
      Mobile.latest());

  // publish 10 messages spaced 1 second apart
  for (final i in Iterable.generate(10)) {
    var result = await topicClient.publish("cache", "topic", StringValue("hi $i"));
    switch (result) {
      case TopicPublishSuccess():
        print("Successful publish!");
      case TopicPublishError():
        print("Publish error: ${result.errorCode} ${result.message}");
    }
    sleep(Duration(seconds: 1));
  }

  topicClient.close();
  print("Closed Momento Topics publisher");
  exit(0);
}
