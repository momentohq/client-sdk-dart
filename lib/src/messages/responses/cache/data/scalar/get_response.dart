import 'dart:convert';

import 'package:client_sdk_dart/src/messages/responses/responses_base.dart';

sealed class GetResponse {}

class GetMiss implements GetResponse {}

class GetError extends ErrorResponseBase implements GetResponse {
  GetError(super.exception);
}

class GetHit implements GetResponse {
  GetHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;
}
