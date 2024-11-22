//
//  Generated code. Do not modify.
//  source: leaderboard.proto
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

import 'common.pb.dart' as $3;
import 'leaderboard.pb.dart' as $7;

export 'leaderboard.pb.dart';

@$pb.GrpcServiceName('leaderboard.Leaderboard')
class LeaderboardClient extends $grpc.Client {
  static final _$deleteLeaderboard =
      $grpc.ClientMethod<$7.DeleteLeaderboardRequest_, $3.Empty_>(
          '/leaderboard.Leaderboard/DeleteLeaderboard',
          ($7.DeleteLeaderboardRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.Empty_.fromBuffer(value));
  static final _$upsertElements =
      $grpc.ClientMethod<$7.UpsertElementsRequest_, $3.Empty_>(
          '/leaderboard.Leaderboard/UpsertElements',
          ($7.UpsertElementsRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.Empty_.fromBuffer(value));
  static final _$removeElements =
      $grpc.ClientMethod<$7.RemoveElementsRequest_, $3.Empty_>(
          '/leaderboard.Leaderboard/RemoveElements',
          ($7.RemoveElementsRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.Empty_.fromBuffer(value));
  static final _$getLeaderboardLength = $grpc.ClientMethod<
          $7.GetLeaderboardLengthRequest_, $7.GetLeaderboardLengthResponse_>(
      '/leaderboard.Leaderboard/GetLeaderboardLength',
      ($7.GetLeaderboardLengthRequest_ value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetLeaderboardLengthResponse_.fromBuffer(value));
  static final _$getByRank =
      $grpc.ClientMethod<$7.GetByRankRequest_, $7.GetByRankResponse_>(
          '/leaderboard.Leaderboard/GetByRank',
          ($7.GetByRankRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetByRankResponse_.fromBuffer(value));
  static final _$getRank =
      $grpc.ClientMethod<$7.GetRankRequest_, $7.GetRankResponse_>(
          '/leaderboard.Leaderboard/GetRank',
          ($7.GetRankRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetRankResponse_.fromBuffer(value));
  static final _$getByScore =
      $grpc.ClientMethod<$7.GetByScoreRequest_, $7.GetByScoreResponse_>(
          '/leaderboard.Leaderboard/GetByScore',
          ($7.GetByScoreRequest_ value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetByScoreResponse_.fromBuffer(value));

  LeaderboardClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.Empty_> deleteLeaderboard(
      $7.DeleteLeaderboardRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLeaderboard, request, options: options);
  }

  $grpc.ResponseFuture<$3.Empty_> upsertElements(
      $7.UpsertElementsRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upsertElements, request, options: options);
  }

  $grpc.ResponseFuture<$3.Empty_> removeElements(
      $7.RemoveElementsRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeElements, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetLeaderboardLengthResponse_> getLeaderboardLength(
      $7.GetLeaderboardLengthRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLeaderboardLength, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetByRankResponse_> getByRank(
      $7.GetByRankRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByRank, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetRankResponse_> getRank($7.GetRankRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRank, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetByScoreResponse_> getByScore(
      $7.GetByScoreRequest_ request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByScore, request, options: options);
  }
}

@$pb.GrpcServiceName('leaderboard.Leaderboard')
abstract class LeaderboardServiceBase extends $grpc.Service {
  $core.String get $name => 'leaderboard.Leaderboard';

  LeaderboardServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.DeleteLeaderboardRequest_, $3.Empty_>(
        'DeleteLeaderboard',
        deleteLeaderboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.DeleteLeaderboardRequest_.fromBuffer(value),
        ($3.Empty_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpsertElementsRequest_, $3.Empty_>(
        'UpsertElements',
        upsertElements_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.UpsertElementsRequest_.fromBuffer(value),
        ($3.Empty_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RemoveElementsRequest_, $3.Empty_>(
        'RemoveElements',
        removeElements_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RemoveElementsRequest_.fromBuffer(value),
        ($3.Empty_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetLeaderboardLengthRequest_,
            $7.GetLeaderboardLengthResponse_>(
        'GetLeaderboardLength',
        getLeaderboardLength_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetLeaderboardLengthRequest_.fromBuffer(value),
        ($7.GetLeaderboardLengthResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetByRankRequest_, $7.GetByRankResponse_>(
        'GetByRank',
        getByRank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetByRankRequest_.fromBuffer(value),
        ($7.GetByRankResponse_ value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetRankRequest_, $7.GetRankResponse_>(
        'GetRank',
        getRank_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRankRequest_.fromBuffer(value),
        ($7.GetRankResponse_ value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.GetByScoreRequest_, $7.GetByScoreResponse_>(
            'GetByScore',
            getByScore_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.GetByScoreRequest_.fromBuffer(value),
            ($7.GetByScoreResponse_ value) => value.writeToBuffer()));
  }

  $async.Future<$3.Empty_> deleteLeaderboard_Pre($grpc.ServiceCall call,
      $async.Future<$7.DeleteLeaderboardRequest_> request) async {
    return deleteLeaderboard(call, await request);
  }

  $async.Future<$3.Empty_> upsertElements_Pre($grpc.ServiceCall call,
      $async.Future<$7.UpsertElementsRequest_> request) async {
    return upsertElements(call, await request);
  }

  $async.Future<$3.Empty_> removeElements_Pre($grpc.ServiceCall call,
      $async.Future<$7.RemoveElementsRequest_> request) async {
    return removeElements(call, await request);
  }

  $async.Future<$7.GetLeaderboardLengthResponse_> getLeaderboardLength_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetLeaderboardLengthRequest_> request) async {
    return getLeaderboardLength(call, await request);
  }

  $async.Future<$7.GetByRankResponse_> getByRank_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetByRankRequest_> request) async {
    return getByRank(call, await request);
  }

  $async.Future<$7.GetRankResponse_> getRank_Pre(
      $grpc.ServiceCall call, $async.Future<$7.GetRankRequest_> request) async {
    return getRank(call, await request);
  }

  $async.Future<$7.GetByScoreResponse_> getByScore_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetByScoreRequest_> request) async {
    return getByScore(call, await request);
  }

  $async.Future<$3.Empty_> deleteLeaderboard(
      $grpc.ServiceCall call, $7.DeleteLeaderboardRequest_ request);
  $async.Future<$3.Empty_> upsertElements(
      $grpc.ServiceCall call, $7.UpsertElementsRequest_ request);
  $async.Future<$3.Empty_> removeElements(
      $grpc.ServiceCall call, $7.RemoveElementsRequest_ request);
  $async.Future<$7.GetLeaderboardLengthResponse_> getLeaderboardLength(
      $grpc.ServiceCall call, $7.GetLeaderboardLengthRequest_ request);
  $async.Future<$7.GetByRankResponse_> getByRank(
      $grpc.ServiceCall call, $7.GetByRankRequest_ request);
  $async.Future<$7.GetRankResponse_> getRank(
      $grpc.ServiceCall call, $7.GetRankRequest_ request);
  $async.Future<$7.GetByScoreResponse_> getByScore(
      $grpc.ServiceCall call, $7.GetByScoreRequest_ request);
}
