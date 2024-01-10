import '../../../responses_base.dart';

/// Sealed class for a cache list push front response.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case ListPushFrontSuccess():
///   // handle successful push front
///  case ListPushFrontError():
///   // handle error
/// }
/// ```
sealed class ListPushFrontResponse {}

/// Indicates that an error occurred during the list push front request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListPushFrontError extends ErrorResponseBase
    implements ListPushFrontResponse {
  ListPushFrontError(super.exception);
}

/// Indicates that the request was successful and the updated length can be accessed by the field `length`.
class ListPushFrontSuccess extends NonErroResponseBase
    implements ListPushFrontResponse {
  ListPushFrontSuccess(this._length, {String message = "ListPushFrontSuccess"})
      : super(message);

  final int _length;

  int get length => _length;
}
