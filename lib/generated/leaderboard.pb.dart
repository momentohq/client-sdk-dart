//
//  Generated code. Do not modify.
//  source: leaderboard.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'leaderboard.pbenum.dart';

export 'leaderboard.pbenum.dart';

/// Leaderboards are made up of many of these.
class Element_ extends $pb.GeneratedMessage {
  factory Element_({
    $core.int? id,
    $core.double? score,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  Element_._() : super();
  factory Element_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Element_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_Element', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Element_ clone() => Element_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Element_ copyWith(void Function(Element_) updates) => super.copyWith((message) => updates(message as Element_)) as Element_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Element_ create() => Element_._();
  Element_ createEmptyInstance() => create();
  static $pb.PbList<Element_> createRepeated() => $pb.PbList<Element_>();
  @$core.pragma('dart2js:noInline')
  static Element_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Element_>(create);
  static Element_? _defaultInstance;

  /// A player identifier, session identifier, browser identifier or whatever other kind of
  /// identifier you use for this scoreboard. The full unsigned 64 bit range is allowed here,
  /// between 0 and 2^63-1 inclusive.
  /// An id can only appear in a leaderboard one time. You can't have 2 scores for 1 player,
  /// unless that player has 2 ids!
  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// The value by which this element is sorted within the leaderboard.
  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);
}

/// Query APIs returning RankedElement offer the familiar Element id and score tuple, but they
/// also include the rank per the individual API's ranking semantic.
class RankedElement_ extends $pb.GeneratedMessage {
  factory RankedElement_({
    $core.int? id,
    $core.double? score,
    $core.int? rank,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (score != null) {
      $result.score = score;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    return $result;
  }
  RankedElement_._() : super();
  factory RankedElement_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RankedElement_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_RankedElement', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rank', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RankedElement_ clone() => RankedElement_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RankedElement_ copyWith(void Function(RankedElement_) updates) => super.copyWith((message) => updates(message as RankedElement_)) as RankedElement_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RankedElement_ create() => RankedElement_._();
  RankedElement_ createEmptyInstance() => create();
  static $pb.PbList<RankedElement_> createRepeated() => $pb.PbList<RankedElement_>();
  @$core.pragma('dart2js:noInline')
  static RankedElement_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankedElement_>(create);
  static RankedElement_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rank => $_getIZ(2);
  @$pb.TagNumber(3)
  set rank($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRank() => $_has(2);
  @$pb.TagNumber(3)
  void clearRank() => clearField(3);
}

///  Query APIs using RankRange expect a limit of 8192 elements. Requesting a range wider than
///  that is expected to return an error.
///
///  RankRange models half-open ranges: 0..4 refers to elements 0, 1, 2 and 3.
///
///  Example permissible ranges:
///  * 0..8192
///  * 1..8193
///  * 123..8315
///  * 0..1
///  * 1..4
///  * 13..17
///
///  Example error ranges:
///  * 0..0
///  * 4..3
///  * 0..8193
class RankRange_ extends $pb.GeneratedMessage {
  factory RankRange_({
    $core.int? startInclusive,
    $core.int? endExclusive,
  }) {
    final $result = create();
    if (startInclusive != null) {
      $result.startInclusive = startInclusive;
    }
    if (endExclusive != null) {
      $result.endExclusive = endExclusive;
    }
    return $result;
  }
  RankRange_._() : super();
  factory RankRange_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RankRange_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_RankRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'startInclusive', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'endExclusive', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RankRange_ clone() => RankRange_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RankRange_ copyWith(void Function(RankRange_) updates) => super.copyWith((message) => updates(message as RankRange_)) as RankRange_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RankRange_ create() => RankRange_._();
  RankRange_ createEmptyInstance() => create();
  static $pb.PbList<RankRange_> createRepeated() => $pb.PbList<RankRange_>();
  @$core.pragma('dart2js:noInline')
  static RankRange_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankRange_>(create);
  static RankRange_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get startInclusive => $_getIZ(0);
  @$pb.TagNumber(1)
  set startInclusive($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartInclusive() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartInclusive() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get endExclusive => $_getIZ(1);
  @$pb.TagNumber(2)
  set endExclusive($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndExclusive() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndExclusive() => clearField(2);
}

class Unbounded_ extends $pb.GeneratedMessage {
  factory Unbounded_() => create();
  Unbounded_._() : super();
  factory Unbounded_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Unbounded_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_Unbounded', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Unbounded_ clone() => Unbounded_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Unbounded_ copyWith(void Function(Unbounded_) updates) => super.copyWith((message) => updates(message as Unbounded_)) as Unbounded_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Unbounded_ create() => Unbounded_._();
  Unbounded_ createEmptyInstance() => create();
  static $pb.PbList<Unbounded_> createRepeated() => $pb.PbList<Unbounded_>();
  @$core.pragma('dart2js:noInline')
  static Unbounded_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Unbounded_>(create);
  static Unbounded_? _defaultInstance;
}

enum ScoreRange__Min {
  unboundedMin, 
  minInclusive, 
  notSet
}

enum ScoreRange__Max {
  unboundedMax, 
  maxExclusive, 
  notSet
}

///  Query APIs using ScoreRange may match more than the limit of 8192 elements. These apis will
///  include an offset and limit parameter pair, which can be used to page through score ranges
///  matching many elements.
///
///  ScoreRange models half-open ranges: 0..4 refers to scores 0, 1.1234, 2.5 and 3.999.
class ScoreRange_ extends $pb.GeneratedMessage {
  factory ScoreRange_({
    Unbounded_? unboundedMin,
    $core.double? minInclusive,
    Unbounded_? unboundedMax,
    $core.double? maxExclusive,
  }) {
    final $result = create();
    if (unboundedMin != null) {
      $result.unboundedMin = unboundedMin;
    }
    if (minInclusive != null) {
      $result.minInclusive = minInclusive;
    }
    if (unboundedMax != null) {
      $result.unboundedMax = unboundedMax;
    }
    if (maxExclusive != null) {
      $result.maxExclusive = maxExclusive;
    }
    return $result;
  }
  ScoreRange_._() : super();
  factory ScoreRange_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScoreRange_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ScoreRange__Min> _ScoreRange__MinByTag = {
    1 : ScoreRange__Min.unboundedMin,
    2 : ScoreRange__Min.minInclusive,
    0 : ScoreRange__Min.notSet
  };
  static const $core.Map<$core.int, ScoreRange__Max> _ScoreRange__MaxByTag = {
    3 : ScoreRange__Max.unboundedMax,
    4 : ScoreRange__Max.maxExclusive,
    0 : ScoreRange__Max.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_ScoreRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..oo(1, [3, 4])
    ..aOM<Unbounded_>(1, _omitFieldNames ? '' : 'unboundedMin', subBuilder: Unbounded_.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'minInclusive', $pb.PbFieldType.OF)
    ..aOM<Unbounded_>(3, _omitFieldNames ? '' : 'unboundedMax', subBuilder: Unbounded_.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'maxExclusive', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScoreRange_ clone() => ScoreRange_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScoreRange_ copyWith(void Function(ScoreRange_) updates) => super.copyWith((message) => updates(message as ScoreRange_)) as ScoreRange_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScoreRange_ create() => ScoreRange_._();
  ScoreRange_ createEmptyInstance() => create();
  static $pb.PbList<ScoreRange_> createRepeated() => $pb.PbList<ScoreRange_>();
  @$core.pragma('dart2js:noInline')
  static ScoreRange_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScoreRange_>(create);
  static ScoreRange_? _defaultInstance;

  ScoreRange__Min whichMin() => _ScoreRange__MinByTag[$_whichOneof(0)]!;
  void clearMin() => clearField($_whichOneof(0));

  ScoreRange__Max whichMax() => _ScoreRange__MaxByTag[$_whichOneof(1)]!;
  void clearMax() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  Unbounded_ get unboundedMin => $_getN(0);
  @$pb.TagNumber(1)
  set unboundedMin(Unbounded_ v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnboundedMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnboundedMin() => clearField(1);
  @$pb.TagNumber(1)
  Unbounded_ ensureUnboundedMin() => $_ensure(0);

  /// IEEE 754 single precision 32 bit floating point number.
  /// Momento does not support NaN or Inf in leaderboards.
  @$pb.TagNumber(2)
  $core.double get minInclusive => $_getN(1);
  @$pb.TagNumber(2)
  set minInclusive($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMinInclusive() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinInclusive() => clearField(2);

  @$pb.TagNumber(3)
  Unbounded_ get unboundedMax => $_getN(2);
  @$pb.TagNumber(3)
  set unboundedMax(Unbounded_ v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnboundedMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnboundedMax() => clearField(3);
  @$pb.TagNumber(3)
  Unbounded_ ensureUnboundedMax() => $_ensure(2);

  /// IEEE 754 single precision 32 bit floating point number.
  /// Momento does not support NaN or Inf in leaderboards.
  @$pb.TagNumber(4)
  $core.double get maxExclusive => $_getN(3);
  @$pb.TagNumber(4)
  set maxExclusive($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxExclusive() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxExclusive() => clearField(4);
}

class Empty_ extends $pb.GeneratedMessage {
  factory Empty_() => create();
  Empty_._() : super();
  factory Empty_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty_ clone() => Empty_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty_ copyWith(void Function(Empty_) updates) => super.copyWith((message) => updates(message as Empty_)) as Empty_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty_ create() => Empty_._();
  Empty_ createEmptyInstance() => create();
  static $pb.PbList<Empty_> createRepeated() => $pb.PbList<Empty_>();
  @$core.pragma('dart2js:noInline')
  static Empty_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty_>(create);
  static Empty_? _defaultInstance;
}

class DeleteLeaderboardRequest_ extends $pb.GeneratedMessage {
  factory DeleteLeaderboardRequest_({
    $core.String? cacheName,
    $core.String? leaderboard,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (leaderboard != null) {
      $result.leaderboard = leaderboard;
    }
    return $result;
  }
  DeleteLeaderboardRequest_._() : super();
  factory DeleteLeaderboardRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteLeaderboardRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_DeleteLeaderboardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'leaderboard')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteLeaderboardRequest_ clone() => DeleteLeaderboardRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteLeaderboardRequest_ copyWith(void Function(DeleteLeaderboardRequest_) updates) => super.copyWith((message) => updates(message as DeleteLeaderboardRequest_)) as DeleteLeaderboardRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteLeaderboardRequest_ create() => DeleteLeaderboardRequest_._();
  DeleteLeaderboardRequest_ createEmptyInstance() => create();
  static $pb.PbList<DeleteLeaderboardRequest_> createRepeated() => $pb.PbList<DeleteLeaderboardRequest_>();
  @$core.pragma('dart2js:noInline')
  static DeleteLeaderboardRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteLeaderboardRequest_>(create);
  static DeleteLeaderboardRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get leaderboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaderboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaderboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaderboard() => clearField(2);
}

class GetLeaderboardLengthRequest_ extends $pb.GeneratedMessage {
  factory GetLeaderboardLengthRequest_({
    $core.String? cacheName,
    $core.String? leaderboard,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (leaderboard != null) {
      $result.leaderboard = leaderboard;
    }
    return $result;
  }
  GetLeaderboardLengthRequest_._() : super();
  factory GetLeaderboardLengthRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLeaderboardLengthRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetLeaderboardLengthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'leaderboard')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLeaderboardLengthRequest_ clone() => GetLeaderboardLengthRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLeaderboardLengthRequest_ copyWith(void Function(GetLeaderboardLengthRequest_) updates) => super.copyWith((message) => updates(message as GetLeaderboardLengthRequest_)) as GetLeaderboardLengthRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLeaderboardLengthRequest_ create() => GetLeaderboardLengthRequest_._();
  GetLeaderboardLengthRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetLeaderboardLengthRequest_> createRepeated() => $pb.PbList<GetLeaderboardLengthRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetLeaderboardLengthRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLeaderboardLengthRequest_>(create);
  static GetLeaderboardLengthRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get leaderboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaderboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaderboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaderboard() => clearField(2);
}

class GetLeaderboardLengthResponse_ extends $pb.GeneratedMessage {
  factory GetLeaderboardLengthResponse_({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  GetLeaderboardLengthResponse_._() : super();
  factory GetLeaderboardLengthResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLeaderboardLengthResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetLeaderboardLengthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLeaderboardLengthResponse_ clone() => GetLeaderboardLengthResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLeaderboardLengthResponse_ copyWith(void Function(GetLeaderboardLengthResponse_) updates) => super.copyWith((message) => updates(message as GetLeaderboardLengthResponse_)) as GetLeaderboardLengthResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLeaderboardLengthResponse_ create() => GetLeaderboardLengthResponse_._();
  GetLeaderboardLengthResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetLeaderboardLengthResponse_> createRepeated() => $pb.PbList<GetLeaderboardLengthResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetLeaderboardLengthResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLeaderboardLengthResponse_>(create);
  static GetLeaderboardLengthResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

class UpsertElementsRequest_ extends $pb.GeneratedMessage {
  factory UpsertElementsRequest_({
    $core.String? cacheName,
    $core.String? leaderboard,
    $core.Iterable<Element_>? elements,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (leaderboard != null) {
      $result.leaderboard = leaderboard;
    }
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  UpsertElementsRequest_._() : super();
  factory UpsertElementsRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpsertElementsRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_UpsertElementsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'leaderboard')
    ..pc<Element_>(3, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM, subBuilder: Element_.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpsertElementsRequest_ clone() => UpsertElementsRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpsertElementsRequest_ copyWith(void Function(UpsertElementsRequest_) updates) => super.copyWith((message) => updates(message as UpsertElementsRequest_)) as UpsertElementsRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpsertElementsRequest_ create() => UpsertElementsRequest_._();
  UpsertElementsRequest_ createEmptyInstance() => create();
  static $pb.PbList<UpsertElementsRequest_> createRepeated() => $pb.PbList<UpsertElementsRequest_>();
  @$core.pragma('dart2js:noInline')
  static UpsertElementsRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpsertElementsRequest_>(create);
  static UpsertElementsRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get leaderboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaderboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaderboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaderboard() => clearField(2);

  /// You can have up to 8192 elements in this list.
  @$pb.TagNumber(3)
  $core.List<Element_> get elements => $_getList(2);
}

class GetByRankRequest_ extends $pb.GeneratedMessage {
  factory GetByRankRequest_({
    $core.String? cacheName,
    $core.String? leaderboard,
    RankRange_? rankRange,
    Order_? order,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (leaderboard != null) {
      $result.leaderboard = leaderboard;
    }
    if (rankRange != null) {
      $result.rankRange = rankRange;
    }
    if (order != null) {
      $result.order = order;
    }
    return $result;
  }
  GetByRankRequest_._() : super();
  factory GetByRankRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByRankRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetByRankRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'leaderboard')
    ..aOM<RankRange_>(3, _omitFieldNames ? '' : 'rankRange', subBuilder: RankRange_.create)
    ..e<Order_>(4, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE, defaultOrMaker: Order_.ASCENDING, valueOf: Order_.valueOf, enumValues: Order_.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByRankRequest_ clone() => GetByRankRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByRankRequest_ copyWith(void Function(GetByRankRequest_) updates) => super.copyWith((message) => updates(message as GetByRankRequest_)) as GetByRankRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByRankRequest_ create() => GetByRankRequest_._();
  GetByRankRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetByRankRequest_> createRepeated() => $pb.PbList<GetByRankRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetByRankRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByRankRequest_>(create);
  static GetByRankRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get leaderboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaderboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaderboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaderboard() => clearField(2);

  @$pb.TagNumber(3)
  RankRange_ get rankRange => $_getN(2);
  @$pb.TagNumber(3)
  set rankRange(RankRange_ v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRankRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearRankRange() => clearField(3);
  @$pb.TagNumber(3)
  RankRange_ ensureRankRange() => $_ensure(2);

  @$pb.TagNumber(4)
  Order_ get order => $_getN(3);
  @$pb.TagNumber(4)
  set order(Order_ v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrder() => clearField(4);
}

class GetByRankResponse_ extends $pb.GeneratedMessage {
  factory GetByRankResponse_({
    $core.Iterable<RankedElement_>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  GetByRankResponse_._() : super();
  factory GetByRankResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByRankResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetByRankResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..pc<RankedElement_>(1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM, subBuilder: RankedElement_.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByRankResponse_ clone() => GetByRankResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByRankResponse_ copyWith(void Function(GetByRankResponse_) updates) => super.copyWith((message) => updates(message as GetByRankResponse_)) as GetByRankResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByRankResponse_ create() => GetByRankResponse_._();
  GetByRankResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetByRankResponse_> createRepeated() => $pb.PbList<GetByRankResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetByRankResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByRankResponse_>(create);
  static GetByRankResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RankedElement_> get elements => $_getList(0);
}

class GetRankRequest_ extends $pb.GeneratedMessage {
  factory GetRankRequest_({
    $core.String? cacheName,
    $core.String? leaderboard,
    $core.Iterable<$core.int>? ids,
    Order_? order,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (leaderboard != null) {
      $result.leaderboard = leaderboard;
    }
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    if (order != null) {
      $result.order = order;
    }
    return $result;
  }
  GetRankRequest_._() : super();
  factory GetRankRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRankRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetRankRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'leaderboard')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.KU3)
    ..e<Order_>(4, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE, defaultOrMaker: Order_.ASCENDING, valueOf: Order_.valueOf, enumValues: Order_.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRankRequest_ clone() => GetRankRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRankRequest_ copyWith(void Function(GetRankRequest_) updates) => super.copyWith((message) => updates(message as GetRankRequest_)) as GetRankRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRankRequest_ create() => GetRankRequest_._();
  GetRankRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetRankRequest_> createRepeated() => $pb.PbList<GetRankRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetRankRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRankRequest_>(create);
  static GetRankRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get leaderboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaderboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaderboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaderboard() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get ids => $_getList(2);

  @$pb.TagNumber(4)
  Order_ get order => $_getN(3);
  @$pb.TagNumber(4)
  set order(Order_ v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrder() => clearField(4);
}

class GetRankResponse_ extends $pb.GeneratedMessage {
  factory GetRankResponse_({
    $core.Iterable<RankedElement_>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  GetRankResponse_._() : super();
  factory GetRankResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRankResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetRankResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..pc<RankedElement_>(1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM, subBuilder: RankedElement_.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRankResponse_ clone() => GetRankResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRankResponse_ copyWith(void Function(GetRankResponse_) updates) => super.copyWith((message) => updates(message as GetRankResponse_)) as GetRankResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRankResponse_ create() => GetRankResponse_._();
  GetRankResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetRankResponse_> createRepeated() => $pb.PbList<GetRankResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetRankResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRankResponse_>(create);
  static GetRankResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RankedElement_> get elements => $_getList(0);
}

class RemoveElementsRequest_ extends $pb.GeneratedMessage {
  factory RemoveElementsRequest_({
    $core.String? cacheName,
    $core.String? leaderboard,
    $core.Iterable<$core.int>? ids,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (leaderboard != null) {
      $result.leaderboard = leaderboard;
    }
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    return $result;
  }
  RemoveElementsRequest_._() : super();
  factory RemoveElementsRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveElementsRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_RemoveElementsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'leaderboard')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveElementsRequest_ clone() => RemoveElementsRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveElementsRequest_ copyWith(void Function(RemoveElementsRequest_) updates) => super.copyWith((message) => updates(message as RemoveElementsRequest_)) as RemoveElementsRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveElementsRequest_ create() => RemoveElementsRequest_._();
  RemoveElementsRequest_ createEmptyInstance() => create();
  static $pb.PbList<RemoveElementsRequest_> createRepeated() => $pb.PbList<RemoveElementsRequest_>();
  @$core.pragma('dart2js:noInline')
  static RemoveElementsRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveElementsRequest_>(create);
  static RemoveElementsRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get leaderboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaderboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaderboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaderboard() => clearField(2);

  /// You can have up to 8192 ids in this list.
  @$pb.TagNumber(3)
  $core.List<$core.int> get ids => $_getList(2);
}

class GetByScoreRequest_ extends $pb.GeneratedMessage {
  factory GetByScoreRequest_({
    $core.String? cacheName,
    $core.String? leaderboard,
    ScoreRange_? scoreRange,
    $core.int? offset,
    $core.int? limitElements,
    Order_? order,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (leaderboard != null) {
      $result.leaderboard = leaderboard;
    }
    if (scoreRange != null) {
      $result.scoreRange = scoreRange;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (limitElements != null) {
      $result.limitElements = limitElements;
    }
    if (order != null) {
      $result.order = order;
    }
    return $result;
  }
  GetByScoreRequest_._() : super();
  factory GetByScoreRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByScoreRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetByScoreRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'leaderboard')
    ..aOM<ScoreRange_>(3, _omitFieldNames ? '' : 'scoreRange', subBuilder: ScoreRange_.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'limitElements', $pb.PbFieldType.OU3)
    ..e<Order_>(6, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE, defaultOrMaker: Order_.ASCENDING, valueOf: Order_.valueOf, enumValues: Order_.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByScoreRequest_ clone() => GetByScoreRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByScoreRequest_ copyWith(void Function(GetByScoreRequest_) updates) => super.copyWith((message) => updates(message as GetByScoreRequest_)) as GetByScoreRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByScoreRequest_ create() => GetByScoreRequest_._();
  GetByScoreRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetByScoreRequest_> createRepeated() => $pb.PbList<GetByScoreRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetByScoreRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByScoreRequest_>(create);
  static GetByScoreRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get leaderboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaderboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaderboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaderboard() => clearField(2);

  @$pb.TagNumber(3)
  ScoreRange_ get scoreRange => $_getN(2);
  @$pb.TagNumber(3)
  set scoreRange(ScoreRange_ v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasScoreRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearScoreRange() => clearField(3);
  @$pb.TagNumber(3)
  ScoreRange_ ensureScoreRange() => $_ensure(2);

  /// Where should we start returning scores from in the elements within this range?
  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => clearField(4);

  /// How many elements should we limit to returning? (8192 max)
  @$pb.TagNumber(5)
  $core.int get limitElements => $_getIZ(4);
  @$pb.TagNumber(5)
  set limitElements($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLimitElements() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimitElements() => clearField(5);

  @$pb.TagNumber(6)
  Order_ get order => $_getN(5);
  @$pb.TagNumber(6)
  set order(Order_ v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrder() => clearField(6);
}

class GetByScoreResponse_ extends $pb.GeneratedMessage {
  factory GetByScoreResponse_({
    $core.Iterable<RankedElement_>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  GetByScoreResponse_._() : super();
  factory GetByScoreResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByScoreResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GetByScoreResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'leaderboard'), createEmptyInstance: create)
    ..pc<RankedElement_>(1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM, subBuilder: RankedElement_.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByScoreResponse_ clone() => GetByScoreResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByScoreResponse_ copyWith(void Function(GetByScoreResponse_) updates) => super.copyWith((message) => updates(message as GetByScoreResponse_)) as GetByScoreResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByScoreResponse_ create() => GetByScoreResponse_._();
  GetByScoreResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetByScoreResponse_> createRepeated() => $pb.PbList<GetByScoreResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetByScoreResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByScoreResponse_>(create);
  static GetByScoreResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RankedElement_> get elements => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
