import 'package:client_sdk_dart/src/config/transport/grpc_configuration.dart';
import 'package:client_sdk_dart/src/config/transport/transport_strategy.dart';

import '../../client_sdk_dart.dart';

abstract interface class CacheConfiguration {
  /// Configures low-level options for network interactions with the Momento service
  late TransportStrategy transportStrategy;

  /// Configures the verbosity of the client-side logger
  LogLevel logLevel;

  /// Constructor for a CacheConfiguration
  CacheConfiguration(this.transportStrategy, this.logLevel);

  /// Copy constructor for overriding TransportStrategy
  CacheConfiguration withTransportStrategy(TransportStrategy transportStrategy,
      {LogLevel logLevel = LogLevel.info});

  /// Convenience copy constructor that updates the client-side
  /// timeout setting in the transport strategy
  CacheConfiguration withDeadline(Duration deadline,
      {LogLevel logLevel = LogLevel.info});
}

class CacheClientConfiguration implements CacheConfiguration {
  @override
  late TransportStrategy transportStrategy;

  @override
  LogLevel logLevel;

  CacheClientConfiguration(this.transportStrategy, this.logLevel);

  @override
  CacheConfiguration withTransportStrategy(TransportStrategy transportStrategy,
      {LogLevel logLevel = LogLevel.info}) {
    return CacheClientConfiguration(transportStrategy, logLevel);
  }

  @override
  CacheConfiguration withDeadline(Duration deadline,
      {LogLevel logLevel = LogLevel.info}) {
    return CacheClientConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(deadline)), logLevel);
  }
}
