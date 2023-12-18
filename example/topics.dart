import 'dart:io';

import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:client_sdk_dart/src/auth/credential_provider.dart';
import 'package:client_sdk_dart/src/messages/responses/topics/topic_publish.dart';
import 'package:client_sdk_dart/src/messages/values.dart';

void main() async {
  var topicClient = TopicClient(
      CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"));
  var result = await topicClient.publish("cache", "topic", StringValue("hi"));
  switch (result) {
    case TopicPublishSuccess():
      print("Successful publish!");
    case TopicPublishError():
      print("Publish error: ${result.errorCode}");
  }

  print("End of Momento topics example");
  exit(0);
}