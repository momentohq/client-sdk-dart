import 'package:momento/src/config/transport/grpc_configuration.dart';
import 'package:momento/src/config/transport/transport_strategy.dart';

import '../../momento.dart';
import 'cache_configuration.dart';

/// Prebuilt configurations for Momento Cache clients
class CacheClientConfigurations {
  static CacheClientConfiguration defaultConfig() {
    return latest();
  }

  static CacheClientConfiguration latest({LogLevel logLevel = LogLevel.info}) {
    return CacheConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(Duration(seconds: 15))),
        logLevel);
  }
}
