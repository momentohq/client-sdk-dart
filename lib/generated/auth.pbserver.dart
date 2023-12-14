//
//  Generated code. Do not modify.
//  source: auth.proto
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

import 'auth.pb.dart' as $4;
import 'auth.pbjson.dart';

export 'auth.pb.dart';

abstract class AuthServiceBase extends $pb.GeneratedService {
  $async.Future<$4.LoginResponse_> login($pb.ServerContext ctx, $4.LoginRequest_ request);
  $async.Future<$4.GenerateApiTokenResponse_> generateApiToken($pb.ServerContext ctx, $4.GenerateApiTokenRequest_ request);
  $async.Future<$4.RefreshApiTokenResponse_> refreshApiToken($pb.ServerContext ctx, $4.RefreshApiTokenRequest_ request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Login': return $4.LoginRequest_();
      case 'GenerateApiToken': return $4.GenerateApiTokenRequest_();
      case 'RefreshApiToken': return $4.RefreshApiTokenRequest_();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Login': return this.login(ctx, request as $4.LoginRequest_);
      case 'GenerateApiToken': return this.generateApiToken(ctx, request as $4.GenerateApiTokenRequest_);
      case 'RefreshApiToken': return this.refreshApiToken(ctx, request as $4.RefreshApiTokenRequest_);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AuthServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AuthServiceBase$messageJson;
}

