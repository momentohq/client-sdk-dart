import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:client_sdk_dart/src/config/cache_configuration.dart';
import 'package:client_sdk_dart/src/internal/control_client.dart';
import 'package:client_sdk_dart/src/internal/data_client.dart';
import 'package:client_sdk_dart/src/messages/responses/cache/data/scalar/delete_response.dart';
import 'package:client_sdk_dart/src/messages/responses/cache/data/scalar/get_response.dart';
import 'package:client_sdk_dart/src/messages/responses/cache/data/scalar/set_response.dart';
import 'package:logging/logging.dart';
// import 'config/logger.dart';

abstract class ICacheClient {
  Future<CreateCacheResponse> createCache(String cacheName);

  Future<DeleteCacheResponse> deleteCache(String cacheName);

  Future<ListCachesResponse> listCaches();

  Future<GetResponse> get(String cacheName, Value value);

  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl});

  Future<DeleteResponse> delete(String cacheName, Value key);
}

class CacheClient implements ICacheClient {
  late final DataClient _dataClient;
  late final ControlClient _controlClient;
  final Logger _logger = Logger('MomentoCacheClient');

  CacheClient(CredentialProvider credentialProvider,
      CacheConfiguration configuration, Duration defaultTtl) {
    _dataClient = DataClient(credentialProvider, configuration, defaultTtl);
    _controlClient = ControlClient(credentialProvider, configuration);
    // _logger.level = determineLoggerLevel(configuration.logLevel);
    _logger.finest("initializing cache client");
  }

  @override
  Future<CreateCacheResponse> createCache(String cacheName) {
    // TODO: add validators
    return _controlClient.createCache(cacheName);
  }

  @override
  Future<DeleteCacheResponse> deleteCache(String cacheName) {
    // TODO: add validators
    return _controlClient.deleteCache(cacheName);
  }

  @override
  Future<ListCachesResponse> listCaches() {
    // TODO: add validators
    return _controlClient.listCaches();
  }

  @override
  Future<GetResponse> get(String cacheName, Value value) {
    return _dataClient.get(cacheName, value);
  }

  @override
  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl}) {
    // TODO: add validators
    return _dataClient.set(cacheName, key, value, ttl: ttl);
  }

  @override
  Future<DeleteResponse> delete(String cacheName, Value key) {
    // TODO: add validators
    return _dataClient.delete(cacheName, key);
  }
}
