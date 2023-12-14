//
//  Generated code. Do not modify.
//  source: controlclient.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'controlclient.pb.dart' as $1;
import 'controlclient.pbjson.dart';

export 'controlclient.pb.dart';

abstract class ScsControlServiceBase extends $pb.GeneratedService {
  $async.Future<$1.CreateCacheResponse_> createCache($pb.ServerContext ctx, $1.CreateCacheRequest_ request);
  $async.Future<$1.DeleteCacheResponse_> deleteCache($pb.ServerContext ctx, $1.DeleteCacheRequest_ request);
  $async.Future<$1.ListCachesResponse_> listCaches($pb.ServerContext ctx, $1.ListCachesRequest_ request);
  $async.Future<$1.FlushCacheResponse_> flushCache($pb.ServerContext ctx, $1.FlushCacheRequest_ request);
  $async.Future<$1.CreateSigningKeyResponse_> createSigningKey($pb.ServerContext ctx, $1.CreateSigningKeyRequest_ request);
  $async.Future<$1.RevokeSigningKeyResponse_> revokeSigningKey($pb.ServerContext ctx, $1.RevokeSigningKeyRequest_ request);
  $async.Future<$1.ListSigningKeysResponse_> listSigningKeys($pb.ServerContext ctx, $1.ListSigningKeysRequest_ request);
  $async.Future<$1.CreateIndexResponse_> createIndex($pb.ServerContext ctx, $1.CreateIndexRequest_ request);
  $async.Future<$1.DeleteIndexResponse_> deleteIndex($pb.ServerContext ctx, $1.DeleteIndexRequest_ request);
  $async.Future<$1.ListIndexesResponse_> listIndexes($pb.ServerContext ctx, $1.ListIndexesRequest_ request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateCache': return $1.CreateCacheRequest_();
      case 'DeleteCache': return $1.DeleteCacheRequest_();
      case 'ListCaches': return $1.ListCachesRequest_();
      case 'FlushCache': return $1.FlushCacheRequest_();
      case 'CreateSigningKey': return $1.CreateSigningKeyRequest_();
      case 'RevokeSigningKey': return $1.RevokeSigningKeyRequest_();
      case 'ListSigningKeys': return $1.ListSigningKeysRequest_();
      case 'CreateIndex': return $1.CreateIndexRequest_();
      case 'DeleteIndex': return $1.DeleteIndexRequest_();
      case 'ListIndexes': return $1.ListIndexesRequest_();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateCache': return this.createCache(ctx, request as $1.CreateCacheRequest_);
      case 'DeleteCache': return this.deleteCache(ctx, request as $1.DeleteCacheRequest_);
      case 'ListCaches': return this.listCaches(ctx, request as $1.ListCachesRequest_);
      case 'FlushCache': return this.flushCache(ctx, request as $1.FlushCacheRequest_);
      case 'CreateSigningKey': return this.createSigningKey(ctx, request as $1.CreateSigningKeyRequest_);
      case 'RevokeSigningKey': return this.revokeSigningKey(ctx, request as $1.RevokeSigningKeyRequest_);
      case 'ListSigningKeys': return this.listSigningKeys(ctx, request as $1.ListSigningKeysRequest_);
      case 'CreateIndex': return this.createIndex(ctx, request as $1.CreateIndexRequest_);
      case 'DeleteIndex': return this.deleteIndex(ctx, request as $1.DeleteIndexRequest_);
      case 'ListIndexes': return this.listIndexes(ctx, request as $1.ListIndexesRequest_);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ScsControlServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ScsControlServiceBase$messageJson;
}

