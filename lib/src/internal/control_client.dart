import 'package:client_sdk_dart/client_sdk_dart.dart';
import 'package:client_sdk_dart/generated/controlclient.pbgrpc.dart';
import 'package:client_sdk_dart/src/config/cache_configuration.dart';
import 'package:client_sdk_dart/src/errors/errors.dart';
import 'package:grpc/grpc.dart';

abstract class AbstractControlClient {
  Future<CreateCacheResponse> createCache(String cacheName);

  Future<DeleteCacheResponse> deleteCache(String cacheName);

  Future<ListCachesResponse> listCaches();
}

class ControlClient implements AbstractControlClient {
  late ClientChannel _channel;
  late ScsControlClient _client;
  final CacheConfiguration _configuration;

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
      } else if (e is SdkException) {
        return CreateCacheError(e);
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
      if (e is SdkException) {
        return DeleteCacheError(e);
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
      return ListCachesSuccess(resp.cache);
    } catch (e) {
      if (e is SdkException) {
        return ListCachesError(e);
      } else {
        return ListCachesError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }
}