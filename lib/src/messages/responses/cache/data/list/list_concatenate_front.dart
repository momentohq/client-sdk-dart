import '../../../responses_base.dart';

/// Sealed class for a cache list concatenate front response.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case ListConcatenateFrontSuccess():
///   // handle successful concatenation
///  case ListConcatenateBackError():
///   // handle error
/// }
/// ```
sealed class ListConcatenateFrontResponse {}

/// Indicates that the request was successful and the updated length can be accessed by the field `length`.
class ListConcatenateFrontSuccess extends ResponseBase
    implements ListConcatenateFrontResponse {
  ListConcatenateFrontSuccess(this._length);

  final int _length;

  int get length => _length;

  @override
  String toString() {
    return "${super.toString()}: Length $length";
  }
}

/// Indicates that an error occurred during the list concatenate front request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListConcatenateFrontError extends ErrorResponseBase
    implements ListConcatenateFrontResponse {
  ListConcatenateFrontError(super.exception);
}
