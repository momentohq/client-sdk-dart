import 'package:client_sdk_dart/src/config/cache_configuration.dart';
import 'package:client_sdk_dart/src/internal/data_client.dart';
import 'package:client_sdk_dart/src/messages/responses/cache/data/scalar/get_response.dart';
import 'package:client_sdk_dart/src/messages/responses/cache/data/scalar/set_response.dart';
import 'package:logging/logging.dart';

import 'auth/credential_provider.dart';
import 'config/logger.dart';
import 'messages/values.dart';

abstract class ICacheClient {
  Future<GetResponse> get(String cacheName, Value value);

  Future<SetResponse> subscribe(String cacheName, Value key, Value value,
      {int? ttlSeconds});
}

class CacheClient implements ICacheClient {
  final DataClient _dataClient;
  final Logger _logger = Logger('MomentoCacheClient');

  CacheClient(CredentialProvider credentialProvider,
      CacheConfiguration configuration, Duration defaultTtl)
      : _dataClient =
            DataClient(credentialProvider, configuration, defaultTtl) {
    _logger.level = determineLoggerLevel(configuration.logLevel);
    _logger.finest("initializing cache client");
  }

  @override
  Future<GetResponse> get(String cacheName, Value value) {
    return _dataClient.get(cacheName, value);
  }

  @override
  Future<SetResponse> subscribe(String cacheName, Value key, Value value,
      {int? ttlSeconds}) {
    return _dataClient.set(cacheName, key, value, ttlSeconds: ttlSeconds);
  }
}
