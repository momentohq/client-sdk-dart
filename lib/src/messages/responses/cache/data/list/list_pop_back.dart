import 'dart:convert';

import '../../../responses_base.dart';

/// Sealed class for a cache list pop back response.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case ListPopBackHit():
///   // handle cache hit
///  case ListPopBackMiss():
///   // handle cache miss
///  case ListPopBackError():
///   // handle error
/// }
/// ```
sealed class ListPopBackResponse {}

/// Indicates that the requested list was not available in the cache.
class ListPopBackMiss extends NonErrorResponseBase
    implements ListPopBackResponse {}

/// Indicates that an error occurred during the list pop back request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListPopBackError extends ErrorResponseBase
    implements ListPopBackResponse {
  ListPopBackError(super.exception);
}

/// Indicates that the request was successful and the value can be accessed by the fields `value` or `binaryValue`.
class ListPopBackHit extends NonErrorResponseBase
    implements ListPopBackResponse {
  ListPopBackHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;

  @override
  String toString() {
    return "$runtimeType: $value";
  }
}
