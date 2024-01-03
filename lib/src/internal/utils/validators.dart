import 'package:client_sdk_dart/src/errors/errors.dart';

void _validateString(String str, String errorMessage) {
  if (str.trim().isEmpty) {
    throw InvalidArgumentException(errorMessage, null, null);
  }
}

void validateCacheName(String cacheName) =>
    _validateString(cacheName, "Invalid cache name");

void validateTopicName(String topicName) =>
    _validateString(topicName, "Invalid topic name");
