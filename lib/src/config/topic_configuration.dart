import 'package:momento/src/config/logger.dart';

import 'transport/grpc_configuration.dart';
import 'transport/transport_strategy.dart';

abstract interface class TopicClientConfiguration {
  /// Configures low-level options for network interactions with the Momento service
  late TransportStrategy transportStrategy;

  /// Configures the verbosity of the client-side logger
  LogLevel logLevel;

  /// Constructor for a TopicClientConfiguration
  TopicClientConfiguration(this.transportStrategy, this.logLevel);

  /// Copy constructor for overriding TransportStrategy
  TopicClientConfiguration withTransportStrategy(
      TransportStrategy transportStrategy,
      {LogLevel logLevel = LogLevel.info});

  /// Convenience copy constructor that updates the client-side
  /// timeout setting in the transport strategy
  TopicClientConfiguration withDeadline(Duration deadline,
      {LogLevel logLevel = LogLevel.info});
}

/// Configuration options for Momento TopicClient.
/// The easiest way to get a `TopicClientConfiguration` object is
/// to use one of the prebuilt TopicClientConfigurations classes.
class TopicConfiguration implements TopicClientConfiguration {
  @override
  late TransportStrategy transportStrategy;

  @override
  LogLevel logLevel;

  TopicConfiguration(this.transportStrategy, this.logLevel);

  @override
  TopicClientConfiguration withTransportStrategy(
      TransportStrategy transportStrategy,
      {LogLevel logLevel = LogLevel.info}) {
    return TopicConfiguration(transportStrategy, logLevel);
  }

  @override
  TopicClientConfiguration withDeadline(Duration deadline,
      {LogLevel logLevel = LogLevel.info}) {
    return TopicConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(deadline)), logLevel);
  }
}
