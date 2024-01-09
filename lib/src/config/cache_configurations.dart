import 'package:momento/src/config/transport/grpc_configuration.dart';
import 'package:momento/src/config/transport/transport_strategy.dart';

import '../../momento.dart';
import 'cache_configuration.dart';

/// Prebuilt configurations for Momento Cache clients
///
/// ```dart
/// final cacheConfiguration = CacheClientConfigurations.latest();
/// ```
class CacheClientConfigurations {
  /// Provides the latest recommended configuration for the Momento cache client
  static CacheClientConfiguration latest({LogLevel logLevel = LogLevel.info}) {
    return CacheConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(Duration(seconds: 15))),
        logLevel);
  }
}
