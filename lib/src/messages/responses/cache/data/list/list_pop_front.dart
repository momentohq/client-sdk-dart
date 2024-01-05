import 'dart:convert';

import '../../../responses_base.dart';

sealed class ListPopFrontResponse {}

class ListPopFrontMiss implements ListPopFrontResponse {}
class ListPopFrontError extends ErrorResponseBase implements ListPopFrontResponse {
  ListPopFrontError(super.exception);
}

class ListPopFrontHit implements ListPopFrontResponse {
  ListPopFrontHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;
}