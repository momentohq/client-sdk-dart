import '../../../responses_base.dart';

/// Sealed class for a cache list push back response.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case ListPushBackSuccess():
///   // handle successful push back
///  case ListPushBackError():
///   // handle error
/// }
/// ```
sealed class ListPushBackResponse {}

/// Indicates that an error occurred during the list push back request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListPushBackError extends ErrorResponseBase
    implements ListPushBackResponse {
  ListPushBackError(super.exception);
}

/// Indicates that the request was successful and the updated length can be accessed by the field `length`.
class ListPushBackSuccess extends NonErrorResponseBase
    implements ListPushBackResponse {
  ListPushBackSuccess(this._length);

  final int _length;

  int get length => _length;

  @override
  String toString() {
    return "$runtimeType: Length $length";
  }
}
