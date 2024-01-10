import '../../../responses_base.dart';

/// Sealed class for a cache list retain response.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case ListRetainSuccess():
///   // handle successful response
///  case ListRetainError():
///   // handle error
/// }
/// ```
sealed class ListRetainResponse {}

/// Indicates that the request was successful.
class ListRetainSuccess extends NonErroResponseBase
    implements ListRetainResponse {}

/// Indicates that an error occurred during the list retain request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListRetainError extends ErrorResponseBase implements ListRetainResponse {
  ListRetainError(super.exception);
}
