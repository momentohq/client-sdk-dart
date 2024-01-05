import 'dart:convert';

import '../../../responses_base.dart';

sealed class ListPushBackResponse {}

class ListPushBackMiss implements ListPushBackResponse {}

class ListPushBackError extends ErrorResponseBase implements ListPushBackResponse {
  ListPushBackError(super.exception);
}

class ListPushBackHit implements ListPushBackResponse {
  ListPushBackHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;
}