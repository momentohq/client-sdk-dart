import 'package:momento/src/config/transport/grpc_configuration.dart';
import 'package:momento/src/config/transport/transport_strategy.dart';

import '../../momento.dart';

abstract interface class CacheClientConfiguration {
  /// Configures low-level options for network interactions with the Momento service
  late TransportStrategy transportStrategy;

  /// Configures the verbosity of the client-side logger
  LogLevel logLevel;

  /// Constructor for a CacheClientConfiguration
  CacheClientConfiguration(this.transportStrategy, this.logLevel);

  /// Copy constructor for overriding TransportStrategy
  CacheClientConfiguration withTransportStrategy(
      TransportStrategy transportStrategy,
      {LogLevel logLevel = LogLevel.info});

  /// Convenience copy constructor that updates the client-side
  /// timeout setting in the transport strategy
  CacheClientConfiguration withDeadline(Duration deadline,
      {LogLevel logLevel = LogLevel.info});
}

class CacheConfiguration implements CacheClientConfiguration {
  @override
  late TransportStrategy transportStrategy;

  @override
  LogLevel logLevel;

  CacheConfiguration(this.transportStrategy, this.logLevel);

  @override
  CacheClientConfiguration withTransportStrategy(
      TransportStrategy transportStrategy,
      {LogLevel logLevel = LogLevel.info}) {
    return CacheConfiguration(transportStrategy, logLevel);
  }

  @override
  CacheClientConfiguration withDeadline(Duration deadline,
      {LogLevel logLevel = LogLevel.info}) {
    return CacheConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(deadline)), logLevel);
  }
}
