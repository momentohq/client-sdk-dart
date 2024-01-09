import 'package:momento/src/errors/errors.dart';

import '../../../momento.dart';

void _validateString(String str, String errorMessage) {
  if (str.trim().isEmpty) {
    throw InvalidArgumentException(errorMessage, null, null);
  }
}

void validateCacheName(String cacheName) =>
    _validateString(cacheName, "Invalid cache name");

void validateTopicName(String topicName) =>
    _validateString(topicName, "Invalid topic name");

void validateListName(String listName) =>
    _validateString(listName, "Invalid list name");

void validateList(List<Value> values) {
  if (values.isEmpty) {
    throw InvalidArgumentException("List cannot be empty", null, null);
  }
}
