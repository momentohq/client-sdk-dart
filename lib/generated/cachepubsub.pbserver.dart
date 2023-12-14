//
//  Generated code. Do not modify.
//  source: cachepubsub.proto
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

import 'cachepubsub.pb.dart' as $2;
import 'cachepubsub.pbjson.dart';

export 'cachepubsub.pb.dart';

abstract class PubsubServiceBase extends $pb.GeneratedService {
  $async.Future<$2.Empty_> publish($pb.ServerContext ctx, $2.PublishRequest_ request);
  $async.Future<$2.SubscriptionItem_> subscribe($pb.ServerContext ctx, $2.SubscriptionRequest_ request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Publish': return $2.PublishRequest_();
      case 'Subscribe': return $2.SubscriptionRequest_();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Publish': return this.publish(ctx, request as $2.PublishRequest_);
      case 'Subscribe': return this.subscribe(ctx, request as $2.SubscriptionRequest_);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PubsubServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PubsubServiceBase$messageJson;
}

