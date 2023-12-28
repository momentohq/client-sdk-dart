import 'logger.dart';
import 'topic_configuration.dart';
import 'transport/grpc_configuration.dart';
import 'transport/transport_strategy.dart';

/// Prebuilt configurations for Momento Topics clients
abstract interface class TopicClientConfigurations {}

/// Provides prebuilt configurations for the `TopicClient` on mobile platforms
class MobileTopicConfiguration extends TopicClientConfigurations {
  static TopicClientConfiguration defaultConfig() {
    return latest();
  }

  static TopicClientConfiguration latest({LogLevel logLevel = LogLevel.info}) {
    return TopicClientConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(Duration(seconds: 15))),
        logLevel);
  }
}
