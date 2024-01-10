import 'package:momento/generated/controlclient.pb.dart';
import 'package:momento/src/messages/responses/responses_base.dart';

/// Represents information about a listed cache, such as its name.
/// May include additional information in the future.
class CacheInfo {
  final String name;

  CacheInfo(this.name);
}

/// Sealed class for a list caches response.
///
///  Pattern matching can be used to operate on the appropriate subtype.
///  ```
///   switch (response) {
///   case ListCachesSuccess():
///      // handle success
///   case ListCachesError():
///      // handle error
///   }
///  ```
sealed class ListCachesResponse {}

/// Indicates a successful list caches request.
class ListCachesSuccess extends NonErroResponseBase
    implements ListCachesResponse {
  late final List<CacheInfo> caches;

  ListCachesSuccess(List<Cache_> grpcCaches,
      {String message = "ListCachesSuccess"}) {
    caches = grpcCaches.map((cache) => CacheInfo(cache.cacheName)).toList();
  }

  String description() {
    return "[ListCachesSuccess] length of caches list: ${caches.length}";
  }

  List<String> get cacheNames => caches.map((cache) => cache.name).toList();

  @override
  String toString() {
    return "$runtimeType: $cacheNames";
  }
}

/// Indicates that an error occurred during the list caches request.
///
/// The response object includes the following fields you can use to determine how you want to handle the error:
/// - `errorCode`: a unique Momento error code indicating the type of error that occurred
/// - `message`: a human-readable description of the error
/// - `innerException`: the original error that caused the failure; can be re-thrown
class ListCachesError extends ErrorResponseBase implements ListCachesResponse {
  ListCachesError(super.exception);
}
