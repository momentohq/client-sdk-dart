import 'package:momento/src/messages/responses/responses_base.dart';

/// Sealed class for a delete cache item request.
///
/// Pattern matching can be used to operate on the appropriate subtype.
/// ```dart
/// switch (response) {
///  case DeleteSuccess():
///   // handle success
///  case DeleteError():
///   // handle error
/// }
/// ```
sealed class DeleteResponse {}

/// Indicates a successful delete cache item request.
class DeleteSuccess implements DeleteResponse {}

/// Indicates that an error occurred during the delete cache item request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class DeleteError extends ErrorResponseBase implements DeleteResponse {
  DeleteError(super.exception);
}
