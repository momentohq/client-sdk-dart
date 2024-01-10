import 'package:momento/src/messages/responses/responses_base.dart';

/// Sealed class for a set cache item request.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case SetSuccess():
///   // handle success
///  case SetError():
///   // handle error
/// }
/// ```
sealed class SetResponse {}

/// Indicates a successful set cache item request.
class SetSuccess extends ResponseBase implements SetResponse {}

/// Indicates that an error occurred during the set cache item request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class SetError extends ErrorResponseBase implements SetResponse {
  SetError(super.exception);
}
