//
//  Generated code. Do not modify.
//  source: auth.proto
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

import 'auth.pb.dart' as $3;

export 'auth.pb.dart';

@$pb.GrpcServiceName('auth.Auth')
class AuthClient extends $grpc.Client {
  static final _$login =
      $grpc.ClientMethod<$3.LoginRequest_, $3.LoginResponse_>(
          '/auth.Auth/Login',
          ($3.LoginRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.LoginResponse_.fromBuffer(value));
  static final _$generateApiToken = $grpc.ClientMethod<
          $3.GenerateApiTokenRequest_, $3.GenerateApiTokenResponse_>(
      '/auth.Auth/GenerateApiToken',
      ($3.GenerateApiTokenRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.GenerateApiTokenResponse_.fromBuffer(value));
  static final _$refreshApiToken = $grpc.ClientMethod<
          $3.RefreshApiTokenRequest_, $3.RefreshApiTokenResponse_>(
      '/auth.Auth/RefreshApiToken',
      ($3.RefreshApiTokenRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.RefreshApiTokenResponse_.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$3.LoginResponse_> login($3.LoginRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$login, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$3.GenerateApiTokenResponse_> generateApiToken(
      $3.GenerateApiTokenRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateApiToken, request, options: options);
  }

  $grpc.ResponseFuture<$3.RefreshApiTokenResponse_> refreshApiToken(
      $3.RefreshApiTokenRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshApiToken, request, options: options);
  }
}

@$pb.GrpcServiceName('auth.Auth')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.LoginRequest_, $3.LoginResponse_>(
        'Login',
        login_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.LoginRequest_.fromBuffer(value),
        ($3.LoginResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GenerateApiTokenRequest_,
            $3.GenerateApiTokenResponse_>(
        'GenerateApiToken',
        generateApiToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GenerateApiTokenRequest_.fromBuffer(value),
        ($3.GenerateApiTokenResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RefreshApiTokenRequest_,
            $3.RefreshApiTokenResponse_>(
        'RefreshApiToken',
        refreshApiToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RefreshApiTokenRequest_.fromBuffer(value),
        ($3.RefreshApiTokenResponse_ value) => value.writeToBuffer()));
  }

  $async.Stream<$3.LoginResponse_> login_Pre(
      $grpc.ServiceCall call, $async.Future<$3.LoginRequest_> request) async* {
    yield* login(call, await request);
  }

  $async.Future<$3.GenerateApiTokenResponse_> generateApiToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GenerateApiTokenRequest_> request) async {
    return generateApiToken(call, await request);
  }

  $async.Future<$3.RefreshApiTokenResponse_> refreshApiToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.RefreshApiTokenRequest_> request) async {
    return refreshApiToken(call, await request);
  }

  $async.Stream<$3.LoginResponse_> login(
      $grpc.ServiceCall call, $3.LoginRequest_ request);
  $async.Future<$3.GenerateApiTokenResponse_> generateApiToken(
      $grpc.ServiceCall call, $3.GenerateApiTokenRequest_ request);
  $async.Future<$3.RefreshApiTokenResponse_> refreshApiToken(
      $grpc.ServiceCall call, $3.RefreshApiTokenRequest_ request);
}
