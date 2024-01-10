import 'dart:convert';

import 'package:momento/generated/cacheclient.pbgrpc.dart';
import 'package:momento/momento.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

abstract class AbstractDataClient {
  // Unary RPCs
  Future<GetResponse> get(String cacheName, Value key);

  Future<SetResponse> set(String cacheName, Value key, Value value,
      {Duration? ttl});

  Future<DeleteResponse> delete(String cacheName, Value key);

  // List Collection RPCs
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListFetchResponse> listFetch(String cacheName, String listName,
      {int? startIndex, int? endIndex});
  Future<ListLengthResponse> listLength(String cacheName, String listName);
  Future<ListPopBackResponse> listPopBack(String cacheName, String listName);
  Future<ListPopFrontResponse> listPopFront(String cacheName, String listName);

  Future<ListPushBackResponse> listPushBack(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateFrontToSize});

  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateBackToSize});

  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, Value value);

  Future<ListRetainResponse> listRetain(String cacheName, String listName,
      {int? startIndex, int? endIndex, CollectionTtl? ttl});
  Future<void> close();
}

class DataClient implements AbstractDataClient {
  late ClientChannel _channel;
  late ScsClient _client;
  final CacheClientConfiguration _configuration;
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
          return GetMiss(
              message: "Miss for key '${key.toUtf8()}' in cache '$cacheName'");
        case ECacheResult.Hit:
          return GetHit(resp.cacheBody,
              message: "Hit for key '${key.toUtf8()}' in cache '$cacheName'");
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
      return SetSuccess(
          message:
              "Successfully set key '${key.toUtf8()}' and value '${value.toUtf8()}' in cache '$cacheName'");
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
      return DeleteSuccess(
          message:
              "Successfully deleted key '${key.toUtf8()}' in cache '$cacheName'");
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
  Future<ListConcatenateBackResponse> listConcatenateBack(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateFrontToSize}) async {
    try {
      var request = ListConcatenateBackRequest_();
      request.listName = utf8.encode(listName);
      request.truncateFrontToSize = truncateFrontToSize ?? 0;
      request.values.addAll(values.map((e) => e.toBinary()));
      CollectionTtl actualTtl = ttl ?? CollectionTtl.fromCacheTtl();
      request.ttlMilliseconds =
          Int64(actualTtl.ttlMilliseconds() ?? _defaultTtl.inMilliseconds);
      request.refreshTtl = actualTtl.refreshTtl();
      var response = await _client.listConcatenateBack(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return ListConcatenateBackSuccess(response.listLength,
          message:
              "Concatenated ${values.length} values to back of list '$listName' in cache '$cacheName'");
    } catch (e) {
      if (e is GrpcError) {
        return ListConcatenateBackError(grpcStatusToSdkException(e));
      } else {
        return ListConcatenateBackError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListConcatenateFrontResponse> listConcatenateFront(
      String cacheName, String listName, List<Value> values,
      {CollectionTtl? ttl, int? truncateBackToSize}) async {
    try {
      var request = ListConcatenateFrontRequest_();
      request.listName = utf8.encode(listName);
      request.truncateBackToSize = truncateBackToSize ?? 0;
      request.values.addAll(values.map((e) => e.toBinary()));
      CollectionTtl actualTtl = ttl ?? CollectionTtl.fromCacheTtl();
      request.ttlMilliseconds =
          Int64(actualTtl.ttlMilliseconds() ?? _defaultTtl.inMilliseconds);
      request.refreshTtl = actualTtl.refreshTtl();
      var response = await _client.listConcatenateFront(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return ListConcatenateFrontSuccess(response.listLength,
          message:
              "Concatenated ${values.length} values to front of list '$listName' in cache '$cacheName'");
    } catch (e) {
      if (e is GrpcError) {
        return ListConcatenateFrontError(grpcStatusToSdkException(e));
      } else {
        return ListConcatenateFrontError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListFetchResponse> listFetch(String cacheName, String listName,
      {int? startIndex, int? endIndex}) async {
    try {
      var request = ListFetchRequest_();
      request.listName = utf8.encode(listName);

      if (startIndex != null) {
        request.inclusiveStart = startIndex;
      } else {
        request.unboundedStart = Unbounded_();
      }
      if (endIndex != null) {
        request.exclusiveEnd = endIndex;
      } else {
        request.unboundedEnd = Unbounded_();
      }
      var response = await _client.listFetch(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      switch (response.whichList()) {
        case ListFetchResponse__List.found:
          return ListFetchHit(response.found.values,
              message: "Found list '$listName' in cache '$cacheName'");
        case ListFetchResponse__List.missing:
          return ListFetchMiss(
              message: "List '$listName' not found in cache '$cacheName'");
        default:
          return ListFetchError(
              UnknownException("Unexpected error: $response", null, null));
      }
    } catch (e) {
      if (e is GrpcError) {
        return ListFetchError(grpcStatusToSdkException(e));
      } else {
        return ListFetchError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListLengthResponse> listLength(
      String cacheName, String listName) async {
    try {
      var request = ListLengthRequest_();
      request.listName = utf8.encode(listName);
      var response = await _client.listLength(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      switch (response.whichList()) {
        case ListLengthResponse__List.found:
          return ListLengthHit(response.found.length,
              message:
                  "List '$listName' in cache '$cacheName' has length ${response.found.length}");
        case ListLengthResponse__List.missing:
          return ListLengthMiss(
              message: "List '$listName' not found in cache '$cacheName'");
        default:
          return ListLengthError(
              UnknownException("Unexpected error: $response", null, null));
      }
    } catch (e) {
      if (e is GrpcError) {
        return ListLengthError(grpcStatusToSdkException(e));
      } else {
        return ListLengthError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListPopBackResponse> listPopBack(
      String cacheName, String listName) async {
    try {
      var request = ListPopBackRequest_();
      request.listName = utf8.encode(listName);
      var response = await _client.listPopBack(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      switch (response.whichList()) {
        case ListPopBackResponse__List.found:
          return ListPopBackHit(response.found.back,
              message:
                  "Popped back value '${response.found.back}' from list '$listName' in cache '$cacheName'");
        case ListPopBackResponse__List.missing:
          return ListPopBackMiss(
              message: "List '$listName' not found in cache '$cacheName'");
        default:
          return ListPopBackError(
              UnknownException("Unexpected error: $response", null, null));
      }
    } catch (e) {
      if (e is GrpcError) {
        return ListPopBackError(grpcStatusToSdkException(e));
      } else {
        return ListPopBackError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListPopFrontResponse> listPopFront(
      String cacheName, String listName) async {
    try {
      var request = ListPopFrontRequest_();
      request.listName = utf8.encode(listName);
      var response = await _client.listPopFront(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      switch (response.whichList()) {
        case ListPopFrontResponse__List.found:
          return ListPopFrontHit(response.found.front,
              message:
                  "Popped front value '${response.found.front}' from list '$listName' in cache '$cacheName'");
        case ListPopFrontResponse__List.missing:
          return ListPopFrontMiss(
              message: "List '$listName' not found in cache '$cacheName'");
        default:
          return ListPopFrontError(
              UnknownException("Unexpected error: $response", null, null));
      }
    } catch (e) {
      if (e is GrpcError) {
        return ListPopFrontError(grpcStatusToSdkException(e));
      } else {
        return ListPopFrontError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListPushBackResponse> listPushBack(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateFrontToSize}) async {
    try {
      var request = ListPushBackRequest_();
      request.listName = utf8.encode(listName);
      request.truncateFrontToSize = truncateFrontToSize ?? 0;
      request.value = value.toBinary();
      CollectionTtl actualTtl = ttl ?? CollectionTtl.fromCacheTtl();
      request.ttlMilliseconds =
          Int64(actualTtl.ttlMilliseconds() ?? _defaultTtl.inMilliseconds);
      request.refreshTtl = actualTtl.refreshTtl();
      var response = await _client.listPushBack(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return ListPushBackSuccess(response.listLength,
          message:
              "Pushed value '${value.toUtf8()}' to back of list '$listName' in cache '$cacheName'");
    } catch (e) {
      if (e is GrpcError) {
        return ListPushBackError(grpcStatusToSdkException(e));
      } else {
        return ListPushBackError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListPushFrontResponse> listPushFront(
      String cacheName, String listName, Value value,
      {CollectionTtl? ttl, int? truncateBackToSize}) async {
    try {
      var request = ListPushFrontRequest_();
      request.listName = utf8.encode(listName);
      request.truncateBackToSize = truncateBackToSize ?? 0;
      request.value = value.toBinary();
      CollectionTtl actualTtl = ttl ?? CollectionTtl.fromCacheTtl();
      request.ttlMilliseconds =
          Int64(actualTtl.ttlMilliseconds() ?? _defaultTtl.inMilliseconds);
      request.refreshTtl = actualTtl.refreshTtl();
      var response = await _client.listPushFront(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return ListPushFrontSuccess(response.listLength,
          message:
              "Pushed value '${value.toUtf8()}' to front of list '$listName' in cache '$cacheName'");
    } catch (e) {
      if (e is GrpcError) {
        return ListPushFrontError(grpcStatusToSdkException(e));
      } else {
        return ListPushFrontError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListRemoveValueResponse> listRemoveValue(
      String cacheName, String listName, Value value) async {
    try {
      var request = ListRemoveRequest_();
      request.listName = utf8.encode(listName);
      request.allElementsWithValue = value.toBinary();
      await _client.listRemove(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return ListRemoveValueSuccess(
          message:
              "Removed all instances of value '${value.toUtf8()}' from list '$listName' in cache '$cacheName'");
    } catch (e) {
      if (e is GrpcError) {
        return ListRemoveValueError(grpcStatusToSdkException(e));
      } else {
        return ListRemoveValueError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<ListRetainResponse> listRetain(String cacheName, String listName,
      {int? startIndex, int? endIndex, CollectionTtl? ttl}) async {
    try {
      var request = ListRetainRequest_();
      request.listName = utf8.encode(listName);
      if (startIndex != null) {
        request.inclusiveStart = startIndex;
      } else {
        request.unboundedStart = Unbounded_();
      }
      if (endIndex != null) {
        request.exclusiveEnd = endIndex;
      } else {
        request.unboundedEnd = Unbounded_();
      }
      CollectionTtl actualTtl = ttl ?? CollectionTtl.fromCacheTtl();
      request.ttlMilliseconds =
          Int64(actualTtl.ttlMilliseconds() ?? _defaultTtl.inMilliseconds);
      request.refreshTtl = actualTtl.refreshTtl();
      await _client.listRetain(request,
          options: CallOptions(metadata: {
            'cache': cacheName,
          }));
      return ListRetainSuccess(
          message:
              "Retained values in list '$listName' in cache '$cacheName' with startIndex '${startIndex ?? 'unbounded'}' and endIndex '${endIndex ?? 'unbounded'}'");
    } catch (e) {
      if (e is GrpcError) {
        return ListRetainError(grpcStatusToSdkException(e));
      } else {
        return ListRetainError(
            UnknownException("Unexpected error: $e", null, null));
      }
    }
  }

  @override
  Future<void> close() async {
    await _channel.shutdown();
  }
}
