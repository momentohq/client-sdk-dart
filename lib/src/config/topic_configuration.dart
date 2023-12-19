import 'package:client_sdk_dart/src/config/logger.dart';

import 'transport/grpc_configuration.dart';
import 'transport/transport_strategy.dart';

abstract interface class TopicConfiguration {
  /// Configures low-level options for network interactions with the Momento service
  late TransportStrategy transportStrategy;

  /// Configures the verbosity of the client-side logger
  LogLevel logLevel;

  /// Constructor for a TopicConfiguration
  TopicConfiguration(this.transportStrategy, this.logLevel);

  /// Copy constructor for overriding TransportStrategy
  TopicConfiguration withTransportStrategy(TransportStrategy transportStrategy);

  /// Convenience copy constructor that updates the client-side
  /// timeout setting in the transport strategy
  TopicConfiguration withDeadline(Duration deadline);
}

/// Configuration options for Momento TopicClient.
/// The easiest way to get a `TopicClientConfiguration` object is
/// to use one of the prebuilt TopicClientConfigurations classes.
class TopicClientConfiguration implements TopicConfiguration {
  @override
  late TransportStrategy transportStrategy;

  @override
  LogLevel logLevel;

  TopicClientConfiguration(this.transportStrategy, this.logLevel);

  @override
  TopicConfiguration withTransportStrategy(
      TransportStrategy transportStrategy, {LogLevel logLevel = LogLevel.info}) {
    return TopicClientConfiguration(transportStrategy, logLevel);
  }

  @override
  TopicConfiguration withDeadline(Duration deadline, {LogLevel logLevel = LogLevel.info}) {
    return TopicClientConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(deadline)), logLevel);
  }
}
