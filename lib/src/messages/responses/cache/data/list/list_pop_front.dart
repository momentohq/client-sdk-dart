import 'dart:convert';

import 'package:momento/src/internal/utils/display.dart';

import '../../../responses_base.dart';

/// Sealed class for a cache list pop front response.
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
sealed class ListPopFrontResponse {}

/// Indicates that the requested list was not available in the cache.
class ListPopFrontMiss extends ResponseBase implements ListPopFrontResponse {}

/// Indicates that an error occurred during the list pop front request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListPopFrontError extends ErrorResponseBase
    implements ListPopFrontResponse {
  ListPopFrontError(super.exception);
}

/// Indicates that the request was successful and the value can be accessed by the fields `value` or `binaryValue`.
class ListPopFrontHit extends ResponseBase implements ListPopFrontResponse {
  ListPopFrontHit(this._value);

  final List<int> _value;

  String get value => utf8.decode(_value);
  List<int> get binaryValue => _value;

  @override
  String toString() {
    return "${super.toString()}: ${truncateString(value)}";
  }
}
