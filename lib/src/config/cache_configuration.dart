import 'package:client_sdk_dart/src/config/transport/grpc_configuration.dart';
import 'package:client_sdk_dart/src/config/transport/transport_strategy.dart';

abstract interface class CacheConfiguration {
  /// Configures low-level options for network interactions with the Momento service
  late TransportStrategy transportStrategy;

  /// Constructor for a CacheConfiguration
  CacheConfiguration(this.transportStrategy);

  /// Copy constructor for overriding TransportStrategy
  CacheConfiguration withTransportStrategy(TransportStrategy transportStrategy);

  /// Convenience copy constructor that updates the client-side
  /// timeout setting in the transport strategy
  CacheConfiguration withDeadline(Duration deadline);
}

class CacheClientConfiguration implements CacheConfiguration {
  @override
  late TransportStrategy transportStrategy;

  CacheClientConfiguration(this.transportStrategy);

  @override
  CacheConfiguration withTransportStrategy(
      TransportStrategy transportStrategy) {
    return CacheClientConfiguration(transportStrategy);
  }

  @override
  CacheConfiguration withDeadline(Duration deadline) {
    return CacheClientConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(deadline)));
  }
}