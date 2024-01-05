import 'package:momento/momento.dart';
import 'package:momento/generated/cachepubsub.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';

class TopicGrpcManager {
  late final ClientChannel _channel;
  late final PubsubClient _client;
  final _logger = Logger('MomentoTopicClient');

  TopicGrpcManager(CredentialProvider credentialProvider) {
    _channel = ClientChannel(credentialProvider.cacheEndpoint,
        options: ChannelOptions(
            keepAlive: ClientKeepAliveOptions(
                pingInterval: Duration(seconds: 20),
                // timeout: Duration(seconds: 15),
                permitWithoutCalls: true)));
    _client = PubsubClient(_channel,
        options: CallOptions(metadata: {
          'authorization': credentialProvider.apiKey,
          'agent': 'dart:0.1.0'
        }));
  }

  PubsubClient get client => _client;
  ClientChannel get channel => _channel;

  void close() {
    try {
      _channel.shutdown();
    } catch (e) {
      _logger.warning("Error shutting down channel: $e");
    }
  }
}
