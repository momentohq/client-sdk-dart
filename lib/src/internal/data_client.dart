import 'package:momento/generated/cacheclient.pbgrpc.dart';
import 'package:momento/momento.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

abstract class AbstractDataClient {
  Future<GetResponse> get(String cacheName, Value key);

  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl});

  Future<DeleteResponse> delete(String cacheName, Value key);

  Future<void> close();
}

class DataClient implements AbstractDataClient {
  late ClientChannel _channel;
  late ScsClient _client;
  final CacheConfiguration _configuration;
  final Duration _defaultTtl;

  DataClient(CredentialProvider credentialProvider, this._configuration,
      this._defaultTtl) {
    _channel = ClientChannel(credentialProvider.cacheEndpoint);
    _client = ScsClient(_channel,
        options: CallOptions(metadata: {
          'authorization': credentialProvider.apiKey,
          'agent': 'dart:0.1.0',
        }, timeout: _configuration.transportStrategy.grpcConfig.deadline));
  }

  @override
  Future<GetResponse> get(String cacheName, Value key) async {
    var request = GetRequest_();
    request.cacheKey = key.toBinary();
    try {
      var resp = await _client.get(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
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
      if (e is GrpcError) {
        return GetError(grpcStatusToSdkException(e));
      } else {
        return GetError(UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl}) async {
    var request = SetRequest_();
    request.cacheKey = key.toBinary();
    request.cacheBody = value.toBinary();
    request.ttlMilliseconds =
        Int64(ttl != null ? ttl.inMilliseconds : _defaultTtl.inMilliseconds);
    try {
      await _client.set(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return SetSuccess();
    } catch (e) {
      if (e is GrpcError) {
        return SetError(grpcStatusToSdkException(e));
      } else {
        return SetError(UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<DeleteResponse> delete(String cacheName, Value key) async {
    var request = DeleteRequest_();
    request.cacheKey = key.toBinary();
    try {
      await _client.delete(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return DeleteSuccess();
    } catch (e) {
      if (e is GrpcError) {
        return DeleteError(grpcStatusToSdkException(e));
      } else {
        return DeleteError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<void> close() async {
    await _channel.shutdown();
  }
}
