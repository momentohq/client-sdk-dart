import 'logger.dart';
import 'topic_configuration.dart';
import 'transport/grpc_configuration.dart';
import 'transport/transport_strategy.dart';

/// Prebuilt configurations for Momento Topics clients
class TopicClientConfigurations {
  static TopicClientConfiguration latest({LogLevel logLevel = LogLevel.info}) {
    return TopicConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(Duration(seconds: 15))),
        logLevel);
  }
}
