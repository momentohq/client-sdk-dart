import 'dart:convert';

import '../../../responses_base.dart';

sealed class ListPopBackResponse {}

class ListPopBackMiss implements ListPopBackResponse {}
class ListPopBackError extends ErrorResponseBase implements ListPopBackResponse {
  ListPopBackError(super.exception);
}

class ListPopBackHit implements ListPopBackResponse {
  ListPopBackHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;
}