import 'package:momento/momento.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:momento/src/internal/control_client.dart';
import 'package:momento/src/internal/data_client.dart';
import 'package:momento/src/internal/utils/validators.dart';

import 'config/logger.dart';

// import 'config/logger.dart';

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
  Future<void> close() async {
    await _dataClient.close();
    await _controlClient.close();
  }
}
