import 'dart:convert';

import 'package:momento/generated/cacheclient.pbgrpc.dart';
import 'package:momento/momento.dart';
import 'package:momento/src/config/cache_configuration.dart';
import 'package:momento/src/errors/errors.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import 'utils/utils.dart';

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
  var firstRequest = true;

  DataClient(CredentialProvider credentialProvider, this._configuration,
      this._defaultTtl) {
    _channel = ClientChannel(credentialProvider.cacheEndpoint);
    _client = ScsClient(_channel,
        options: CallOptions(
            metadata: {'authorization': credentialProvider.apiKey},
            timeout: _configuration.transportStrategy.grpcConfig.deadline));
  }

  Future<Map<String, String>> makeHeaders({String? cacheName}) async {
    var headers = <String, String>{};
    if (cacheName != null) {
      headers.addEntries({'cache': cacheName}.entries);
    }
    if (firstRequest) {
      firstRequest = false;
      String? packageVersion = await findPackageVersion();
      headers.addEntries({'agent': packageVersion ?? 'unknown'}.entries);
    }
    return headers;
  }

  @override
  Future<GetResponse> get(String cacheName, Value key) async {
    var request = GetRequest_();
    request.cacheKey = key.toBinary();
    try {
      var resp = await _client.get(request,
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));

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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      return ListConcatenateBackSuccess(response.listLength);
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      return ListConcatenateFrontSuccess(response.listLength);
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      switch (response.whichList()) {
        case ListFetchResponse__List.found:
          return ListFetchHit(response.found.values);
        case ListFetchResponse__List.missing:
          return ListFetchMiss();
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      switch (response.whichList()) {
        case ListLengthResponse__List.found:
          return ListLengthHit(response.found.length);
        case ListLengthResponse__List.missing:
          return ListLengthMiss();
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      switch (response.whichList()) {
        case ListPopBackResponse__List.found:
          return ListPopBackHit(
            response.found.back,
          );
        case ListPopBackResponse__List.missing:
          return ListPopBackMiss();
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      switch (response.whichList()) {
        case ListPopFrontResponse__List.found:
          return ListPopFrontHit(response.found.front);
        case ListPopFrontResponse__List.missing:
          return ListPopFrontMiss();
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      return ListPushBackSuccess(response.listLength);
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      return ListPushFrontSuccess(response.listLength);
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      return ListRemoveValueSuccess();
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
          options:
              CallOptions(metadata: await makeHeaders(cacheName: cacheName)));
      return ListRetainSuccess();
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
