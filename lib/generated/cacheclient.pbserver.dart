//
//  Generated code. Do not modify.
//  source: cacheclient.proto
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

import 'cacheclient.pb.dart' as $0;
import 'cacheclient.pbjson.dart';

export 'cacheclient.pb.dart';

abstract class ScsServiceBase extends $pb.GeneratedService {
  $async.Future<$0.GetResponse_> get($pb.ServerContext ctx, $0.GetRequest_ request);
  $async.Future<$0.SetResponse_> set($pb.ServerContext ctx, $0.SetRequest_ request);
  $async.Future<$0.SetIfNotExistsResponse_> setIfNotExists($pb.ServerContext ctx, $0.SetIfNotExistsRequest_ request);
  $async.Future<$0.DeleteResponse_> delete($pb.ServerContext ctx, $0.DeleteRequest_ request);
  $async.Future<$0.KeysExistResponse_> keysExist($pb.ServerContext ctx, $0.KeysExistRequest_ request);
  $async.Future<$0.IncrementResponse_> increment($pb.ServerContext ctx, $0.IncrementRequest_ request);
  $async.Future<$0.UpdateTtlResponse_> updateTtl($pb.ServerContext ctx, $0.UpdateTtlRequest_ request);
  $async.Future<$0.ItemGetTtlResponse_> itemGetTtl($pb.ServerContext ctx, $0.ItemGetTtlRequest_ request);
  $async.Future<$0.ItemGetTypeResponse_> itemGetType($pb.ServerContext ctx, $0.ItemGetTypeRequest_ request);
  $async.Future<$0.DictionaryGetResponse_> dictionaryGet($pb.ServerContext ctx, $0.DictionaryGetRequest_ request);
  $async.Future<$0.DictionaryFetchResponse_> dictionaryFetch($pb.ServerContext ctx, $0.DictionaryFetchRequest_ request);
  $async.Future<$0.DictionarySetResponse_> dictionarySet($pb.ServerContext ctx, $0.DictionarySetRequest_ request);
  $async.Future<$0.DictionaryIncrementResponse_> dictionaryIncrement($pb.ServerContext ctx, $0.DictionaryIncrementRequest_ request);
  $async.Future<$0.DictionaryDeleteResponse_> dictionaryDelete($pb.ServerContext ctx, $0.DictionaryDeleteRequest_ request);
  $async.Future<$0.DictionaryLengthResponse_> dictionaryLength($pb.ServerContext ctx, $0.DictionaryLengthRequest_ request);
  $async.Future<$0.SetFetchResponse_> setFetch($pb.ServerContext ctx, $0.SetFetchRequest_ request);
  $async.Future<$0.SetUnionResponse_> setUnion($pb.ServerContext ctx, $0.SetUnionRequest_ request);
  $async.Future<$0.SetDifferenceResponse_> setDifference($pb.ServerContext ctx, $0.SetDifferenceRequest_ request);
  $async.Future<$0.SetContainsResponse_> setContains($pb.ServerContext ctx, $0.SetContainsRequest_ request);
  $async.Future<$0.SetLengthResponse_> setLength($pb.ServerContext ctx, $0.SetLengthRequest_ request);
  $async.Future<$0.SetPopResponse_> setPop($pb.ServerContext ctx, $0.SetPopRequest_ request);
  $async.Future<$0.ListPushFrontResponse_> listPushFront($pb.ServerContext ctx, $0.ListPushFrontRequest_ request);
  $async.Future<$0.ListPushBackResponse_> listPushBack($pb.ServerContext ctx, $0.ListPushBackRequest_ request);
  $async.Future<$0.ListPopFrontResponse_> listPopFront($pb.ServerContext ctx, $0.ListPopFrontRequest_ request);
  $async.Future<$0.ListPopBackResponse_> listPopBack($pb.ServerContext ctx, $0.ListPopBackRequest_ request);
  $async.Future<$0.ListEraseResponse_> listErase($pb.ServerContext ctx, $0.ListEraseRequest_ request);
  $async.Future<$0.ListRemoveResponse_> listRemove($pb.ServerContext ctx, $0.ListRemoveRequest_ request);
  $async.Future<$0.ListFetchResponse_> listFetch($pb.ServerContext ctx, $0.ListFetchRequest_ request);
  $async.Future<$0.ListLengthResponse_> listLength($pb.ServerContext ctx, $0.ListLengthRequest_ request);
  $async.Future<$0.ListConcatenateFrontResponse_> listConcatenateFront($pb.ServerContext ctx, $0.ListConcatenateFrontRequest_ request);
  $async.Future<$0.ListConcatenateBackResponse_> listConcatenateBack($pb.ServerContext ctx, $0.ListConcatenateBackRequest_ request);
  $async.Future<$0.ListRetainResponse_> listRetain($pb.ServerContext ctx, $0.ListRetainRequest_ request);
  $async.Future<$0.SortedSetPutResponse_> sortedSetPut($pb.ServerContext ctx, $0.SortedSetPutRequest_ request);
  $async.Future<$0.SortedSetFetchResponse_> sortedSetFetch($pb.ServerContext ctx, $0.SortedSetFetchRequest_ request);
  $async.Future<$0.SortedSetGetScoreResponse_> sortedSetGetScore($pb.ServerContext ctx, $0.SortedSetGetScoreRequest_ request);
  $async.Future<$0.SortedSetRemoveResponse_> sortedSetRemove($pb.ServerContext ctx, $0.SortedSetRemoveRequest_ request);
  $async.Future<$0.SortedSetIncrementResponse_> sortedSetIncrement($pb.ServerContext ctx, $0.SortedSetIncrementRequest_ request);
  $async.Future<$0.SortedSetGetRankResponse_> sortedSetGetRank($pb.ServerContext ctx, $0.SortedSetGetRankRequest_ request);
  $async.Future<$0.SortedSetLengthResponse_> sortedSetLength($pb.ServerContext ctx, $0.SortedSetLengthRequest_ request);
  $async.Future<$0.SortedSetLengthByScoreResponse_> sortedSetLengthByScore($pb.ServerContext ctx, $0.SortedSetLengthByScoreRequest_ request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Get': return $0.GetRequest_();
      case 'Set': return $0.SetRequest_();
      case 'SetIfNotExists': return $0.SetIfNotExistsRequest_();
      case 'Delete': return $0.DeleteRequest_();
      case 'KeysExist': return $0.KeysExistRequest_();
      case 'Increment': return $0.IncrementRequest_();
      case 'UpdateTtl': return $0.UpdateTtlRequest_();
      case 'ItemGetTtl': return $0.ItemGetTtlRequest_();
      case 'ItemGetType': return $0.ItemGetTypeRequest_();
      case 'DictionaryGet': return $0.DictionaryGetRequest_();
      case 'DictionaryFetch': return $0.DictionaryFetchRequest_();
      case 'DictionarySet': return $0.DictionarySetRequest_();
      case 'DictionaryIncrement': return $0.DictionaryIncrementRequest_();
      case 'DictionaryDelete': return $0.DictionaryDeleteRequest_();
      case 'DictionaryLength': return $0.DictionaryLengthRequest_();
      case 'SetFetch': return $0.SetFetchRequest_();
      case 'SetUnion': return $0.SetUnionRequest_();
      case 'SetDifference': return $0.SetDifferenceRequest_();
      case 'SetContains': return $0.SetContainsRequest_();
      case 'SetLength': return $0.SetLengthRequest_();
      case 'SetPop': return $0.SetPopRequest_();
      case 'ListPushFront': return $0.ListPushFrontRequest_();
      case 'ListPushBack': return $0.ListPushBackRequest_();
      case 'ListPopFront': return $0.ListPopFrontRequest_();
      case 'ListPopBack': return $0.ListPopBackRequest_();
      case 'ListErase': return $0.ListEraseRequest_();
      case 'ListRemove': return $0.ListRemoveRequest_();
      case 'ListFetch': return $0.ListFetchRequest_();
      case 'ListLength': return $0.ListLengthRequest_();
      case 'ListConcatenateFront': return $0.ListConcatenateFrontRequest_();
      case 'ListConcatenateBack': return $0.ListConcatenateBackRequest_();
      case 'ListRetain': return $0.ListRetainRequest_();
      case 'SortedSetPut': return $0.SortedSetPutRequest_();
      case 'SortedSetFetch': return $0.SortedSetFetchRequest_();
      case 'SortedSetGetScore': return $0.SortedSetGetScoreRequest_();
      case 'SortedSetRemove': return $0.SortedSetRemoveRequest_();
      case 'SortedSetIncrement': return $0.SortedSetIncrementRequest_();
      case 'SortedSetGetRank': return $0.SortedSetGetRankRequest_();
      case 'SortedSetLength': return $0.SortedSetLengthRequest_();
      case 'SortedSetLengthByScore': return $0.SortedSetLengthByScoreRequest_();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Get': return this.get(ctx, request as $0.GetRequest_);
      case 'Set': return this.set(ctx, request as $0.SetRequest_);
      case 'SetIfNotExists': return this.setIfNotExists(ctx, request as $0.SetIfNotExistsRequest_);
      case 'Delete': return this.delete(ctx, request as $0.DeleteRequest_);
      case 'KeysExist': return this.keysExist(ctx, request as $0.KeysExistRequest_);
      case 'Increment': return this.increment(ctx, request as $0.IncrementRequest_);
      case 'UpdateTtl': return this.updateTtl(ctx, request as $0.UpdateTtlRequest_);
      case 'ItemGetTtl': return this.itemGetTtl(ctx, request as $0.ItemGetTtlRequest_);
      case 'ItemGetType': return this.itemGetType(ctx, request as $0.ItemGetTypeRequest_);
      case 'DictionaryGet': return this.dictionaryGet(ctx, request as $0.DictionaryGetRequest_);
      case 'DictionaryFetch': return this.dictionaryFetch(ctx, request as $0.DictionaryFetchRequest_);
      case 'DictionarySet': return this.dictionarySet(ctx, request as $0.DictionarySetRequest_);
      case 'DictionaryIncrement': return this.dictionaryIncrement(ctx, request as $0.DictionaryIncrementRequest_);
      case 'DictionaryDelete': return this.dictionaryDelete(ctx, request as $0.DictionaryDeleteRequest_);
      case 'DictionaryLength': return this.dictionaryLength(ctx, request as $0.DictionaryLengthRequest_);
      case 'SetFetch': return this.setFetch(ctx, request as $0.SetFetchRequest_);
      case 'SetUnion': return this.setUnion(ctx, request as $0.SetUnionRequest_);
      case 'SetDifference': return this.setDifference(ctx, request as $0.SetDifferenceRequest_);
      case 'SetContains': return this.setContains(ctx, request as $0.SetContainsRequest_);
      case 'SetLength': return this.setLength(ctx, request as $0.SetLengthRequest_);
      case 'SetPop': return this.setPop(ctx, request as $0.SetPopRequest_);
      case 'ListPushFront': return this.listPushFront(ctx, request as $0.ListPushFrontRequest_);
      case 'ListPushBack': return this.listPushBack(ctx, request as $0.ListPushBackRequest_);
      case 'ListPopFront': return this.listPopFront(ctx, request as $0.ListPopFrontRequest_);
      case 'ListPopBack': return this.listPopBack(ctx, request as $0.ListPopBackRequest_);
      case 'ListErase': return this.listErase(ctx, request as $0.ListEraseRequest_);
      case 'ListRemove': return this.listRemove(ctx, request as $0.ListRemoveRequest_);
      case 'ListFetch': return this.listFetch(ctx, request as $0.ListFetchRequest_);
      case 'ListLength': return this.listLength(ctx, request as $0.ListLengthRequest_);
      case 'ListConcatenateFront': return this.listConcatenateFront(ctx, request as $0.ListConcatenateFrontRequest_);
      case 'ListConcatenateBack': return this.listConcatenateBack(ctx, request as $0.ListConcatenateBackRequest_);
      case 'ListRetain': return this.listRetain(ctx, request as $0.ListRetainRequest_);
      case 'SortedSetPut': return this.sortedSetPut(ctx, request as $0.SortedSetPutRequest_);
      case 'SortedSetFetch': return this.sortedSetFetch(ctx, request as $0.SortedSetFetchRequest_);
      case 'SortedSetGetScore': return this.sortedSetGetScore(ctx, request as $0.SortedSetGetScoreRequest_);
      case 'SortedSetRemove': return this.sortedSetRemove(ctx, request as $0.SortedSetRemoveRequest_);
      case 'SortedSetIncrement': return this.sortedSetIncrement(ctx, request as $0.SortedSetIncrementRequest_);
      case 'SortedSetGetRank': return this.sortedSetGetRank(ctx, request as $0.SortedSetGetRankRequest_);
      case 'SortedSetLength': return this.sortedSetLength(ctx, request as $0.SortedSetLengthRequest_);
      case 'SortedSetLengthByScore': return this.sortedSetLengthByScore(ctx, request as $0.SortedSetLengthByScoreRequest_);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ScsServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ScsServiceBase$messageJson;
}

