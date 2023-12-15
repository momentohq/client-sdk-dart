import 'grpc_configuration.dart';

abstract interface class TransportStrategy {
  /// Low-level gRPC settings for communication with the Momento server
  late GrpcConfiguration grpcConfig;

  /// Copy constructor to update the client-side timeout
  TransportStrategy withGrpcConfig(GrpcConfiguration grpcConfig);

  /// Copy constructor to update the client-side timeout
  TransportStrategy withClientTimeout(Duration timeout);
}

class StaticTransportStrategy implements TransportStrategy {
  @override
  late GrpcConfiguration grpcConfig;

  StaticTransportStrategy(this.grpcConfig);

  @override
  TransportStrategy withClientTimeout(Duration timeout) {
    return StaticTransportStrategy(StaticGrpcConfiguration(timeout));
  }

  @override
  TransportStrategy withGrpcConfig(GrpcConfiguration grpcConfig) {
    return StaticTransportStrategy(grpcConfig);
  }
}
