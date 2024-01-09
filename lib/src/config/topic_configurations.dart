import 'logger.dart';
import 'topic_configuration.dart';
import 'transport/grpc_configuration.dart';
import 'transport/transport_strategy.dart';

/// Prebuilt configurations for Momento Topics clients
///
/// ```dart
/// final cacheConfiguration = TopicClientConfigurations.latest();
/// ```
class TopicClientConfigurations {
  /// Provides the latest recommended configuration for the Momento topic client
  static TopicClientConfiguration latest({LogLevel logLevel = LogLevel.info}) {
    return TopicConfiguration(
        StaticTransportStrategy(StaticGrpcConfiguration(Duration(seconds: 15))),
        logLevel);
  }
}
