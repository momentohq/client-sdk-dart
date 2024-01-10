import 'package:momento/src/messages/responses/responses_base.dart';

/// Sealed class for a create cache response.
///
///  Pattern matching can be used to operate on the appropriate subtype.
///  ```
///   switch (response) {
///   case CreateCacheSuccess():
///      // handle success
///   case CreateCacheAlreadyExists():
///      // handle already exists
///   case CreateCacheError():
///      // handle error
///   }
///  ```
sealed class CreateCacheResponse {}

/// Indicates a successful create cache request.
class CreateCacheSuccess extends ResponseBase implements CreateCacheResponse {}

/// Indicates that the cache already exists, so there was nothing to do.
class CreateCacheAlreadyExists extends ResponseBase
    implements CreateCacheResponse {}

/// Indicates that an error occurred during the create cache request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class CreateCacheError extends ErrorResponseBase
    implements CreateCacheResponse {
  CreateCacheError(super.exception);
}
