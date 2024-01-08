import 'package:momento/momento.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/internal/control_client.dart';
import 'package:momento/src/internal/data_client.dart';
import 'package:momento/src/internal/utils/validators.dart';

import 'config/logger.dart';


abstract class ICacheClient {
  Future<CreateCacheResponse> createCache(String cacheName);

  Future<DeleteCacheResponse> deleteCache(String cacheName);

  Future<ListCachesResponse> listCaches();

  Future<GetResponse> get(String cacheName, Value key);

  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl});

  Future<DeleteResponse> delete(String cacheName, Value key);

  Future<void> close();
}

class CacheClient implements ICacheClient {
  late final DataClient _dataClient;
  late final ControlClient _controlClient;
  final MomentoLogger _logger = MomentoLogger('MomentoCacheClient');

  /// Client to perform operations against Momento Serverless Cache.
  ///
  /// ```dart
  /// final cacheClient = CacheClient(
  ///   CredentialProvider.fromEnvironmentVariable("MOMENTO_API_KEY"),
  ///   MobileCacheConfiguration.latest(),
  ///   Duration(seconds: 30));
  /// ```
  CacheClient(CredentialProvider credentialProvider,
      CacheClientConfiguration configuration, Duration defaultTtl) {
    _dataClient = DataClient(credentialProvider, configuration, defaultTtl);
    _controlClient = ControlClient(credentialProvider, configuration);
    _logger.setLevel(configuration.logLevel);
    _logger.trace("initializing cache client");
  }

  /// Creates a cache with the name [cacheName] if it doesn't exist.
  ///
  /// Returns a response that can be resolved to one of its possible types:
  /// ```dart
  /// switch (createResponse) {
  ///   case CreateCacheError():
  ///     print("Got an error: ${createResponse.errorCode} ${createResponse.message}");
  ///   case CreateCacheSuccess():
  ///     print("Cache was created");
  ///   case AlreadyExists():
  ///     print("Cache already exists");
  /// }
  /// ```
  @override
  Future<CreateCacheResponse> createCache(String cacheName) {
    try {
      validateCacheName(cacheName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(CreateCacheError(e));
      } else {
        return Future.value(CreateCacheError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _controlClient.createCache(cacheName);
  }


  /// Deletes a cache with the name [cacheName].
  ///
  /// Returns a response that can be resolved to one of its possible types:
  /// ```dart
  /// switch (deleteResponse) {
  ///   case DeleteCacheError():
  ///     print("Got an error: ${deleteResponse.errorCode} ${deleteResponse.message}");
  ///   case DeleteCacheSuccess():
  ///     print("Cache was deleted");
  /// }
  /// ```
  @override
  Future<DeleteCacheResponse> deleteCache(String cacheName) {
    try {
      validateCacheName(cacheName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(DeleteCacheError(e));
      } else {
        return Future.value(DeleteCacheError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _controlClient.deleteCache(cacheName);
  }

  /// Lists all caches.
  ///
  /// Returns a response that can be resolved to one of its possible types:
  /// ```dart
  /// switch(listResponse) {
  ///   case ListCachesSuccess():
  ///     print("My caches: ${listResponse.cacheNames.join(", ")}");
  ///   case ListCachesError():
  ///     print("Got an error: ${listResponse.errorCode} ${listResponse.message}");
  /// }
  /// ```
  @override
  Future<ListCachesResponse> listCaches() {
    return _controlClient.listCaches();
  }

  /// Gets the cache value stored for a given key.
  ///
  /// Returns a response that can be resolved to one of its possible types:
  /// ```dart
  /// switch(getResponse) {
  ///   case GetHit():
  ///     print("Get value from cache: ${getResponse.value}");
  ///   case GetMiss():
  ///     print("Value for key was not found in cache.");
  ///   case GetError():
  ///     print("Got an error: ${getResponse.errorCode} ${getResponse.message}");
  /// }
  /// ```
  @override
  Future<GetResponse> get(String cacheName, Value key) {
    try {
      validateCacheName(cacheName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(GetError(e));
      } else {
        return Future.value(
            GetError(UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.get(cacheName, key);
  }

  /// Associates the given key with the given value.
  ///
  /// If a value for the key is already present it is replaced with the new value.
  /// Returns a response that can be resolved to one of its possible types:
  /// ```dart
  /// switch(setResponse) {
  ///   case SetSuccess():
  ///     print("Key was set to value");
  ///   case SetError():
  ///     print("Got an error: ${setResponse.errorCode} ${setResponse.message}");
  /// }
  /// ```
  @override
  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl}) {
    try {
      validateCacheName(cacheName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(SetError(e));
      } else {
        return Future.value(
            SetError(UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.set(cacheName, key, value, ttl: ttl);
  }

  /// Removes the given key from the cache.
  ///
  /// The key can represent a single value or a collection.
  /// Returns a response that can be resolved to one of its possible types:
  /// ```dart
  /// switch(deleteResponse) {
  ///   case DeleteSuccess():
  ///     print("Key deleted from cache");
  ///   case DeleteError():
  ///     print("Got an error: ${deleteResponse.errorCode} ${deleteResponse.message}");
  /// }
  /// ```
  @override
  Future<DeleteResponse> delete(String cacheName, Value key) {
    try {
      validateCacheName(cacheName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(DeleteError(e));
      } else {
        return Future.value(
            DeleteError(UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.delete(cacheName, key);
  }

  /// Close the client and free up all associated resources.
  ///
  /// NOTE: the client object will not be usable after calling this method.
  @override
  Future<void> close() async {
    await _dataClient.close();
    await _controlClient.close();
  }
}
