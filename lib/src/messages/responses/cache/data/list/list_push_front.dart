import 'dart:convert';

import '../../../responses_base.dart';

sealed class ListPushFrontResponse {}

class ListPushFrontMiss implements ListPushFrontResponse {}

class ListPushFrontError extends ErrorResponseBase implements ListPushFrontResponse {
  ListPushFrontError(super.exception);
}

class ListPushFrontHit implements ListPushFrontResponse {
  ListPushFrontHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;
}
