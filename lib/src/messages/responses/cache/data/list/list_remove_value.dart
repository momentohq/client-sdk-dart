import '../../../responses_base.dart';

/// Sealed class for a cache list remove value response.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case ListRemoveValueSuccess():
///   // handle successful response
///  case ListRemoveValueError():
///   // handle error
/// }
/// ```
sealed class ListRemoveValueResponse {}

/// Indicates that the request was successful.
class ListRemoveValueSuccess extends ResponseBase
    implements ListRemoveValueResponse {}

/// Indicates that an error occurred during the list remove value request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListRemoveValueError extends ErrorResponseBase
    implements ListRemoveValueResponse {
  ListRemoveValueError(super.exception);
}
