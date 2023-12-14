//
//  Generated code. Do not modify.
//  source: token.proto
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

import 'token.pb.dart' as $6;

export 'token.pb.dart';

@$pb.GrpcServiceName('token.Token')
class TokenClient extends $grpc.Client {
  static final _$generateDisposableToken = $grpc.ClientMethod<$6.GenerateDisposableTokenRequest_, $6.GenerateDisposableTokenResponse_>(
      '/token.Token/GenerateDisposableToken',
      ($6.GenerateDisposableTokenRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GenerateDisposableTokenResponse_.fromBuffer(value));

  TokenClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.GenerateDisposableTokenResponse_> generateDisposableToken($6.GenerateDisposableTokenRequest_ request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateDisposableToken, request, options: options);
  }
}

@$pb.GrpcServiceName('token.Token')
abstract class TokenServiceBase extends $grpc.Service {
  $core.String get $name => 'token.Token';

  TokenServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.GenerateDisposableTokenRequest_, $6.GenerateDisposableTokenResponse_>(
        'GenerateDisposableToken',
        generateDisposableToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GenerateDisposableTokenRequest_.fromBuffer(value),
        ($6.GenerateDisposableTokenResponse_ value) => value.writeToBuffer()));
  }

  $async.Future<$6.GenerateDisposableTokenResponse_> generateDisposableToken_Pre($grpc.ServiceCall call, $async.Future<$6.GenerateDisposableTokenRequest_> request) async {
    return generateDisposableToken(call, await request);
  }

  $async.Future<$6.GenerateDisposableTokenResponse_> generateDisposableToken($grpc.ServiceCall call, $6.GenerateDisposableTokenRequest_ request);
}
