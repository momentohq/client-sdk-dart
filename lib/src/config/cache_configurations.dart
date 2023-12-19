import 'package:client_sdk_dart/src/config/transport/grpc_configuration.dart';
import 'package:client_sdk_dart/src/config/transport/transport_strategy.dart';

import 'cache_configuration.dart';

/// Prebuilt configurations for Momento Cache clients
abstract interface class CacheClientConfigurations {}

/// Provides prebuilt configurations for the `CacheClient` on mobile platforms
class Mobile extends CacheClientConfigurations {
  static CacheClientConfiguration defaultConfig() {
    return latest();
  }

  static CacheClientConfiguration latest() {
    return CacheClientConfiguration(StaticTransportStrategy(
        StaticGrpcConfiguration(Duration(seconds: 15))));
  }
}
