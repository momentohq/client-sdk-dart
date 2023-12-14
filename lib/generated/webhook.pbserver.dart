//
//  Generated code. Do not modify.
//  source: webhook.proto
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

import 'webhook.pb.dart' as $9;
import 'webhook.pbjson.dart';

export 'webhook.pb.dart';

abstract class WebhookServiceBase extends $pb.GeneratedService {
  $async.Future<$9.PutWebhookResponse_> putWebhook($pb.ServerContext ctx, $9.PutWebhookRequest_ request);
  $async.Future<$9.DeleteWebhookResponse_> deleteWebhook($pb.ServerContext ctx, $9.DeleteWebhookRequest_ request);
  $async.Future<$9.ListWebhooksResponse_> listWebhooks($pb.ServerContext ctx, $9.ListWebhookRequest_ request);
  $async.Future<$9.GetWebhookSecretResponse_> getWebhookSecret($pb.ServerContext ctx, $9.GetWebhookSecretRequest_ request);
  $async.Future<$9.RotateWebhookSecretResponse_> rotateWebhookSecret($pb.ServerContext ctx, $9.RotateWebhookSecretRequest_ request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'PutWebhook': return $9.PutWebhookRequest_();
      case 'DeleteWebhook': return $9.DeleteWebhookRequest_();
      case 'ListWebhooks': return $9.ListWebhookRequest_();
      case 'GetWebhookSecret': return $9.GetWebhookSecretRequest_();
      case 'RotateWebhookSecret': return $9.RotateWebhookSecretRequest_();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'PutWebhook': return this.putWebhook(ctx, request as $9.PutWebhookRequest_);
      case 'DeleteWebhook': return this.deleteWebhook(ctx, request as $9.DeleteWebhookRequest_);
      case 'ListWebhooks': return this.listWebhooks(ctx, request as $9.ListWebhookRequest_);
      case 'GetWebhookSecret': return this.getWebhookSecret(ctx, request as $9.GetWebhookSecretRequest_);
      case 'RotateWebhookSecret': return this.rotateWebhookSecret(ctx, request as $9.RotateWebhookSecretRequest_);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => WebhookServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WebhookServiceBase$messageJson;
}

