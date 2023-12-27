import 'dart:convert';

import 'package:client_sdk_dart/src/messages/responses/responses_base.dart';

/// Sealed class for a get cache item request.
/// 
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case GetHit():
///   // handle cache hit
///  case GetMiss():
///   // handle cache miss
///  case GetError():
///   // handle error
/// }
/// ```
sealed class GetResponse {}

/// Indicates that the requested data was not available in the cache.
class GetMiss implements GetResponse {}

/// Indicates that an error occurred during the get cache item request.
/// 
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class GetError extends ErrorResponseBase implements GetResponse {
  GetError(super.exception);
}

/// Indicates that the requested data was successfully retrieved from the cache and can be accessed by the fields `value` or `binaryValue`.
class GetHit implements GetResponse {
  GetHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;
}
