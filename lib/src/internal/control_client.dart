import 'package:momento/momento.dart';
import 'package:momento/generated/controlclient.pbgrpc.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:grpc/grpc.dart';

abstract class AbstractControlClient {
  Future<CreateCacheResponse> createCache(String cacheName);

  Future<DeleteCacheResponse> deleteCache(String cacheName);

  Future<ListCachesResponse> listCaches();

  Future<void> close();
}

class ControlClient implements AbstractControlClient {
  late ClientChannel _channel;
  late ScsControlClient _client;
  final CacheClientConfiguration _configuration;

  ControlClient(CredentialProvider credentialProvider, this._configuration) {
    _channel = ClientChannel(credentialProvider.controlEndpoint);
    _client = ScsControlClient(_channel,
        options: CallOptions(metadata: {
          'authorization': credentialProvider.apiKey,
          'agent': 'dart:0.1.0',
        }, timeout: _configuration.transportStrategy.grpcConfig.deadline));
  }

  @override
  Future<CreateCacheResponse> createCache(String cacheName) async {
    var request = CreateCacheRequest_();
    request.cacheName = cacheName;
    try {
      await _client.createCache(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return CreateCacheSuccess();
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.alreadyExists) {
        return AlreadyExists();
      } else if (e is GrpcError) {
        return CreateCacheError(grpcStatusToSdkException(e));
      } else {
        return CreateCacheError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<DeleteCacheResponse> deleteCache(String cacheName) async {
    var request = DeleteCacheRequest_();
    request.cacheName = cacheName;
    try {
      await _client.deleteCache(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return DeleteCacheSuccess();
    } catch (e) {
      if (e is GrpcError) {
        return DeleteCacheError(grpcStatusToSdkException(e));
      } else {
        return DeleteCacheError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListCachesResponse> listCaches() async {
    var request = ListCachesRequest_();
    try {
      final resp = await _client.listCaches(request);
      return ListCachesSuccess(resp.cache,
          message: "Successfully fetched all caches in account");
    } catch (e) {
      if (e is GrpcError) {
        return ListCachesError(grpcStatusToSdkException(e));
      } else {
        return ListCachesError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<void> close() async {
    await _channel.shutdown();
  }
}
