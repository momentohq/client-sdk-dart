//
//  Generated code. Do not modify.
//  source: cacheclient.proto
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

import 'cacheclient.pb.dart' as $0;

export 'cacheclient.pb.dart';

@$pb.GrpcServiceName('cache_client.Scs')
class ScsClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$0.GetRequest_, $0.GetResponse_>(
      '/cache_client.Scs/Get',
      ($0.GetRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetResponse_.fromBuffer(value));
  static final _$set = $grpc.ClientMethod<$0.SetRequest_, $0.SetResponse_>(
      '/cache_client.Scs/Set',
      ($0.SetRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetResponse_.fromBuffer(value));
  static final _$setIfNotExists = $grpc.ClientMethod<$0.SetIfNotExistsRequest_, $0.SetIfNotExistsResponse_>(
      '/cache_client.Scs/SetIfNotExists',
      ($0.SetIfNotExistsRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetIfNotExistsResponse_.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteRequest_, $0.DeleteResponse_>(
      '/cache_client.Scs/Delete',
      ($0.DeleteRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteResponse_.fromBuffer(value));
  static final _$keysExist = $grpc.ClientMethod<$0.KeysExistRequest_, $0.KeysExistResponse_>(
      '/cache_client.Scs/KeysExist',
      ($0.KeysExistRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.KeysExistResponse_.fromBuffer(value));
  static final _$increment = $grpc.ClientMethod<$0.IncrementRequest_, $0.IncrementResponse_>(
      '/cache_client.Scs/Increment',
      ($0.IncrementRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IncrementResponse_.fromBuffer(value));
  static final _$updateTtl = $grpc.ClientMethod<$0.UpdateTtlRequest_, $0.UpdateTtlResponse_>(
      '/cache_client.Scs/UpdateTtl',
      ($0.UpdateTtlRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateTtlResponse_.fromBuffer(value));
  static final _$itemGetTtl = $grpc.ClientMethod<$0.ItemGetTtlRequest_, $0.ItemGetTtlResponse_>(
      '/cache_client.Scs/ItemGetTtl',
      ($0.ItemGetTtlRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ItemGetTtlResponse_.fromBuffer(value));
  static final _$itemGetType = $grpc.ClientMethod<$0.ItemGetTypeRequest_, $0.ItemGetTypeResponse_>(
      '/cache_client.Scs/ItemGetType',
      ($0.ItemGetTypeRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ItemGetTypeResponse_.fromBuffer(value));
  static final _$dictionaryGet = $grpc.ClientMethod<$0.DictionaryGetRequest_, $0.DictionaryGetResponse_>(
      '/cache_client.Scs/DictionaryGet',
      ($0.DictionaryGetRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DictionaryGetResponse_.fromBuffer(value));
  static final _$dictionaryFetch = $grpc.ClientMethod<$0.DictionaryFetchRequest_, $0.DictionaryFetchResponse_>(
      '/cache_client.Scs/DictionaryFetch',
      ($0.DictionaryFetchRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DictionaryFetchResponse_.fromBuffer(value));
  static final _$dictionarySet = $grpc.ClientMethod<$0.DictionarySetRequest_, $0.DictionarySetResponse_>(
      '/cache_client.Scs/DictionarySet',
      ($0.DictionarySetRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DictionarySetResponse_.fromBuffer(value));
  static final _$dictionaryIncrement = $grpc.ClientMethod<$0.DictionaryIncrementRequest_, $0.DictionaryIncrementResponse_>(
      '/cache_client.Scs/DictionaryIncrement',
      ($0.DictionaryIncrementRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DictionaryIncrementResponse_.fromBuffer(value));
  static final _$dictionaryDelete = $grpc.ClientMethod<$0.DictionaryDeleteRequest_, $0.DictionaryDeleteResponse_>(
      '/cache_client.Scs/DictionaryDelete',
      ($0.DictionaryDeleteRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DictionaryDeleteResponse_.fromBuffer(value));
  static final _$dictionaryLength = $grpc.ClientMethod<$0.DictionaryLengthRequest_, $0.DictionaryLengthResponse_>(
      '/cache_client.Scs/DictionaryLength',
      ($0.DictionaryLengthRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DictionaryLengthResponse_.fromBuffer(value));
  static final _$setFetch = $grpc.ClientMethod<$0.SetFetchRequest_, $0.SetFetchResponse_>(
      '/cache_client.Scs/SetFetch',
      ($0.SetFetchRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetFetchResponse_.fromBuffer(value));
  static final _$setUnion = $grpc.ClientMethod<$0.SetUnionRequest_, $0.SetUnionResponse_>(
      '/cache_client.Scs/SetUnion',
      ($0.SetUnionRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetUnionResponse_.fromBuffer(value));
  static final _$setDifference = $grpc.ClientMethod<$0.SetDifferenceRequest_, $0.SetDifferenceResponse_>(
      '/cache_client.Scs/SetDifference',
      ($0.SetDifferenceRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetDifferenceResponse_.fromBuffer(value));
  static final _$setContains = $grpc.ClientMethod<$0.SetContainsRequest_, $0.SetContainsResponse_>(
      '/cache_client.Scs/SetContains',
      ($0.SetContainsRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetContainsResponse_.fromBuffer(value));
  static final _$setLength = $grpc.ClientMethod<$0.SetLengthRequest_, $0.SetLengthResponse_>(
      '/cache_client.Scs/SetLength',
      ($0.SetLengthRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetLengthResponse_.fromBuffer(value));
  static final _$setPop = $grpc.ClientMethod<$0.SetPopRequest_, $0.SetPopResponse_>(
      '/cache_client.Scs/SetPop',
      ($0.SetPopRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetPopResponse_.fromBuffer(value));
  static final _$listPushFront = $grpc.ClientMethod<$0.ListPushFrontRequest_, $0.ListPushFrontResponse_>(
      '/cache_client.Scs/ListPushFront',
      ($0.ListPushFrontRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPushFrontResponse_.fromBuffer(value));
  static final _$listPushBack = $grpc.ClientMethod<$0.ListPushBackRequest_, $0.ListPushBackResponse_>(
      '/cache_client.Scs/ListPushBack',
      ($0.ListPushBackRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPushBackResponse_.fromBuffer(value));
  static final _$listPopFront = $grpc.ClientMethod<$0.ListPopFrontRequest_, $0.ListPopFrontResponse_>(
      '/cache_client.Scs/ListPopFront',
      ($0.ListPopFrontRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPopFrontResponse_.fromBuffer(value));
  static final _$listPopBack = $grpc.ClientMethod<$0.ListPopBackRequest_, $0.ListPopBackResponse_>(
      '/cache_client.Scs/ListPopBack',
      ($0.ListPopBackRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPopBackResponse_.fromBuffer(value));
  static final _$listErase = $grpc.ClientMethod<$0.ListEraseRequest_, $0.ListEraseResponse_>(
      '/cache_client.Scs/ListErase',
      ($0.ListEraseRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListEraseResponse_.fromBuffer(value));
  static final _$listRemove = $grpc.ClientMethod<$0.ListRemoveRequest_, $0.ListRemoveResponse_>(
      '/cache_client.Scs/ListRemove',
      ($0.ListRemoveRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListRemoveResponse_.fromBuffer(value));
  static final _$listFetch = $grpc.ClientMethod<$0.ListFetchRequest_, $0.ListFetchResponse_>(
      '/cache_client.Scs/ListFetch',
      ($0.ListFetchRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListFetchResponse_.fromBuffer(value));
  static final _$listLength = $grpc.ClientMethod<$0.ListLengthRequest_, $0.ListLengthResponse_>(
      '/cache_client.Scs/ListLength',
      ($0.ListLengthRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListLengthResponse_.fromBuffer(value));
  static final _$listConcatenateFront = $grpc.ClientMethod<$0.ListConcatenateFrontRequest_, $0.ListConcatenateFrontResponse_>(
      '/cache_client.Scs/ListConcatenateFront',
      ($0.ListConcatenateFrontRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListConcatenateFrontResponse_.fromBuffer(value));
  static final _$listConcatenateBack = $grpc.ClientMethod<$0.ListConcatenateBackRequest_, $0.ListConcatenateBackResponse_>(
      '/cache_client.Scs/ListConcatenateBack',
      ($0.ListConcatenateBackRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListConcatenateBackResponse_.fromBuffer(value));
  static final _$listRetain = $grpc.ClientMethod<$0.ListRetainRequest_, $0.ListRetainResponse_>(
      '/cache_client.Scs/ListRetain',
      ($0.ListRetainRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListRetainResponse_.fromBuffer(value));
  static final _$sortedSetPut = $grpc.ClientMethod<$0.SortedSetPutRequest_, $0.SortedSetPutResponse_>(
      '/cache_client.Scs/SortedSetPut',
      ($0.SortedSetPutRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetPutResponse_.fromBuffer(value));
  static final _$sortedSetFetch = $grpc.ClientMethod<$0.SortedSetFetchRequest_, $0.SortedSetFetchResponse_>(
      '/cache_client.Scs/SortedSetFetch',
      ($0.SortedSetFetchRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetFetchResponse_.fromBuffer(value));
  static final _$sortedSetGetScore = $grpc.ClientMethod<$0.SortedSetGetScoreRequest_, $0.SortedSetGetScoreResponse_>(
      '/cache_client.Scs/SortedSetGetScore',
      ($0.SortedSetGetScoreRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetGetScoreResponse_.fromBuffer(value));
  static final _$sortedSetRemove = $grpc.ClientMethod<$0.SortedSetRemoveRequest_, $0.SortedSetRemoveResponse_>(
      '/cache_client.Scs/SortedSetRemove',
      ($0.SortedSetRemoveRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetRemoveResponse_.fromBuffer(value));
  static final _$sortedSetIncrement = $grpc.ClientMethod<$0.SortedSetIncrementRequest_, $0.SortedSetIncrementResponse_>(
      '/cache_client.Scs/SortedSetIncrement',
      ($0.SortedSetIncrementRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetIncrementResponse_.fromBuffer(value));
  static final _$sortedSetGetRank = $grpc.ClientMethod<$0.SortedSetGetRankRequest_, $0.SortedSetGetRankResponse_>(
      '/cache_client.Scs/SortedSetGetRank',
      ($0.SortedSetGetRankRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetGetRankResponse_.fromBuffer(value));
  static final _$sortedSetLength = $grpc.ClientMethod<$0.SortedSetLengthRequest_, $0.SortedSetLengthResponse_>(
      '/cache_client.Scs/SortedSetLength',
      ($0.SortedSetLengthRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetLengthResponse_.fromBuffer(value));
  static final _$sortedSetLengthByScore = $grpc.ClientMethod<$0.SortedSetLengthByScoreRequest_, $0.SortedSetLengthByScoreResponse_>(
      '/cache_client.Scs/SortedSetLengthByScore',
      ($0.SortedSetLengthByScoreRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SortedSetLengthByScoreResponse_.fromBuffer(value));

  ScsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetResponse_> get($0.GetRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetResponse_> set($0.SetRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$set, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetIfNotExistsResponse_> setIfNotExists($0.SetIfNotExistsRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setIfNotExists, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteResponse_> delete($0.DeleteRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeysExistResponse_> keysExist($0.KeysExistRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$keysExist, request, options: options);
  }

  $grpc.ResponseFuture<$0.IncrementResponse_> increment($0.IncrementRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$increment, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateTtlResponse_> updateTtl($0.UpdateTtlRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTtl, request, options: options);
  }

  $grpc.ResponseFuture<$0.ItemGetTtlResponse_> itemGetTtl($0.ItemGetTtlRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$itemGetTtl, request, options: options);
  }

  $grpc.ResponseFuture<$0.ItemGetTypeResponse_> itemGetType($0.ItemGetTypeRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$itemGetType, request, options: options);
  }

  $grpc.ResponseFuture<$0.DictionaryGetResponse_> dictionaryGet($0.DictionaryGetRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dictionaryGet, request, options: options);
  }

  $grpc.ResponseFuture<$0.DictionaryFetchResponse_> dictionaryFetch($0.DictionaryFetchRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dictionaryFetch, request, options: options);
  }

  $grpc.ResponseFuture<$0.DictionarySetResponse_> dictionarySet($0.DictionarySetRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dictionarySet, request, options: options);
  }

  $grpc.ResponseFuture<$0.DictionaryIncrementResponse_> dictionaryIncrement($0.DictionaryIncrementRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dictionaryIncrement, request, options: options);
  }

  $grpc.ResponseFuture<$0.DictionaryDeleteResponse_> dictionaryDelete($0.DictionaryDeleteRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dictionaryDelete, request, options: options);
  }

  $grpc.ResponseFuture<$0.DictionaryLengthResponse_> dictionaryLength($0.DictionaryLengthRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dictionaryLength, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetFetchResponse_> setFetch($0.SetFetchRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFetch, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetUnionResponse_> setUnion($0.SetUnionRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setUnion, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetDifferenceResponse_> setDifference($0.SetDifferenceRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDifference, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetContainsResponse_> setContains($0.SetContainsRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setContains, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetLengthResponse_> setLength($0.SetLengthRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLength, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetPopResponse_> setPop($0.SetPopRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPop, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListPushFrontResponse_> listPushFront($0.ListPushFrontRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPushFront, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListPushBackResponse_> listPushBack($0.ListPushBackRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPushBack, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListPopFrontResponse_> listPopFront($0.ListPopFrontRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPopFront, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListPopBackResponse_> listPopBack($0.ListPopBackRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPopBack, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListEraseResponse_> listErase($0.ListEraseRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listErase, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListRemoveResponse_> listRemove($0.ListRemoveRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRemove, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListFetchResponse_> listFetch($0.ListFetchRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFetch, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListLengthResponse_> listLength($0.ListLengthRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLength, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListConcatenateFrontResponse_> listConcatenateFront($0.ListConcatenateFrontRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listConcatenateFront, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListConcatenateBackResponse_> listConcatenateBack($0.ListConcatenateBackRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listConcatenateBack, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListRetainResponse_> listRetain($0.ListRetainRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRetain, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetPutResponse_> sortedSetPut($0.SortedSetPutRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetPut, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetFetchResponse_> sortedSetFetch($0.SortedSetFetchRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetFetch, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetGetScoreResponse_> sortedSetGetScore($0.SortedSetGetScoreRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetGetScore, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetRemoveResponse_> sortedSetRemove($0.SortedSetRemoveRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetRemove, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetIncrementResponse_> sortedSetIncrement($0.SortedSetIncrementRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetIncrement, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetGetRankResponse_> sortedSetGetRank($0.SortedSetGetRankRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetGetRank, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetLengthResponse_> sortedSetLength($0.SortedSetLengthRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetLength, request, options: options);
  }

  $grpc.ResponseFuture<$0.SortedSetLengthByScoreResponse_> sortedSetLengthByScore($0.SortedSetLengthByScoreRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sortedSetLengthByScore, request, options: options);
  }
}

@$pb.GrpcServiceName('cache_client.Scs')
abstract class ScsServiceBase extends $grpc.Service {
  $core.String get $name => 'cache_client.Scs';

  ScsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetRequest_, $0.GetResponse_>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest_.fromBuffer(value),
        ($0.GetResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRequest_, $0.SetResponse_>(
        'Set',
        set_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetRequest_.fromBuffer(value),
        ($0.SetResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetIfNotExistsRequest_, $0.SetIfNotExistsResponse_>(
        'SetIfNotExists',
        setIfNotExists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetIfNotExistsRequest_.fromBuffer(value),
        ($0.SetIfNotExistsResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRequest_, $0.DeleteResponse_>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteRequest_.fromBuffer(value),
        ($0.DeleteResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeysExistRequest_, $0.KeysExistResponse_>(
        'KeysExist',
        keysExist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.KeysExistRequest_.fromBuffer(value),
        ($0.KeysExistResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IncrementRequest_, $0.IncrementResponse_>(
        'Increment',
        increment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IncrementRequest_.fromBuffer(value),
        ($0.IncrementResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTtlRequest_, $0.UpdateTtlResponse_>(
        'UpdateTtl',
        updateTtl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTtlRequest_.fromBuffer(value),
        ($0.UpdateTtlResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ItemGetTtlRequest_, $0.ItemGetTtlResponse_>(
        'ItemGetTtl',
        itemGetTtl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ItemGetTtlRequest_.fromBuffer(value),
        ($0.ItemGetTtlResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ItemGetTypeRequest_, $0.ItemGetTypeResponse_>(
        'ItemGetType',
        itemGetType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ItemGetTypeRequest_.fromBuffer(value),
        ($0.ItemGetTypeResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DictionaryGetRequest_, $0.DictionaryGetResponse_>(
        'DictionaryGet',
        dictionaryGet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DictionaryGetRequest_.fromBuffer(value),
        ($0.DictionaryGetResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DictionaryFetchRequest_, $0.DictionaryFetchResponse_>(
        'DictionaryFetch',
        dictionaryFetch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DictionaryFetchRequest_.fromBuffer(value),
        ($0.DictionaryFetchResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DictionarySetRequest_, $0.DictionarySetResponse_>(
        'DictionarySet',
        dictionarySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DictionarySetRequest_.fromBuffer(value),
        ($0.DictionarySetResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DictionaryIncrementRequest_, $0.DictionaryIncrementResponse_>(
        'DictionaryIncrement',
        dictionaryIncrement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DictionaryIncrementRequest_.fromBuffer(value),
        ($0.DictionaryIncrementResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DictionaryDeleteRequest_, $0.DictionaryDeleteResponse_>(
        'DictionaryDelete',
        dictionaryDelete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DictionaryDeleteRequest_.fromBuffer(value),
        ($0.DictionaryDeleteResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DictionaryLengthRequest_, $0.DictionaryLengthResponse_>(
        'DictionaryLength',
        dictionaryLength_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DictionaryLengthRequest_.fromBuffer(value),
        ($0.DictionaryLengthResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetFetchRequest_, $0.SetFetchResponse_>(
        'SetFetch',
        setFetch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetFetchRequest_.fromBuffer(value),
        ($0.SetFetchResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetUnionRequest_, $0.SetUnionResponse_>(
        'SetUnion',
        setUnion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetUnionRequest_.fromBuffer(value),
        ($0.SetUnionResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetDifferenceRequest_, $0.SetDifferenceResponse_>(
        'SetDifference',
        setDifference_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetDifferenceRequest_.fromBuffer(value),
        ($0.SetDifferenceResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetContainsRequest_, $0.SetContainsResponse_>(
        'SetContains',
        setContains_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetContainsRequest_.fromBuffer(value),
        ($0.SetContainsResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetLengthRequest_, $0.SetLengthResponse_>(
        'SetLength',
        setLength_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetLengthRequest_.fromBuffer(value),
        ($0.SetLengthResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetPopRequest_, $0.SetPopResponse_>(
        'SetPop',
        setPop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetPopRequest_.fromBuffer(value),
        ($0.SetPopResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPushFrontRequest_, $0.ListPushFrontResponse_>(
        'ListPushFront',
        listPushFront_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPushFrontRequest_.fromBuffer(value),
        ($0.ListPushFrontResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPushBackRequest_, $0.ListPushBackResponse_>(
        'ListPushBack',
        listPushBack_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPushBackRequest_.fromBuffer(value),
        ($0.ListPushBackResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPopFrontRequest_, $0.ListPopFrontResponse_>(
        'ListPopFront',
        listPopFront_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPopFrontRequest_.fromBuffer(value),
        ($0.ListPopFrontResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPopBackRequest_, $0.ListPopBackResponse_>(
        'ListPopBack',
        listPopBack_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPopBackRequest_.fromBuffer(value),
        ($0.ListPopBackResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListEraseRequest_, $0.ListEraseResponse_>(
        'ListErase',
        listErase_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListEraseRequest_.fromBuffer(value),
        ($0.ListEraseResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRemoveRequest_, $0.ListRemoveResponse_>(
        'ListRemove',
        listRemove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListRemoveRequest_.fromBuffer(value),
        ($0.ListRemoveResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListFetchRequest_, $0.ListFetchResponse_>(
        'ListFetch',
        listFetch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListFetchRequest_.fromBuffer(value),
        ($0.ListFetchResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListLengthRequest_, $0.ListLengthResponse_>(
        'ListLength',
        listLength_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListLengthRequest_.fromBuffer(value),
        ($0.ListLengthResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListConcatenateFrontRequest_, $0.ListConcatenateFrontResponse_>(
        'ListConcatenateFront',
        listConcatenateFront_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListConcatenateFrontRequest_.fromBuffer(value),
        ($0.ListConcatenateFrontResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListConcatenateBackRequest_, $0.ListConcatenateBackResponse_>(
        'ListConcatenateBack',
        listConcatenateBack_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListConcatenateBackRequest_.fromBuffer(value),
        ($0.ListConcatenateBackResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRetainRequest_, $0.ListRetainResponse_>(
        'ListRetain',
        listRetain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListRetainRequest_.fromBuffer(value),
        ($0.ListRetainResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetPutRequest_, $0.SortedSetPutResponse_>(
        'SortedSetPut',
        sortedSetPut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetPutRequest_.fromBuffer(value),
        ($0.SortedSetPutResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetFetchRequest_, $0.SortedSetFetchResponse_>(
        'SortedSetFetch',
        sortedSetFetch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetFetchRequest_.fromBuffer(value),
        ($0.SortedSetFetchResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetGetScoreRequest_, $0.SortedSetGetScoreResponse_>(
        'SortedSetGetScore',
        sortedSetGetScore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetGetScoreRequest_.fromBuffer(value),
        ($0.SortedSetGetScoreResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetRemoveRequest_, $0.SortedSetRemoveResponse_>(
        'SortedSetRemove',
        sortedSetRemove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetRemoveRequest_.fromBuffer(value),
        ($0.SortedSetRemoveResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetIncrementRequest_, $0.SortedSetIncrementResponse_>(
        'SortedSetIncrement',
        sortedSetIncrement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetIncrementRequest_.fromBuffer(value),
        ($0.SortedSetIncrementResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetGetRankRequest_, $0.SortedSetGetRankResponse_>(
        'SortedSetGetRank',
        sortedSetGetRank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetGetRankRequest_.fromBuffer(value),
        ($0.SortedSetGetRankResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetLengthRequest_, $0.SortedSetLengthResponse_>(
        'SortedSetLength',
        sortedSetLength_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetLengthRequest_.fromBuffer(value),
        ($0.SortedSetLengthResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SortedSetLengthByScoreRequest_, $0.SortedSetLengthByScoreResponse_>(
        'SortedSetLengthByScore',
        sortedSetLengthByScore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SortedSetLengthByScoreRequest_.fromBuffer(value),
        ($0.SortedSetLengthByScoreResponse_ value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetResponse_> get_Pre($grpc.ServiceCall call, $async.Future<$0.GetRequest_> request) async {
    return get(call, await request);
  }

  $async.Future<$0.SetResponse_> set_Pre($grpc.ServiceCall call, $async.Future<$0.SetRequest_> request) async {
    return set(call, await request);
  }

  $async.Future<$0.SetIfNotExistsResponse_> setIfNotExists_Pre($grpc.ServiceCall call, $async.Future<$0.SetIfNotExistsRequest_> request) async {
    return setIfNotExists(call, await request);
  }

  $async.Future<$0.DeleteResponse_> delete_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteRequest_> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.KeysExistResponse_> keysExist_Pre($grpc.ServiceCall call, $async.Future<$0.KeysExistRequest_> request) async {
    return keysExist(call, await request);
  }

  $async.Future<$0.IncrementResponse_> increment_Pre($grpc.ServiceCall call, $async.Future<$0.IncrementRequest_> request) async {
    return increment(call, await request);
  }

  $async.Future<$0.UpdateTtlResponse_> updateTtl_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateTtlRequest_> request) async {
    return updateTtl(call, await request);
  }

  $async.Future<$0.ItemGetTtlResponse_> itemGetTtl_Pre($grpc.ServiceCall call, $async.Future<$0.ItemGetTtlRequest_> request) async {
    return itemGetTtl(call, await request);
  }

  $async.Future<$0.ItemGetTypeResponse_> itemGetType_Pre($grpc.ServiceCall call, $async.Future<$0.ItemGetTypeRequest_> request) async {
    return itemGetType(call, await request);
  }

  $async.Future<$0.DictionaryGetResponse_> dictionaryGet_Pre($grpc.ServiceCall call, $async.Future<$0.DictionaryGetRequest_> request) async {
    return dictionaryGet(call, await request);
  }

  $async.Future<$0.DictionaryFetchResponse_> dictionaryFetch_Pre($grpc.ServiceCall call, $async.Future<$0.DictionaryFetchRequest_> request) async {
    return dictionaryFetch(call, await request);
  }

  $async.Future<$0.DictionarySetResponse_> dictionarySet_Pre($grpc.ServiceCall call, $async.Future<$0.DictionarySetRequest_> request) async {
    return dictionarySet(call, await request);
  }

  $async.Future<$0.DictionaryIncrementResponse_> dictionaryIncrement_Pre($grpc.ServiceCall call, $async.Future<$0.DictionaryIncrementRequest_> request) async {
    return dictionaryIncrement(call, await request);
  }

  $async.Future<$0.DictionaryDeleteResponse_> dictionaryDelete_Pre($grpc.ServiceCall call, $async.Future<$0.DictionaryDeleteRequest_> request) async {
    return dictionaryDelete(call, await request);
  }

  $async.Future<$0.DictionaryLengthResponse_> dictionaryLength_Pre($grpc.ServiceCall call, $async.Future<$0.DictionaryLengthRequest_> request) async {
    return dictionaryLength(call, await request);
  }

  $async.Future<$0.SetFetchResponse_> setFetch_Pre($grpc.ServiceCall call, $async.Future<$0.SetFetchRequest_> request) async {
    return setFetch(call, await request);
  }

  $async.Future<$0.SetUnionResponse_> setUnion_Pre($grpc.ServiceCall call, $async.Future<$0.SetUnionRequest_> request) async {
    return setUnion(call, await request);
  }

  $async.Future<$0.SetDifferenceResponse_> setDifference_Pre($grpc.ServiceCall call, $async.Future<$0.SetDifferenceRequest_> request) async {
    return setDifference(call, await request);
  }

  $async.Future<$0.SetContainsResponse_> setContains_Pre($grpc.ServiceCall call, $async.Future<$0.SetContainsRequest_> request) async {
    return setContains(call, await request);
  }

  $async.Future<$0.SetLengthResponse_> setLength_Pre($grpc.ServiceCall call, $async.Future<$0.SetLengthRequest_> request) async {
    return setLength(call, await request);
  }

  $async.Future<$0.SetPopResponse_> setPop_Pre($grpc.ServiceCall call, $async.Future<$0.SetPopRequest_> request) async {
    return setPop(call, await request);
  }

  $async.Future<$0.ListPushFrontResponse_> listPushFront_Pre($grpc.ServiceCall call, $async.Future<$0.ListPushFrontRequest_> request) async {
    return listPushFront(call, await request);
  }

  $async.Future<$0.ListPushBackResponse_> listPushBack_Pre($grpc.ServiceCall call, $async.Future<$0.ListPushBackRequest_> request) async {
    return listPushBack(call, await request);
  }

  $async.Future<$0.ListPopFrontResponse_> listPopFront_Pre($grpc.ServiceCall call, $async.Future<$0.ListPopFrontRequest_> request) async {
    return listPopFront(call, await request);
  }

  $async.Future<$0.ListPopBackResponse_> listPopBack_Pre($grpc.ServiceCall call, $async.Future<$0.ListPopBackRequest_> request) async {
    return listPopBack(call, await request);
  }

  $async.Future<$0.ListEraseResponse_> listErase_Pre($grpc.ServiceCall call, $async.Future<$0.ListEraseRequest_> request) async {
    return listErase(call, await request);
  }

  $async.Future<$0.ListRemoveResponse_> listRemove_Pre($grpc.ServiceCall call, $async.Future<$0.ListRemoveRequest_> request) async {
    return listRemove(call, await request);
  }

  $async.Future<$0.ListFetchResponse_> listFetch_Pre($grpc.ServiceCall call, $async.Future<$0.ListFetchRequest_> request) async {
    return listFetch(call, await request);
  }

  $async.Future<$0.ListLengthResponse_> listLength_Pre($grpc.ServiceCall call, $async.Future<$0.ListLengthRequest_> request) async {
    return listLength(call, await request);
  }

  $async.Future<$0.ListConcatenateFrontResponse_> listConcatenateFront_Pre($grpc.ServiceCall call, $async.Future<$0.ListConcatenateFrontRequest_> request) async {
    return listConcatenateFront(call, await request);
  }

  $async.Future<$0.ListConcatenateBackResponse_> listConcatenateBack_Pre($grpc.ServiceCall call, $async.Future<$0.ListConcatenateBackRequest_> request) async {
    return listConcatenateBack(call, await request);
  }

  $async.Future<$0.ListRetainResponse_> listRetain_Pre($grpc.ServiceCall call, $async.Future<$0.ListRetainRequest_> request) async {
    return listRetain(call, await request);
  }

  $async.Future<$0.SortedSetPutResponse_> sortedSetPut_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetPutRequest_> request) async {
    return sortedSetPut(call, await request);
  }

  $async.Future<$0.SortedSetFetchResponse_> sortedSetFetch_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetFetchRequest_> request) async {
    return sortedSetFetch(call, await request);
  }

  $async.Future<$0.SortedSetGetScoreResponse_> sortedSetGetScore_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetGetScoreRequest_> request) async {
    return sortedSetGetScore(call, await request);
  }

  $async.Future<$0.SortedSetRemoveResponse_> sortedSetRemove_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetRemoveRequest_> request) async {
    return sortedSetRemove(call, await request);
  }

  $async.Future<$0.SortedSetIncrementResponse_> sortedSetIncrement_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetIncrementRequest_> request) async {
    return sortedSetIncrement(call, await request);
  }

  $async.Future<$0.SortedSetGetRankResponse_> sortedSetGetRank_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetGetRankRequest_> request) async {
    return sortedSetGetRank(call, await request);
  }

  $async.Future<$0.SortedSetLengthResponse_> sortedSetLength_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetLengthRequest_> request) async {
    return sortedSetLength(call, await request);
  }

  $async.Future<$0.SortedSetLengthByScoreResponse_> sortedSetLengthByScore_Pre($grpc.ServiceCall call, $async.Future<$0.SortedSetLengthByScoreRequest_> request) async {
    return sortedSetLengthByScore(call, await request);
  }

  $async.Future<$0.GetResponse_> get($grpc.ServiceCall call, $0.GetRequest_ request);
  $async.Future<$0.SetResponse_> set($grpc.ServiceCall call, $0.SetRequest_ request);
  $async.Future<$0.SetIfNotExistsResponse_> setIfNotExists($grpc.ServiceCall call, $0.SetIfNotExistsRequest_ request);
  $async.Future<$0.DeleteResponse_> delete($grpc.ServiceCall call, $0.DeleteRequest_ request);
  $async.Future<$0.KeysExistResponse_> keysExist($grpc.ServiceCall call, $0.KeysExistRequest_ request);
  $async.Future<$0.IncrementResponse_> increment($grpc.ServiceCall call, $0.IncrementRequest_ request);
  $async.Future<$0.UpdateTtlResponse_> updateTtl($grpc.ServiceCall call, $0.UpdateTtlRequest_ request);
  $async.Future<$0.ItemGetTtlResponse_> itemGetTtl($grpc.ServiceCall call, $0.ItemGetTtlRequest_ request);
  $async.Future<$0.ItemGetTypeResponse_> itemGetType($grpc.ServiceCall call, $0.ItemGetTypeRequest_ request);
  $async.Future<$0.DictionaryGetResponse_> dictionaryGet($grpc.ServiceCall call, $0.DictionaryGetRequest_ request);
  $async.Future<$0.DictionaryFetchResponse_> dictionaryFetch($grpc.ServiceCall call, $0.DictionaryFetchRequest_ request);
  $async.Future<$0.DictionarySetResponse_> dictionarySet($grpc.ServiceCall call, $0.DictionarySetRequest_ request);
  $async.Future<$0.DictionaryIncrementResponse_> dictionaryIncrement($grpc.ServiceCall call, $0.DictionaryIncrementRequest_ request);
  $async.Future<$0.DictionaryDeleteResponse_> dictionaryDelete($grpc.ServiceCall call, $0.DictionaryDeleteRequest_ request);
  $async.Future<$0.DictionaryLengthResponse_> dictionaryLength($grpc.ServiceCall call, $0.DictionaryLengthRequest_ request);
  $async.Future<$0.SetFetchResponse_> setFetch($grpc.ServiceCall call, $0.SetFetchRequest_ request);
  $async.Future<$0.SetUnionResponse_> setUnion($grpc.ServiceCall call, $0.SetUnionRequest_ request);
  $async.Future<$0.SetDifferenceResponse_> setDifference($grpc.ServiceCall call, $0.SetDifferenceRequest_ request);
  $async.Future<$0.SetContainsResponse_> setContains($grpc.ServiceCall call, $0.SetContainsRequest_ request);
  $async.Future<$0.SetLengthResponse_> setLength($grpc.ServiceCall call, $0.SetLengthRequest_ request);
  $async.Future<$0.SetPopResponse_> setPop($grpc.ServiceCall call, $0.SetPopRequest_ request);
  $async.Future<$0.ListPushFrontResponse_> listPushFront($grpc.ServiceCall call, $0.ListPushFrontRequest_ request);
  $async.Future<$0.ListPushBackResponse_> listPushBack($grpc.ServiceCall call, $0.ListPushBackRequest_ request);
  $async.Future<$0.ListPopFrontResponse_> listPopFront($grpc.ServiceCall call, $0.ListPopFrontRequest_ request);
  $async.Future<$0.ListPopBackResponse_> listPopBack($grpc.ServiceCall call, $0.ListPopBackRequest_ request);
  $async.Future<$0.ListEraseResponse_> listErase($grpc.ServiceCall call, $0.ListEraseRequest_ request);
  $async.Future<$0.ListRemoveResponse_> listRemove($grpc.ServiceCall call, $0.ListRemoveRequest_ request);
  $async.Future<$0.ListFetchResponse_> listFetch($grpc.ServiceCall call, $0.ListFetchRequest_ request);
  $async.Future<$0.ListLengthResponse_> listLength($grpc.ServiceCall call, $0.ListLengthRequest_ request);
  $async.Future<$0.ListConcatenateFrontResponse_> listConcatenateFront($grpc.ServiceCall call, $0.ListConcatenateFrontRequest_ request);
  $async.Future<$0.ListConcatenateBackResponse_> listConcatenateBack($grpc.ServiceCall call, $0.ListConcatenateBackRequest_ request);
  $async.Future<$0.ListRetainResponse_> listRetain($grpc.ServiceCall call, $0.ListRetainRequest_ request);
  $async.Future<$0.SortedSetPutResponse_> sortedSetPut($grpc.ServiceCall call, $0.SortedSetPutRequest_ request);
  $async.Future<$0.SortedSetFetchResponse_> sortedSetFetch($grpc.ServiceCall call, $0.SortedSetFetchRequest_ request);
  $async.Future<$0.SortedSetGetScoreResponse_> sortedSetGetScore($grpc.ServiceCall call, $0.SortedSetGetScoreRequest_ request);
  $async.Future<$0.SortedSetRemoveResponse_> sortedSetRemove($grpc.ServiceCall call, $0.SortedSetRemoveRequest_ request);
  $async.Future<$0.SortedSetIncrementResponse_> sortedSetIncrement($grpc.ServiceCall call, $0.SortedSetIncrementRequest_ request);
  $async.Future<$0.SortedSetGetRankResponse_> sortedSetGetRank($grpc.ServiceCall call, $0.SortedSetGetRankRequest_ request);
  $async.Future<$0.SortedSetLengthResponse_> sortedSetLength($grpc.ServiceCall call, $0.SortedSetLengthRequest_ request);
  $async.Future<$0.SortedSetLengthByScoreResponse_> sortedSetLengthByScore($grpc.ServiceCall call, $0.SortedSetLengthByScoreRequest_ request);
}
