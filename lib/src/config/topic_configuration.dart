import 'transport/grpc_configuration.dart';
import 'transport/transport_strategy.dart';

abstract interface class TopicConfiguration {
  /// Configures low-level options for network interactions with the Momento service
  late TransportStrategy transportStrategy;

  /// Constructor for a TopicConfiguration
  TopicConfiguration(this.transportStrategy);

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

  TopicClientConfiguration(this.transportStrategy);

  @override
  TopicConfiguration withTransportStrategy(
      TransportStrategy transportStrategy) {
    return TopicClientConfiguration(transportStrategy);
  }

  @override
  TopicConfiguration withDeadline(Duration deadline) {
    return TopicClientConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(deadline)));
  }
}
