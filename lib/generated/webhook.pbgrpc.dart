//
//  Generated code. Do not modify.
//  source: webhook.proto
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

import 'webhook.pb.dart' as $8;

export 'webhook.pb.dart';

@$pb.GrpcServiceName('webhook.Webhook')
class WebhookClient extends $grpc.Client {
  static final _$putWebhook =
      $grpc.ClientMethod<$8.PutWebhookRequest_, $8.PutWebhookResponse_>(
          '/webhook.Webhook/PutWebhook',
          ($8.PutWebhookRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.PutWebhookResponse_.fromBuffer(value));
  static final _$deleteWebhook =
      $grpc.ClientMethod<$8.DeleteWebhookRequest_, $8.DeleteWebhookResponse_>(
          '/webhook.Webhook/DeleteWebhook',
          ($8.DeleteWebhookRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.DeleteWebhookResponse_.fromBuffer(value));
  static final _$listWebhooks =
      $grpc.ClientMethod<$8.ListWebhookRequest_, $8.ListWebhooksResponse_>(
          '/webhook.Webhook/ListWebhooks',
          ($8.ListWebhookRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.ListWebhooksResponse_.fromBuffer(value));
  static final _$getWebhookSecret = $grpc.ClientMethod<
          $8.GetWebhookSecretRequest_, $8.GetWebhookSecretResponse_>(
      '/webhook.Webhook/GetWebhookSecret',
      ($8.GetWebhookSecretRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.GetWebhookSecretResponse_.fromBuffer(value));
  static final _$rotateWebhookSecret = $grpc.ClientMethod<
          $8.RotateWebhookSecretRequest_, $8.RotateWebhookSecretResponse_>(
      '/webhook.Webhook/RotateWebhookSecret',
      ($8.RotateWebhookSecretRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.RotateWebhookSecretResponse_.fromBuffer(value));

  WebhookClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.PutWebhookResponse_> putWebhook(
      $8.PutWebhookRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteWebhookResponse_> deleteWebhook(
      $8.DeleteWebhookRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListWebhooksResponse_> listWebhooks(
      $8.ListWebhookRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWebhooks, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetWebhookSecretResponse_> getWebhookSecret(
      $8.GetWebhookSecretRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWebhookSecret, request, options: options);
  }

  $grpc.ResponseFuture<$8.RotateWebhookSecretResponse_> rotateWebhookSecret(
      $8.RotateWebhookSecretRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rotateWebhookSecret, request, options: options);
  }
}

@$pb.GrpcServiceName('webhook.Webhook')
abstract class WebhookServiceBase extends $grpc.Service {
  $core.String get $name => 'webhook.Webhook';

  WebhookServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$8.PutWebhookRequest_, $8.PutWebhookResponse_>(
            'PutWebhook',
            putWebhook_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.PutWebhookRequest_.fromBuffer(value),
            ($8.PutWebhookResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteWebhookRequest_,
            $8.DeleteWebhookResponse_>(
        'DeleteWebhook',
        deleteWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.DeleteWebhookRequest_.fromBuffer(value),
        ($8.DeleteWebhookResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.ListWebhookRequest_, $8.ListWebhooksResponse_>(
            'ListWebhooks',
            listWebhooks_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.ListWebhookRequest_.fromBuffer(value),
            ($8.ListWebhooksResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetWebhookSecretRequest_,
            $8.GetWebhookSecretResponse_>(
        'GetWebhookSecret',
        getWebhookSecret_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.GetWebhookSecretRequest_.fromBuffer(value),
        ($8.GetWebhookSecretResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RotateWebhookSecretRequest_,
            $8.RotateWebhookSecretResponse_>(
        'RotateWebhookSecret',
        rotateWebhookSecret_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RotateWebhookSecretRequest_.fromBuffer(value),
        ($8.RotateWebhookSecretResponse_ value) => value.writeToBuffer()));
  }

  $async.Future<$8.PutWebhookResponse_> putWebhook_Pre($grpc.ServiceCall call,
      $async.Future<$8.PutWebhookRequest_> request) async {
    return putWebhook(call, await request);
  }

  $async.Future<$8.DeleteWebhookResponse_> deleteWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.DeleteWebhookRequest_> request) async {
    return deleteWebhook(call, await request);
  }

  $async.Future<$8.ListWebhooksResponse_> listWebhooks_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.ListWebhookRequest_> request) async {
    return listWebhooks(call, await request);
  }

  $async.Future<$8.GetWebhookSecretResponse_> getWebhookSecret_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.GetWebhookSecretRequest_> request) async {
    return getWebhookSecret(call, await request);
  }

  $async.Future<$8.RotateWebhookSecretResponse_> rotateWebhookSecret_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.RotateWebhookSecretRequest_> request) async {
    return rotateWebhookSecret(call, await request);
  }

  $async.Future<$8.PutWebhookResponse_> putWebhook(
      $grpc.ServiceCall call, $8.PutWebhookRequest_ request);
  $async.Future<$8.DeleteWebhookResponse_> deleteWebhook(
      $grpc.ServiceCall call, $8.DeleteWebhookRequest_ request);
  $async.Future<$8.ListWebhooksResponse_> listWebhooks(
      $grpc.ServiceCall call, $8.ListWebhookRequest_ request);
  $async.Future<$8.GetWebhookSecretResponse_> getWebhookSecret(
      $grpc.ServiceCall call, $8.GetWebhookSecretRequest_ request);
  $async.Future<$8.RotateWebhookSecretResponse_> rotateWebhookSecret(
      $grpc.ServiceCall call, $8.RotateWebhookSecretRequest_ request);
}
