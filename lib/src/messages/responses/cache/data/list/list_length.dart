import '../../../responses_base.dart';

/// Sealed class for a cache list length response.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case ListLengthHit():
///   // handle cache hit
///  case ListLengthMiss():
///   // handle cache miss
///  case ListLengthError():
///   // handle error
/// }
/// ```
sealed class ListLengthResponse {}

/// Indicates that the requested list was not available in the cache.
class ListLengthMiss extends ResponseBase implements ListLengthResponse {}

/// Indicates that an error occurred during the list length request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListLengthError extends ErrorResponseBase implements ListLengthResponse {
  ListLengthError(super.exception);
}

/// Indicates that the requested list length was successfully retrieved from the cache and the length can be accessed by the field `length`.
class ListLengthHit extends ResponseBase implements ListLengthResponse {
  ListLengthHit(this._length);

  final int _length;

  int get length => _length;

  @override
  String toString() {
    return "$runtimeType: Length $length";
  }
}
