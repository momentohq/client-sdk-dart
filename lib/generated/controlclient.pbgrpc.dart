//
//  Generated code. Do not modify.
//  source: controlclient.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'controlclient.pb.dart' as $1;

export 'controlclient.pb.dart';

@$pb.GrpcServiceName('control_client.ScsControl')
class ScsControlClient extends $grpc.Client {
  static final _$createCache =
      $grpc.ClientMethod<$1.CreateCacheRequest_, $1.CreateCacheResponse_>(
          '/control_client.ScsControl/CreateCache',
          ($1.CreateCacheRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateCacheResponse_.fromBuffer(value));
  static final _$deleteCache =
      $grpc.ClientMethod<$1.DeleteCacheRequest_, $1.DeleteCacheResponse_>(
          '/control_client.ScsControl/DeleteCache',
          ($1.DeleteCacheRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteCacheResponse_.fromBuffer(value));
  static final _$listCaches =
      $grpc.ClientMethod<$1.ListCachesRequest_, $1.ListCachesResponse_>(
          '/control_client.ScsControl/ListCaches',
          ($1.ListCachesRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListCachesResponse_.fromBuffer(value));
  static final _$flushCache =
      $grpc.ClientMethod<$1.FlushCacheRequest_, $1.FlushCacheResponse_>(
          '/control_client.ScsControl/FlushCache',
          ($1.FlushCacheRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.FlushCacheResponse_.fromBuffer(value));
  static final _$createSigningKey = $grpc.ClientMethod<
          $1.CreateSigningKeyRequest_, $1.CreateSigningKeyResponse_>(
      '/control_client.ScsControl/CreateSigningKey',
      ($1.CreateSigningKeyRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CreateSigningKeyResponse_.fromBuffer(value));
  static final _$revokeSigningKey = $grpc.ClientMethod<
          $1.RevokeSigningKeyRequest_, $1.RevokeSigningKeyResponse_>(
      '/control_client.ScsControl/RevokeSigningKey',
      ($1.RevokeSigningKeyRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.RevokeSigningKeyResponse_.fromBuffer(value));
  static final _$listSigningKeys = $grpc.ClientMethod<
          $1.ListSigningKeysRequest_, $1.ListSigningKeysResponse_>(
      '/control_client.ScsControl/ListSigningKeys',
      ($1.ListSigningKeysRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListSigningKeysResponse_.fromBuffer(value));
  static final _$createIndex =
      $grpc.ClientMethod<$1.CreateIndexRequest_, $1.CreateIndexResponse_>(
          '/control_client.ScsControl/CreateIndex',
          ($1.CreateIndexRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateIndexResponse_.fromBuffer(value));
  static final _$deleteIndex =
      $grpc.ClientMethod<$1.DeleteIndexRequest_, $1.DeleteIndexResponse_>(
          '/control_client.ScsControl/DeleteIndex',
          ($1.DeleteIndexRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteIndexResponse_.fromBuffer(value));
  static final _$listIndexes =
      $grpc.ClientMethod<$1.ListIndexesRequest_, $1.ListIndexesResponse_>(
          '/control_client.ScsControl/ListIndexes',
          ($1.ListIndexesRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListIndexesResponse_.fromBuffer(value));
  static final _$createStore =
      $grpc.ClientMethod<$1.CreateStoreRequest_, $1.CreateStoreResponse_>(
          '/control_client.ScsControl/CreateStore',
          ($1.CreateStoreRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateStoreResponse_.fromBuffer(value));
  static final _$deleteStore =
      $grpc.ClientMethod<$1.DeleteStoreRequest_, $1.DeleteStoreResponse_>(
          '/control_client.ScsControl/DeleteStore',
          ($1.DeleteStoreRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteStoreResponse_.fromBuffer(value));
  static final _$listStores =
      $grpc.ClientMethod<$1.ListStoresRequest_, $1.ListStoresResponse_>(
          '/control_client.ScsControl/ListStores',
          ($1.ListStoresRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListStoresResponse_.fromBuffer(value));

  ScsControlClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateCacheResponse_> createCache(
      $1.CreateCacheRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCache, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteCacheResponse_> deleteCache(
      $1.DeleteCacheRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCache, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListCachesResponse_> listCaches(
      $1.ListCachesRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCaches, request, options: options);
  }

  $grpc.ResponseFuture<$1.FlushCacheResponse_> flushCache(
      $1.FlushCacheRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$flushCache, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateSigningKeyResponse_> createSigningKey(
      $1.CreateSigningKeyRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSigningKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.RevokeSigningKeyResponse_> revokeSigningKey(
      $1.RevokeSigningKeyRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeSigningKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListSigningKeysResponse_> listSigningKeys(
      $1.ListSigningKeysRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSigningKeys, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateIndexResponse_> createIndex(
      $1.CreateIndexRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createIndex, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteIndexResponse_> deleteIndex(
      $1.DeleteIndexRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteIndex, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListIndexesResponse_> listIndexes(
      $1.ListIndexesRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listIndexes, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateStoreResponse_> createStore(
      $1.CreateStoreRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStore, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteStoreResponse_> deleteStore(
      $1.DeleteStoreRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStore, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListStoresResponse_> listStores(
      $1.ListStoresRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStores, request, options: options);
  }
}

@$pb.GrpcServiceName('control_client.ScsControl')
abstract class ScsControlServiceBase extends $grpc.Service {
  $core.String get $name => 'control_client.ScsControl';

  ScsControlServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.CreateCacheRequest_, $1.CreateCacheResponse_>(
            'CreateCache',
            createCache_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateCacheRequest_.fromBuffer(value),
            ($1.CreateCacheResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteCacheRequest_, $1.DeleteCacheResponse_>(
            'DeleteCache',
            deleteCache_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteCacheRequest_.fromBuffer(value),
            ($1.DeleteCacheResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListCachesRequest_, $1.ListCachesResponse_>(
            'ListCaches',
            listCaches_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListCachesRequest_.fromBuffer(value),
            ($1.ListCachesResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.FlushCacheRequest_, $1.FlushCacheResponse_>(
            'FlushCache',
            flushCache_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.FlushCacheRequest_.fromBuffer(value),
            ($1.FlushCacheResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateSigningKeyRequest_,
            $1.CreateSigningKeyResponse_>(
        'CreateSigningKey',
        createSigningKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateSigningKeyRequest_.fromBuffer(value),
        ($1.CreateSigningKeyResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RevokeSigningKeyRequest_,
            $1.RevokeSigningKeyResponse_>(
        'RevokeSigningKey',
        revokeSigningKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RevokeSigningKeyRequest_.fromBuffer(value),
        ($1.RevokeSigningKeyResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListSigningKeysRequest_,
            $1.ListSigningKeysResponse_>(
        'ListSigningKeys',
        listSigningKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListSigningKeysRequest_.fromBuffer(value),
        ($1.ListSigningKeysResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CreateIndexRequest_, $1.CreateIndexResponse_>(
            'CreateIndex',
            createIndex_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateIndexRequest_.fromBuffer(value),
            ($1.CreateIndexResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteIndexRequest_, $1.DeleteIndexResponse_>(
            'DeleteIndex',
            deleteIndex_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteIndexRequest_.fromBuffer(value),
            ($1.DeleteIndexResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListIndexesRequest_, $1.ListIndexesResponse_>(
            'ListIndexes',
            listIndexes_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListIndexesRequest_.fromBuffer(value),
            ($1.ListIndexesResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CreateStoreRequest_, $1.CreateStoreResponse_>(
            'CreateStore',
            createStore_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateStoreRequest_.fromBuffer(value),
            ($1.CreateStoreResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteStoreRequest_, $1.DeleteStoreResponse_>(
            'DeleteStore',
            deleteStore_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteStoreRequest_.fromBuffer(value),
            ($1.DeleteStoreResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListStoresRequest_, $1.ListStoresResponse_>(
            'ListStores',
            listStores_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListStoresRequest_.fromBuffer(value),
            ($1.ListStoresResponse_ value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateCacheResponse_> createCache_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateCacheRequest_> request) async {
    return createCache(call, await request);
  }

  $async.Future<$1.DeleteCacheResponse_> deleteCache_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteCacheRequest_> request) async {
    return deleteCache(call, await request);
  }

  $async.Future<$1.ListCachesResponse_> listCaches_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListCachesRequest_> request) async {
    return listCaches(call, await request);
  }

  $async.Future<$1.FlushCacheResponse_> flushCache_Pre($grpc.ServiceCall call,
      $async.Future<$1.FlushCacheRequest_> request) async {
    return flushCache(call, await request);
  }

  $async.Future<$1.CreateSigningKeyResponse_> createSigningKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CreateSigningKeyRequest_> request) async {
    return createSigningKey(call, await request);
  }

  $async.Future<$1.RevokeSigningKeyResponse_> revokeSigningKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RevokeSigningKeyRequest_> request) async {
    return revokeSigningKey(call, await request);
  }

  $async.Future<$1.ListSigningKeysResponse_> listSigningKeys_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListSigningKeysRequest_> request) async {
    return listSigningKeys(call, await request);
  }

  $async.Future<$1.CreateIndexResponse_> createIndex_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateIndexRequest_> request) async {
    return createIndex(call, await request);
  }

  $async.Future<$1.DeleteIndexResponse_> deleteIndex_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteIndexRequest_> request) async {
    return deleteIndex(call, await request);
  }

  $async.Future<$1.ListIndexesResponse_> listIndexes_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListIndexesRequest_> request) async {
    return listIndexes(call, await request);
  }

  $async.Future<$1.CreateStoreResponse_> createStore_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateStoreRequest_> request) async {
    return createStore(call, await request);
  }

  $async.Future<$1.DeleteStoreResponse_> deleteStore_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteStoreRequest_> request) async {
    return deleteStore(call, await request);
  }

  $async.Future<$1.ListStoresResponse_> listStores_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListStoresRequest_> request) async {
    return listStores(call, await request);
  }

  $async.Future<$1.CreateCacheResponse_> createCache(
      $grpc.ServiceCall call, $1.CreateCacheRequest_ request);
  $async.Future<$1.DeleteCacheResponse_> deleteCache(
      $grpc.ServiceCall call, $1.DeleteCacheRequest_ request);
  $async.Future<$1.ListCachesResponse_> listCaches(
      $grpc.ServiceCall call, $1.ListCachesRequest_ request);
  $async.Future<$1.FlushCacheResponse_> flushCache(
      $grpc.ServiceCall call, $1.FlushCacheRequest_ request);
  $async.Future<$1.CreateSigningKeyResponse_> createSigningKey(
      $grpc.ServiceCall call, $1.CreateSigningKeyRequest_ request);
  $async.Future<$1.RevokeSigningKeyResponse_> revokeSigningKey(
      $grpc.ServiceCall call, $1.RevokeSigningKeyRequest_ request);
  $async.Future<$1.ListSigningKeysResponse_> listSigningKeys(
      $grpc.ServiceCall call, $1.ListSigningKeysRequest_ request);
  $async.Future<$1.CreateIndexResponse_> createIndex(
      $grpc.ServiceCall call, $1.CreateIndexRequest_ request);
  $async.Future<$1.DeleteIndexResponse_> deleteIndex(
      $grpc.ServiceCall call, $1.DeleteIndexRequest_ request);
  $async.Future<$1.ListIndexesResponse_> listIndexes(
      $grpc.ServiceCall call, $1.ListIndexesRequest_ request);
  $async.Future<$1.CreateStoreResponse_> createStore(
      $grpc.ServiceCall call, $1.CreateStoreRequest_ request);
  $async.Future<$1.DeleteStoreResponse_> deleteStore(
      $grpc.ServiceCall call, $1.DeleteStoreRequest_ request);
  $async.Future<$1.ListStoresResponse_> listStores(
      $grpc.ServiceCall call, $1.ListStoresRequest_ request);
}
