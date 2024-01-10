import 'package:momento/src/messages/responses/responses_base.dart';

/// Sealed class for a delete cache response.
///
///  Pattern matching can be used to operate on the appropriate subtype.
///  ```
///   switch (response) {
///   case DeleteCacheSuccess():
///      // handle success
///   case DeleteCacheError():
///      // handle error
///   }
///  ```
sealed class DeleteCacheResponse {}

/// Indicates a successful delete cache request.
class DeleteCacheSuccess extends ResponseBase implements DeleteCacheResponse {}

/// Indicates that an error occurred during the delete cache request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class DeleteCacheError extends ErrorResponseBase
    implements DeleteCacheResponse {
  DeleteCacheError(super.exception);
}
