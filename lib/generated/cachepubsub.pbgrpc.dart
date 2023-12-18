//
//  Generated code. Do not modify.
//  source: cachepubsub.proto
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

import 'cachepubsub.pb.dart' as $2;

export 'cachepubsub.pb.dart';

@$pb.GrpcServiceName('cache_client.pubsub.Pubsub')
class PubsubClient extends $grpc.Client {
  static final _$publish = $grpc.ClientMethod<$2.PublishRequest_, $2.Empty_>(
      '/cache_client.pubsub.Pubsub/Publish',
      ($2.PublishRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty_.fromBuffer(value));
  static final _$subscribe =
      $grpc.ClientMethod<$2.SubscriptionRequest_, $2.SubscriptionItem_>(
          '/cache_client.pubsub.Pubsub/Subscribe',
          ($2.SubscriptionRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SubscriptionItem_.fromBuffer(value));

  PubsubClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty_> publish($2.PublishRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publish, request, options: options);
  }

  $grpc.ResponseStream<$2.SubscriptionItem_> subscribe(
      $2.SubscriptionRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }
}

@$pb.GrpcServiceName('cache_client.pubsub.Pubsub')
abstract class PubsubServiceBase extends $grpc.Service {
  $core.String get $name => 'cache_client.pubsub.Pubsub';

  PubsubServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.PublishRequest_, $2.Empty_>(
        'Publish',
        publish_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PublishRequest_.fromBuffer(value),
        ($2.Empty_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SubscriptionRequest_, $2.SubscriptionItem_>(
            'Subscribe',
            subscribe_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $2.SubscriptionRequest_.fromBuffer(value),
            ($2.SubscriptionItem_ value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty_> publish_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PublishRequest_> request) async {
    return publish(call, await request);
  }

  $async.Stream<$2.SubscriptionItem_> subscribe_Pre($grpc.ServiceCall call,
      $async.Future<$2.SubscriptionRequest_> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Future<$2.Empty_> publish(
      $grpc.ServiceCall call, $2.PublishRequest_ request);
  $async.Stream<$2.SubscriptionItem_> subscribe(
      $grpc.ServiceCall call, $2.SubscriptionRequest_ request);
}
