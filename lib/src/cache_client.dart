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
  Future<GetResponse> get(String cacheName, Value key);

  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl});

  Future<DeleteResponse> delete(String cacheName, Value key);

  // List Collection RPCs
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListFetchResponse> listFetch(String cacheName, String listName,
      {int? startIndex, int? endIndex});
  Future<ListLengthResponse> listLength(String cacheName, String listName);
  Future<ListPopBackResponse> listPopBack(String cacheName, String listName);
  Future<ListPopFrontResponse> listPopFront(String cacheName, String listName);

  Future<ListPushBackResponse> listPushBack(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, Value value);

  Future<ListRetainResponse> listRetain(String cacheName, String listName,
      {int? startIndex, int? endIndex, CollectionTtl? ttl});
  Future<void> close();
}

class CacheClient implements ICacheClient {
  late final DataClient _dataClient;
  late final ControlClient _controlClient;
  final MomentoLogger _logger = MomentoLogger('MomentoCacheClient');

  CacheClient(CredentialProvider credentialProvider,
      CacheClientConfiguration configuration, Duration defaultTtl) {
    _dataClient = DataClient(credentialProvider, configuration, defaultTtl);
    _controlClient = ControlClient(credentialProvider, configuration);
    _logger.setLevel(configuration.logLevel);
    _logger.trace("initializing cache client");
  }

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

  @override
  Future<ListCachesResponse> listCaches() {
    return _controlClient.listCaches();
  }

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

  @override
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      validateList(values);
      return _dataClient.listConcatenateBack(cacheName, listName, values,
          ttl: ttl, truncateFrontToSize: truncateFrontToSize);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListConcatenateBackError(e));
      } else {
        return Future.value(ListConcatenateBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      validateList(values);
      return _dataClient.listConcatenateFront(cacheName, listName, values,
          ttl: ttl, truncateBackToSize: truncateBackToSize);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListConcatenateFrontError(e));
      } else {
        return Future.value(ListConcatenateFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListFetchResponse> listFetch(String cacheName, String listName,
      {int? startIndex, int? endIndex}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listFetch(cacheName, listName,
          startIndex: startIndex, endIndex: endIndex);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListFetchError(e));
      } else {
        return Future.value(ListFetchError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListLengthResponse> listLength(String cacheName, String listName) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listLength(cacheName, listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListLengthError(e));
      } else {
        return Future.value(ListLengthError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListPopBackResponse> listPopBack(String cacheName, String listName) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listPopBack(cacheName, listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPopBackError(e));
      } else {
        return Future.value(ListPopBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListPopFrontResponse> listPopFront(String cacheName, String listName) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listPopFront(cacheName, listName);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPopFrontError(e));
      } else {
        return Future.value(ListPopFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListPushBackResponse> listPushBack(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateFrontToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listPushBack(cacheName, listName, value,
          ttl: ttl, truncateFrontToSize: truncateFrontToSize);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPushBackError(e));
      } else {
        return Future.value(ListPushBackError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateBackToSize}) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listPushFront(cacheName, listName, value,
          ttl: ttl, truncateBackToSize: truncateBackToSize);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListPushFrontError(e));
      } else {
        return Future.value(ListPushFrontError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
  }

  @override
  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, Value value) {
    try {
      validateCacheName(cacheName);
      validateListName(listName);
      return _dataClient.listRemoveValue(cacheName, listName, value);
    } catch (e) {
      if (e is SdkException) {
        return Future.value(ListRemoveValueError(e));
      } else {
        return Future.value(ListRemoveValueError(
            UnknownException("Unexpected error: $e", null, null)));
      }
    }
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

  Future<void> close() async {
    await _dataClient.close();
    await _controlClient.close();
  }
}
