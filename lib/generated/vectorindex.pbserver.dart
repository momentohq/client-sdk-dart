//
//  Generated code. Do not modify.
//  source: vectorindex.proto
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

import 'vectorindex.pb.dart' as $6;
import 'vectorindex.pbjson.dart';

export 'vectorindex.pb.dart';

abstract class VectorIndexServiceBase extends $pb.GeneratedService {
  $async.Future<$6.UpsertItemBatchResponse_> upsertItemBatch($pb.ServerContext ctx, $6.UpsertItemBatchRequest_ request);
  $async.Future<$6.DeleteItemBatchResponse_> deleteItemBatch($pb.ServerContext ctx, $6.DeleteItemBatchRequest_ request);
  $async.Future<$6.SearchResponse_> search($pb.ServerContext ctx, $6.SearchRequest_ request);
  $async.Future<$6.SearchAndFetchVectorsResponse_> searchAndFetchVectors($pb.ServerContext ctx, $6.SearchAndFetchVectorsRequest_ request);
  $async.Future<$6.GetItemMetadataBatchResponse_> getItemMetadataBatch($pb.ServerContext ctx, $6.GetItemMetadataBatchRequest_ request);
  $async.Future<$6.GetItemBatchResponse_> getItemBatch($pb.ServerContext ctx, $6.GetItemBatchRequest_ request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'UpsertItemBatch': return $6.UpsertItemBatchRequest_();
      case 'DeleteItemBatch': return $6.DeleteItemBatchRequest_();
      case 'Search': return $6.SearchRequest_();
      case 'SearchAndFetchVectors': return $6.SearchAndFetchVectorsRequest_();
      case 'GetItemMetadataBatch': return $6.GetItemMetadataBatchRequest_();
      case 'GetItemBatch': return $6.GetItemBatchRequest_();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'UpsertItemBatch': return this.upsertItemBatch(ctx, request as $6.UpsertItemBatchRequest_);
      case 'DeleteItemBatch': return this.deleteItemBatch(ctx, request as $6.DeleteItemBatchRequest_);
      case 'Search': return this.search(ctx, request as $6.SearchRequest_);
      case 'SearchAndFetchVectors': return this.searchAndFetchVectors(ctx, request as $6.SearchAndFetchVectorsRequest_);
      case 'GetItemMetadataBatch': return this.getItemMetadataBatch(ctx, request as $6.GetItemMetadataBatchRequest_);
      case 'GetItemBatch': return this.getItemBatch(ctx, request as $6.GetItemBatchRequest_);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => VectorIndexServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => VectorIndexServiceBase$messageJson;
}

