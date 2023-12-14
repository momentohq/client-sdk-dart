//
//  Generated code. Do not modify.
//  source: leaderboard.proto
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

import 'leaderboard.pb.dart' as $8;
import 'leaderboard.pbjson.dart';

export 'leaderboard.pb.dart';

abstract class LeaderboardServiceBase extends $pb.GeneratedService {
  $async.Future<$8.Empty_> deleteLeaderboard($pb.ServerContext ctx, $8.DeleteLeaderboardRequest_ request);
  $async.Future<$8.Empty_> upsertElements($pb.ServerContext ctx, $8.UpsertElementsRequest_ request);
  $async.Future<$8.Empty_> removeElements($pb.ServerContext ctx, $8.RemoveElementsRequest_ request);
  $async.Future<$8.GetLeaderboardLengthResponse_> getLeaderboardLength($pb.ServerContext ctx, $8.GetLeaderboardLengthRequest_ request);
  $async.Future<$8.GetByRankResponse_> getByRank($pb.ServerContext ctx, $8.GetByRankRequest_ request);
  $async.Future<$8.GetRankResponse_> getRank($pb.ServerContext ctx, $8.GetRankRequest_ request);
  $async.Future<$8.GetByScoreResponse_> getByScore($pb.ServerContext ctx, $8.GetByScoreRequest_ request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'DeleteLeaderboard': return $8.DeleteLeaderboardRequest_();
      case 'UpsertElements': return $8.UpsertElementsRequest_();
      case 'RemoveElements': return $8.RemoveElementsRequest_();
      case 'GetLeaderboardLength': return $8.GetLeaderboardLengthRequest_();
      case 'GetByRank': return $8.GetByRankRequest_();
      case 'GetRank': return $8.GetRankRequest_();
      case 'GetByScore': return $8.GetByScoreRequest_();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'DeleteLeaderboard': return this.deleteLeaderboard(ctx, request as $8.DeleteLeaderboardRequest_);
      case 'UpsertElements': return this.upsertElements(ctx, request as $8.UpsertElementsRequest_);
      case 'RemoveElements': return this.removeElements(ctx, request as $8.RemoveElementsRequest_);
      case 'GetLeaderboardLength': return this.getLeaderboardLength(ctx, request as $8.GetLeaderboardLengthRequest_);
      case 'GetByRank': return this.getByRank(ctx, request as $8.GetByRankRequest_);
      case 'GetRank': return this.getRank(ctx, request as $8.GetRankRequest_);
      case 'GetByScore': return this.getByScore(ctx, request as $8.GetByScoreRequest_);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => LeaderboardServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => LeaderboardServiceBase$messageJson;
}

