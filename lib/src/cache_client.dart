import 'package:momento/momento.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/internal/control_client.dart';
import 'package:momento/src/internal/data_client.dart';
import 'package:momento/src/internal/utils/validators.dart';

import 'config/logger.dart';
import 'internal/utils/utils.dart';

abstract class ICacheClient {
  // Control plane RPCs
  Future<CreateCacheResponse> createCache(String cacheName);

  Future<DeleteCacheResponse> deleteCache(String cacheName);

  Future<ListCachesResponse> listCaches();

  // Unary RPCs
  Future<GetResponse> get(String cacheName, dynamic key);

  Future<SetResponse> set(String cacheName, dynamic key, dynamic value,
      {Duration? ttl});

  Future<DeleteResponse> delete(String cacheName, dynamic key);

  // List Collection RPCs
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<dynamic> values,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<dynamic> values,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListFetchResponse> listFetch(String cacheName, String listName,
      {int? startIndex, int? endIndex});
  Future<ListLengthResponse> listLength(String cacheName, String listName);
  Future<ListPopBackResponse> listPopBack(String cacheName, String listName);
  Future<ListPopFrontResponse> listPopFront(String cacheName, String listName);

  Future<ListPushBackResponse> listPushBack(
      String cacheName, String listName, dynamic value,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, dynamic value,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, dynamic value);

  Future<ListRetainResponse> listRetain(String cacheName, String listName,
      {int? startIndex, int? endIndex, CollectionTtl? ttl});
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
  ///   CacheClientConfigurations.latest(),
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
  Future<GetResponse> get(String cacheName, dynamic key) {
    Value validatedKey;
    try {
      validateCacheName(cacheName);
      validatedKey = getStringOrBinaryFromDynamic(key, "key");
    } catch (e) {
      if (e is SdkException) {
        return Future.value(GetError(e));
      } else {
        return Future.value(
            GetError(UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.get(cacheName, validatedKey);
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
  Future<SetResponse> set(String cacheName, dynamic key, dynamic value,
      {Duration? ttl}) {
    Value validatedKey;
    Value validatedValue;
    try {
      validateCacheName(cacheName);
      validatedKey = getStringOrBinaryFromDynamic(key, "key");
      validatedValue = getStringOrBinaryFromDynamic(value, "value");
    } catch (e) {
      if (e is SdkException) {
        return Future.value(SetError(e));
      } else {
        return Future.value(
            SetError(UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.set(cacheName, validatedKey, validatedValue, ttl: ttl);
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
  Future<DeleteResponse> delete(String cacheName, dynamic key) {
    Value validatedKey;
    try {
      validateCacheName(cacheName);
      validatedKey = getStringOrBinaryFromDynamic(key, "key");
    } catch (e) {
      if (e is SdkException) {
        return Future.value(DeleteError(e));
      } else {
        return Future.value(
            DeleteError(UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.delete(cacheName, validatedKey);
  }

  /// Close the client and free up all associated resources.
  ///
  /// NOTE: the client object will not be usable after calling this method.
  @override
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<dynamic> values,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    List<Value> validatedList;
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      validatedList = getListOfStringOrBinaryFromDynamic(values, "list");
      validateList(validatedList);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListConcatenateBackError(e));
      } else {
        return Future.value(ListConcatenateBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listConcatenateBack(cacheName, listName, validatedList,
          ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  @override
  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<dynamic> values,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    List<Value> validatedList;
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      validatedList = getListOfStringOrBinaryFromDynamic(values, "list");
      validateList(validatedList);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListConcatenateFrontError(e));
      } else {
        return Future.value(ListConcatenateFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listConcatenateFront(cacheName, listName, validatedList,
          ttl: ttl, truncateBackToSize: truncateBackToSize);
  }

  @override
  Future<ListFetchResponse> listFetch(String cacheName, String listName,
      {int? startIndex, int? endIndex}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListFetchError(e));
      } else {
        return Future.value(ListFetchError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listFetch(cacheName, listName,
          startIndex: startIndex, endIndex: endIndex);
  }

  @override
  Future<ListLengthResponse> listLength(String cacheName, String listName) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListLengthError(e));
      } else {
        return Future.value(ListLengthError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listLength(cacheName, listName);
  }

  @override
  Future<ListPopBackResponse> listPopBack(String cacheName, String listName) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPopBackError(e));
      } else {
        return Future.value(ListPopBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listPopBack(cacheName, listName);
  }

  @override
  Future<ListPopFrontResponse> listPopFront(String cacheName, String listName) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPopFrontError(e));
      } else {
        return Future.value(ListPopFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listPopFront(cacheName, listName);
  }

  @override
  Future<ListPushBackResponse> listPushBack(
      String cacheName, String listName, dynamic value,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    Value validatedValue;
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      validatedValue = getStringOrBinaryFromDynamic(value, "value");
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPushBackError(e));
      } else {
        return Future.value(ListPushBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listPushBack(cacheName, listName, validatedValue,
          ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  @override
  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, dynamic value,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    Value validatedValue;
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      validatedValue = getStringOrBinaryFromDynamic(value, "value");
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPushFrontError(e));
      } else {
        return Future.value(ListPushFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listPushFront(cacheName, listName, validatedValue,
          ttl: ttl, truncateBackToSize: truncateBackToSize);
  }

  @override
  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, dynamic value) {
    Value validatedValue;
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      validatedValue = getStringOrBinaryFromDynamic(value, "value");
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListRemoveValueError(e));
      } else {
        return Future.value(ListRemoveValueError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listRemoveValue(cacheName, listName, validatedValue);
  }

  @override
  Future<ListRetainResponse> listRetain(String cacheName, String listName,
      {int? startIndex, int? endIndex, CollectionTtl? ttl}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listRetain(cacheName, listName,
          startIndex: startIndex, endIndex: endIndex, ttl: ttl);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListRetainError(e));
      } else {
        return Future.value(ListRetainError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<void> close() async {
    await _dataClient.close();
    await _controlClient.close();
  }
}
