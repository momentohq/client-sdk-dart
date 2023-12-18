//
//  Generated code. Do not modify.
//  source: vectorindex.proto
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

import 'vectorindex.pb.dart' as $5;

export 'vectorindex.pb.dart';

@$pb.GrpcServiceName('vectorindex.VectorIndex')
class VectorIndexClient extends $grpc.Client {
  static final _$upsertItemBatch = $grpc.ClientMethod<
          $5.UpsertItemBatchRequest_, $5.UpsertItemBatchResponse_>(
      '/vectorindex.VectorIndex/UpsertItemBatch',
      ($5.UpsertItemBatchRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpsertItemBatchResponse_.fromBuffer(value));
  static final _$deleteItemBatch = $grpc.ClientMethod<
          $5.DeleteItemBatchRequest_, $5.DeleteItemBatchResponse_>(
      '/vectorindex.VectorIndex/DeleteItemBatch',
      ($5.DeleteItemBatchRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeleteItemBatchResponse_.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$5.SearchRequest_, $5.SearchResponse_>(
          '/vectorindex.VectorIndex/Search',
          ($5.SearchRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.SearchResponse_.fromBuffer(value));
  static final _$searchAndFetchVectors = $grpc.ClientMethod<
          $5.SearchAndFetchVectorsRequest_, $5.SearchAndFetchVectorsResponse_>(
      '/vectorindex.VectorIndex/SearchAndFetchVectors',
      ($5.SearchAndFetchVectorsRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.SearchAndFetchVectorsResponse_.fromBuffer(value));
  static final _$getItemMetadataBatch = $grpc.ClientMethod<
          $5.GetItemMetadataBatchRequest_, $5.GetItemMetadataBatchResponse_>(
      '/vectorindex.VectorIndex/GetItemMetadataBatch',
      ($5.GetItemMetadataBatchRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetItemMetadataBatchResponse_.fromBuffer(value));
  static final _$getItemBatch =
      $grpc.ClientMethod<$5.GetItemBatchRequest_, $5.GetItemBatchResponse_>(
          '/vectorindex.VectorIndex/GetItemBatch',
          ($5.GetItemBatchRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetItemBatchResponse_.fromBuffer(value));

  VectorIndexClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.UpsertItemBatchResponse_> upsertItemBatch(
      $5.UpsertItemBatchRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upsertItemBatch, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteItemBatchResponse_> deleteItemBatch(
      $5.DeleteItemBatchRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItemBatch, request, options: options);
  }

  $grpc.ResponseFuture<$5.SearchResponse_> search($5.SearchRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$5.SearchAndFetchVectorsResponse_> searchAndFetchVectors(
      $5.SearchAndFetchVectorsRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchAndFetchVectors, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetItemMetadataBatchResponse_> getItemMetadataBatch(
      $5.GetItemMetadataBatchRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItemMetadataBatch, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetItemBatchResponse_> getItemBatch(
      $5.GetItemBatchRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItemBatch, request, options: options);
  }
}

@$pb.GrpcServiceName('vectorindex.VectorIndex')
abstract class VectorIndexServiceBase extends $grpc.Service {
  $core.String get $name => 'vectorindex.VectorIndex';

  VectorIndexServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.UpsertItemBatchRequest_,
            $5.UpsertItemBatchResponse_>(
        'UpsertItemBatch',
        upsertItemBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpsertItemBatchRequest_.fromBuffer(value),
        ($5.UpsertItemBatchResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteItemBatchRequest_,
            $5.DeleteItemBatchResponse_>(
        'DeleteItemBatch',
        deleteItemBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteItemBatchRequest_.fromBuffer(value),
        ($5.DeleteItemBatchResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchRequest_, $5.SearchResponse_>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SearchRequest_.fromBuffer(value),
        ($5.SearchResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchAndFetchVectorsRequest_,
            $5.SearchAndFetchVectorsResponse_>(
        'SearchAndFetchVectors',
        searchAndFetchVectors_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.SearchAndFetchVectorsRequest_.fromBuffer(value),
        ($5.SearchAndFetchVectorsResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetItemMetadataBatchRequest_,
            $5.GetItemMetadataBatchResponse_>(
        'GetItemMetadataBatch',
        getItemMetadataBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetItemMetadataBatchRequest_.fromBuffer(value),
        ($5.GetItemMetadataBatchResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.GetItemBatchRequest_, $5.GetItemBatchResponse_>(
            'GetItemBatch',
            getItemBatch_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.GetItemBatchRequest_.fromBuffer(value),
            ($5.GetItemBatchResponse_ value) => value.writeToBuffer()));
  }

  $async.Future<$5.UpsertItemBatchResponse_> upsertItemBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpsertItemBatchRequest_> request) async {
    return upsertItemBatch(call, await request);
  }

  $async.Future<$5.DeleteItemBatchResponse_> deleteItemBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeleteItemBatchRequest_> request) async {
    return deleteItemBatch(call, await request);
  }

  $async.Future<$5.SearchResponse_> search_Pre(
      $grpc.ServiceCall call, $async.Future<$5.SearchRequest_> request) async {
    return search(call, await request);
  }

  $async.Future<$5.SearchAndFetchVectorsResponse_> searchAndFetchVectors_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.SearchAndFetchVectorsRequest_> request) async {
    return searchAndFetchVectors(call, await request);
  }

  $async.Future<$5.GetItemMetadataBatchResponse_> getItemMetadataBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetItemMetadataBatchRequest_> request) async {
    return getItemMetadataBatch(call, await request);
  }

  $async.Future<$5.GetItemBatchResponse_> getItemBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetItemBatchRequest_> request) async {
    return getItemBatch(call, await request);
  }

  $async.Future<$5.UpsertItemBatchResponse_> upsertItemBatch(
      $grpc.ServiceCall call, $5.UpsertItemBatchRequest_ request);
  $async.Future<$5.DeleteItemBatchResponse_> deleteItemBatch(
      $grpc.ServiceCall call, $5.DeleteItemBatchRequest_ request);
  $async.Future<$5.SearchResponse_> search(
      $grpc.ServiceCall call, $5.SearchRequest_ request);
  $async.Future<$5.SearchAndFetchVectorsResponse_> searchAndFetchVectors(
      $grpc.ServiceCall call, $5.SearchAndFetchVectorsRequest_ request);
  $async.Future<$5.GetItemMetadataBatchResponse_> getItemMetadataBatch(
      $grpc.ServiceCall call, $5.GetItemMetadataBatchRequest_ request);
  $async.Future<$5.GetItemBatchResponse_> getItemBatch(
      $grpc.ServiceCall call, $5.GetItemBatchRequest_ request);
}
