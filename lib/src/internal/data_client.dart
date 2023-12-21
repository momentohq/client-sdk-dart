import 'package:client_sdk_dart/generated/cacheclient.pbgrpc.dart';
import 'package:client_sdk_dart/src/config/cache_configuration.dart';
import 'package:client_sdk_dart/src/errors/errors.dart';
import 'package:client_sdk_dart/src/messages/responses/cache/data/scalar/get_response.dart';
import 'package:client_sdk_dart/src/messages/responses/cache/data/scalar/set_response.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../auth/credential_provider.dart';
import '../messages/values.dart';

abstract class AbstractDataClient {
  Future<GetResponse> get(String cacheName, Value key);

  Future<SetResponse> set(String cacheName, Value key, Value value,
      {int? ttlSeconds});
}

class DataClient implements AbstractDataClient {
  late ClientChannel _channel;
  late ScsClient _client;
  late CacheConfiguration _configuration;
  late Duration _defaultTtlSeconds;

  ClientPubsub(CredentialProvider credentialProvider,
      CacheConfiguration configuration, Duration defaultTtlSeconds) {
    _channel = ClientChannel(credentialProvider.cacheEndpoint);
    _client = ScsClient(_channel,
        options: CallOptions(metadata: {
          'authorization': credentialProvider.apiKey,
          'agent': 'dart:0.1.0'
        }));
    _configuration = configuration;
    _defaultTtlSeconds = defaultTtlSeconds;
  }

  @override
  Future<GetResponse> get(String cacheName, Value key) async {
    var request = GetRequest_();
    request.cacheKey = key.toBinary();
    try {
      var resp = await _client.get(request,
          options: CallOptions(
              timeout: _configuration.transportStrategy.grpcConfig.deadline,
              metadata: {
                'cacheName': cacheName,
              }));

      switch (resp.result) {
        case ECacheResult.Miss:
          return GetMiss();
        case ECacheResult.Hit:
          return GetHit(resp.cacheBody);
        default:
          return GetError(UnknownException(
              "unknown cache get error ${resp.result}", null, null));
      }
    } catch (e) {
      if (e is SdkException) {
        return GetError(e);
      } else {
        return GetError(UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<SetResponse> set(String cacheName, Value key, Value value,
      {int? ttlSeconds}) async {
    var request = SetRequest_();
    request.cacheKey = key.toBinary();
    request.cacheBody = value.toBinary();
    request.ttlMilliseconds = (ttlSeconds != null
        ? ttlSeconds * 1000
        : _defaultTtlSeconds.inMilliseconds) as Int64;
    try {
      var resp = await _client.set(request,
          options: CallOptions(
              timeout: _configuration.transportStrategy.grpcConfig.deadline,
              metadata: {
                'cacheName': cacheName,
              }));
      return SetSuccess();
    } catch (e) {
      if (e is SdkException) {
        return SetError(e);
      } else {
        return SetError(UnknownException("Unexpected error: $e", null, null));
      }
    }
  }
}
