//
//  Generated code. Do not modify.
//  source: cacheping.proto
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

import 'cacheping.pb.dart' as $4;

export 'cacheping.pb.dart';

@$pb.GrpcServiceName('cache_client.Ping')
class PingClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$4.PingRequest_, $4.PingResponse_>(
      '/cache_client.Ping/Ping',
      ($4.PingRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.PingResponse_.fromBuffer(value));

  PingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.PingResponse_> ping($4.PingRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }
}

@$pb.GrpcServiceName('cache_client.Ping')
abstract class PingServiceBase extends $grpc.Service {
  $core.String get $name => 'cache_client.Ping';

  PingServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.PingRequest_, $4.PingResponse_>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.PingRequest_.fromBuffer(value),
        ($4.PingResponse_ value) => value.writeToBuffer()));
  }

  $async.Future<$4.PingResponse_> ping_Pre(
      $grpc.ServiceCall call, $async.Future<$4.PingRequest_> request) async {
    return ping(call, await request);
  }

  $async.Future<$4.PingResponse_> ping(
      $grpc.ServiceCall call, $4.PingRequest_ request);
}
