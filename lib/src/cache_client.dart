import 'package:momento/momento.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/internal/control_client.dart';
import 'package:momento/src/internal/data_client.dart';
import 'package:momento/src/internal/utils/validators.dart';

import 'config/logger.dart';

abstract class ICacheClient {
  // Control plane RPCs
  Future<CreateCacheResponse> createCache(String cacheName);

  Future<DeleteCacheResponse> deleteCache(String cacheName);

  Future<ListCachesResponse> listCaches();

  // Unary RPCs
  Future<GetResponse> get(String cacheName, String key);

  Future<SetResponse> set(String cacheName, String key, String value,
      {Duration? ttl});

  Future<SetResponse> setBinary(String cacheName, String key, List<int> value,
      {Duration? ttl});

  Future<DeleteResponse> delete(String cacheName, String key);

  // List Collection RPCs
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<String> values,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListConcatenateBackResponse> listConcatenateBackBinary(
      String cacheName, String listName, List<List<int>> values,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<String> values,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListConcatenateFrontResponse> listConcatenateFrontBinary(
      String cacheName, String listName, List<List<int>> values,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListFetchResponse> listFetch(String cacheName, String listName,
      {int? startIndex, int? endIndex});
  Future<ListLengthResponse> listLength(String cacheName, String listName);
  Future<ListPopBackResponse> listPopBack(String cacheName, String listName);
  Future<ListPopFrontResponse> listPopFront(String cacheName, String listName);

  Future<ListPushBackResponse> listPushBack(
      String cacheName, String listName, String value,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListPushBackResponse> listPushBackBinary(
      String cacheName, String listName, List<int> value,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, String value,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListPushFrontResponse> listPushFrontBinary(
      String cacheName, String listName, List<int> value,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, String value);

  Future<ListRemoveValueResponse> listRemoveValueBinary(
      String cacheName, String listName, List<int> value);

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
  Future<GetResponse> get(String cacheName, String key) {
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
    return _dataClient.get(cacheName, StringValue(key));
  }

  /// Associates the given key with the given string value.
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
  Future<SetResponse> set(String cacheName, String key, String value,
      {Duration? ttl}) {
    return _doSet(cacheName, StringValue(key), StringValue(value), ttl: ttl);
  }

  /// Associates the given key with the given binary value.
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
  Future<SetResponse> setBinary(String cacheName, String key, List<int> value,
      {Duration? ttl}) {
    return _doSet(cacheName, StringValue(key), BinaryValue(value), ttl: ttl);
  }

  Future<SetResponse> _doSet(String cacheName, Value key, Value value,
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
  Future<DeleteResponse> delete(String cacheName, String key) {
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
    return _dataClient.delete(cacheName, StringValue(key));
  }

  @override
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<String> values,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    return _doListConcatenateBack(
        cacheName, listName, values.map((v) => StringValue(v)).toList(),
        ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  @override
  Future<ListConcatenateBackResponse> listConcatenateBackBinary(
      String cacheName, String listName, List<List<int>> values,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    return _doListConcatenateBack(
        cacheName, listName, values.map((v) => BinaryValue(v)).toList(),
        ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  Future<ListConcatenateBackResponse> _doListConcatenateBack(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListConcatenateBackError(e));
      } else {
        return Future.value(ListConcatenateBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listConcatenateBack(cacheName, listName, values,
        ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  @override
  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<String> values,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    return _doListConcatenateFront(
        cacheName, listName, values.map((v) => StringValue(v)).toList(),
        ttl: ttl, truncateBackToSize: truncateBackToSize);
  }

  @override
  Future<ListConcatenateFrontResponse> listConcatenateFrontBinary(
      String cacheName, String listName, List<List<int>> values,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    return _doListConcatenateFront(
        cacheName, listName, values.map((v) => BinaryValue(v)).toList(),
        ttl: ttl, truncateBackToSize: truncateBackToSize);
  }

  Future<ListConcatenateFrontResponse> _doListConcatenateFront(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListConcatenateFrontError(e));
      } else {
        return Future.value(ListConcatenateFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listConcatenateFront(cacheName, listName, values,
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
      String cacheName, String listName, String value,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    return _doListPushBack(cacheName, listName, StringValue(value),
        ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  @override
  Future<ListPushBackResponse> listPushBackBinary(
      String cacheName, String listName, List<int> value,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    return _doListPushBack(cacheName, listName, BinaryValue(value),
        ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  Future<ListPushBackResponse> _doListPushBack(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPushBackError(e));
      } else {
        return Future.value(ListPushBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listPushBack(cacheName, listName, value,
        ttl: ttl, truncateFrontToSize: truncateFrontToSize);
  }

  @override
  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, String value,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    return _doListPushFront(cacheName, listName, StringValue(value),
        ttl: ttl, truncateBackToSize: truncateBackToSize);
  }

  @override
  Future<ListPushFrontResponse> listPushFrontBinary(
      String cacheName, String listName, List<int> value,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    return _doListPushFront(cacheName, listName, BinaryValue(value),
        ttl: ttl, truncateBackToSize: truncateBackToSize);
  }

  Future<ListPushFrontResponse> _doListPushFront(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPushFrontError(e));
      } else {
        return Future.value(ListPushFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listPushFront(cacheName, listName, value,
        ttl: ttl, truncateBackToSize: truncateBackToSize);
  }

  @override
  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, String value) {
    return _doListRemoveValue(cacheName, listName, StringValue(value));
  }

  @override
  Future<ListRemoveValueResponse> listRemoveValueBinary(
      String cacheName, String listName, List<int> value) {
    return _doListRemoveValue(cacheName, listName, BinaryValue(value));
  }

  Future<ListRemoveValueResponse> _doListRemoveValue(
      String cacheName, String listName, Value value) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListRemoveValueError(e));
      } else {
        return Future.value(ListRemoveValueError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listRemoveValue(cacheName, listName, value);
  }

  @override
  Future<ListRetainResponse> listRetain(String cacheName, String listName,
      {int? startIndex, int? endIndex, CollectionTtl? ttl}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListRetainError(e));
      } else {
        return Future.value(ListRetainError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
    return _dataClient.listRetain(cacheName, listName,
        startIndex: startIndex, endIndex: endIndex, ttl: ttl);
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
