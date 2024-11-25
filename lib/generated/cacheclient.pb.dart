//
//  Generated code. Do not modify.
//  source: cacheclient.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'cacheclient.pbenum.dart';
import 'common.pb.dart' as $3;

export 'cacheclient.pbenum.dart';

class GetRequest_ extends $pb.GeneratedMessage {
  factory GetRequest_({
    $core.List<$core.int>? cacheKey,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    return $result;
  }
  GetRequest_._() : super();
  factory GetRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRequest_ clone() => GetRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRequest_ copyWith(void Function(GetRequest_) updates) =>
      super.copyWith((message) => updates(message as GetRequest_))
          as GetRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequest_ create() => GetRequest_._();
  GetRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetRequest_> createRepeated() => $pb.PbList<GetRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRequest_>(create);
  static GetRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);
}

class GetResponse_ extends $pb.GeneratedMessage {
  factory GetResponse_({
    ECacheResult? result,
    $core.List<$core.int>? cacheBody,
    $core.String? message,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (cacheBody != null) {
      $result.cacheBody = cacheBody;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  GetResponse_._() : super();
  factory GetResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..e<ECacheResult>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE,
        defaultOrMaker: ECacheResult.Invalid,
        valueOf: ECacheResult.valueOf,
        enumValues: ECacheResult.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'cacheBody', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetResponse_ clone() => GetResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetResponse_ copyWith(void Function(GetResponse_) updates) =>
      super.copyWith((message) => updates(message as GetResponse_))
          as GetResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetResponse_ create() => GetResponse_._();
  GetResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetResponse_> createRepeated() =>
      $pb.PbList<GetResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetResponse_>(create);
  static GetResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  ECacheResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ECacheResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get cacheBody => $_getN(1);
  @$pb.TagNumber(2)
  set cacheBody($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCacheBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearCacheBody() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class GetBatchRequest_ extends $pb.GeneratedMessage {
  factory GetBatchRequest_({
    $core.Iterable<GetRequest_>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  GetBatchRequest_._() : super();
  factory GetBatchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBatchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetBatchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..pc<GetRequest_>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: GetRequest_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBatchRequest_ clone() => GetBatchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBatchRequest_ copyWith(void Function(GetBatchRequest_) updates) =>
      super.copyWith((message) => updates(message as GetBatchRequest_))
          as GetBatchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBatchRequest_ create() => GetBatchRequest_._();
  GetBatchRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetBatchRequest_> createRepeated() =>
      $pb.PbList<GetBatchRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetBatchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBatchRequest_>(create);
  static GetBatchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRequest_> get items => $_getList(0);
}

class DeleteRequest_ extends $pb.GeneratedMessage {
  factory DeleteRequest_({
    $core.List<$core.int>? cacheKey,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    return $result;
  }
  DeleteRequest_._() : super();
  factory DeleteRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteRequest_ clone() => DeleteRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteRequest_ copyWith(void Function(DeleteRequest_) updates) =>
      super.copyWith((message) => updates(message as DeleteRequest_))
          as DeleteRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRequest_ create() => DeleteRequest_._();
  DeleteRequest_ createEmptyInstance() => create();
  static $pb.PbList<DeleteRequest_> createRepeated() =>
      $pb.PbList<DeleteRequest_>();
  @$core.pragma('dart2js:noInline')
  static DeleteRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRequest_>(create);
  static DeleteRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);
}

class DeleteResponse_ extends $pb.GeneratedMessage {
  factory DeleteResponse_() => create();
  DeleteResponse_._() : super();
  factory DeleteResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteResponse_ clone() => DeleteResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteResponse_ copyWith(void Function(DeleteResponse_) updates) =>
      super.copyWith((message) => updates(message as DeleteResponse_))
          as DeleteResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteResponse_ create() => DeleteResponse_._();
  DeleteResponse_ createEmptyInstance() => create();
  static $pb.PbList<DeleteResponse_> createRepeated() =>
      $pb.PbList<DeleteResponse_>();
  @$core.pragma('dart2js:noInline')
  static DeleteResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteResponse_>(create);
  static DeleteResponse_? _defaultInstance;
}

class SetRequest_ extends $pb.GeneratedMessage {
  factory SetRequest_({
    $core.List<$core.int>? cacheKey,
    $core.List<$core.int>? cacheBody,
    $fixnum.Int64? ttlMilliseconds,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    if (cacheBody != null) {
      $result.cacheBody = cacheBody;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    return $result;
  }
  SetRequest_._() : super();
  factory SetRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'cacheBody', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetRequest_ clone() => SetRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetRequest_ copyWith(void Function(SetRequest_) updates) =>
      super.copyWith((message) => updates(message as SetRequest_))
          as SetRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRequest_ create() => SetRequest_._();
  SetRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetRequest_> createRepeated() => $pb.PbList<SetRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetRequest_>(create);
  static SetRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get cacheBody => $_getN(1);
  @$pb.TagNumber(2)
  set cacheBody($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCacheBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearCacheBody() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);
}

class SetResponse_ extends $pb.GeneratedMessage {
  factory SetResponse_({
    ECacheResult? result,
    $core.String? message,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  SetResponse_._() : super();
  factory SetResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..e<ECacheResult>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE,
        defaultOrMaker: ECacheResult.Invalid,
        valueOf: ECacheResult.valueOf,
        enumValues: ECacheResult.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetResponse_ clone() => SetResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetResponse_ copyWith(void Function(SetResponse_) updates) =>
      super.copyWith((message) => updates(message as SetResponse_))
          as SetResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetResponse_ create() => SetResponse_._();
  SetResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetResponse_> createRepeated() =>
      $pb.PbList<SetResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetResponse_>(create);
  static SetResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  ECacheResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ECacheResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class SetBatchRequest_ extends $pb.GeneratedMessage {
  factory SetBatchRequest_({
    $core.Iterable<SetRequest_>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  SetBatchRequest_._() : super();
  factory SetBatchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetBatchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetBatchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..pc<SetRequest_>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: SetRequest_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetBatchRequest_ clone() => SetBatchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetBatchRequest_ copyWith(void Function(SetBatchRequest_) updates) =>
      super.copyWith((message) => updates(message as SetBatchRequest_))
          as SetBatchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBatchRequest_ create() => SetBatchRequest_._();
  SetBatchRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetBatchRequest_> createRepeated() =>
      $pb.PbList<SetBatchRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetBatchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetBatchRequest_>(create);
  static SetBatchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SetRequest_> get items => $_getList(0);
}

enum SetIfRequest__Condition {
  present,
  presentAndNotEqual,
  absent,
  equal,
  absentOrEqual,
  notEqual,
  notSet
}

class SetIfRequest_ extends $pb.GeneratedMessage {
  factory SetIfRequest_({
    $core.List<$core.int>? cacheKey,
    $core.List<$core.int>? cacheBody,
    $fixnum.Int64? ttlMilliseconds,
    $3.Present? present,
    $3.PresentAndNotEqual? presentAndNotEqual,
    $3.Absent? absent,
    $3.Equal? equal,
    $3.AbsentOrEqual? absentOrEqual,
    $3.NotEqual? notEqual,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    if (cacheBody != null) {
      $result.cacheBody = cacheBody;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (present != null) {
      $result.present = present;
    }
    if (presentAndNotEqual != null) {
      $result.presentAndNotEqual = presentAndNotEqual;
    }
    if (absent != null) {
      $result.absent = absent;
    }
    if (equal != null) {
      $result.equal = equal;
    }
    if (absentOrEqual != null) {
      $result.absentOrEqual = absentOrEqual;
    }
    if (notEqual != null) {
      $result.notEqual = notEqual;
    }
    return $result;
  }
  SetIfRequest_._() : super();
  factory SetIfRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetIfRequest__Condition>
      _SetIfRequest__ConditionByTag = {
    4: SetIfRequest__Condition.present,
    5: SetIfRequest__Condition.presentAndNotEqual,
    6: SetIfRequest__Condition.absent,
    7: SetIfRequest__Condition.equal,
    8: SetIfRequest__Condition.absentOrEqual,
    9: SetIfRequest__Condition.notEqual,
    0: SetIfRequest__Condition.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'cacheBody', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$3.Present>(4, _omitFieldNames ? '' : 'present',
        subBuilder: $3.Present.create)
    ..aOM<$3.PresentAndNotEqual>(5, _omitFieldNames ? '' : 'presentAndNotEqual',
        subBuilder: $3.PresentAndNotEqual.create)
    ..aOM<$3.Absent>(6, _omitFieldNames ? '' : 'absent',
        subBuilder: $3.Absent.create)
    ..aOM<$3.Equal>(7, _omitFieldNames ? '' : 'equal',
        subBuilder: $3.Equal.create)
    ..aOM<$3.AbsentOrEqual>(8, _omitFieldNames ? '' : 'absentOrEqual',
        subBuilder: $3.AbsentOrEqual.create)
    ..aOM<$3.NotEqual>(9, _omitFieldNames ? '' : 'notEqual',
        subBuilder: $3.NotEqual.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfRequest_ clone() => SetIfRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfRequest_ copyWith(void Function(SetIfRequest_) updates) =>
      super.copyWith((message) => updates(message as SetIfRequest_))
          as SetIfRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfRequest_ create() => SetIfRequest_._();
  SetIfRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetIfRequest_> createRepeated() =>
      $pb.PbList<SetIfRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetIfRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfRequest_>(create);
  static SetIfRequest_? _defaultInstance;

  SetIfRequest__Condition whichCondition() =>
      _SetIfRequest__ConditionByTag[$_whichOneof(0)]!;
  void clearCondition() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get cacheBody => $_getN(1);
  @$pb.TagNumber(2)
  set cacheBody($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCacheBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearCacheBody() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $3.Present get present => $_getN(3);
  @$pb.TagNumber(4)
  set present($3.Present v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPresent() => $_has(3);
  @$pb.TagNumber(4)
  void clearPresent() => clearField(4);
  @$pb.TagNumber(4)
  $3.Present ensurePresent() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.PresentAndNotEqual get presentAndNotEqual => $_getN(4);
  @$pb.TagNumber(5)
  set presentAndNotEqual($3.PresentAndNotEqual v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPresentAndNotEqual() => $_has(4);
  @$pb.TagNumber(5)
  void clearPresentAndNotEqual() => clearField(5);
  @$pb.TagNumber(5)
  $3.PresentAndNotEqual ensurePresentAndNotEqual() => $_ensure(4);

  @$pb.TagNumber(6)
  $3.Absent get absent => $_getN(5);
  @$pb.TagNumber(6)
  set absent($3.Absent v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAbsent() => $_has(5);
  @$pb.TagNumber(6)
  void clearAbsent() => clearField(6);
  @$pb.TagNumber(6)
  $3.Absent ensureAbsent() => $_ensure(5);

  @$pb.TagNumber(7)
  $3.Equal get equal => $_getN(6);
  @$pb.TagNumber(7)
  set equal($3.Equal v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasEqual() => $_has(6);
  @$pb.TagNumber(7)
  void clearEqual() => clearField(7);
  @$pb.TagNumber(7)
  $3.Equal ensureEqual() => $_ensure(6);

  @$pb.TagNumber(8)
  $3.AbsentOrEqual get absentOrEqual => $_getN(7);
  @$pb.TagNumber(8)
  set absentOrEqual($3.AbsentOrEqual v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasAbsentOrEqual() => $_has(7);
  @$pb.TagNumber(8)
  void clearAbsentOrEqual() => clearField(8);
  @$pb.TagNumber(8)
  $3.AbsentOrEqual ensureAbsentOrEqual() => $_ensure(7);

  @$pb.TagNumber(9)
  $3.NotEqual get notEqual => $_getN(8);
  @$pb.TagNumber(9)
  set notEqual($3.NotEqual v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasNotEqual() => $_has(8);
  @$pb.TagNumber(9)
  void clearNotEqual() => clearField(9);
  @$pb.TagNumber(9)
  $3.NotEqual ensureNotEqual() => $_ensure(8);
}

class SetIfResponse___Stored extends $pb.GeneratedMessage {
  factory SetIfResponse___Stored() => create();
  SetIfResponse___Stored._() : super();
  factory SetIfResponse___Stored.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfResponse___Stored.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfResponse._Stored',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfResponse___Stored clone() =>
      SetIfResponse___Stored()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfResponse___Stored copyWith(
          void Function(SetIfResponse___Stored) updates) =>
      super.copyWith((message) => updates(message as SetIfResponse___Stored))
          as SetIfResponse___Stored;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfResponse___Stored create() => SetIfResponse___Stored._();
  SetIfResponse___Stored createEmptyInstance() => create();
  static $pb.PbList<SetIfResponse___Stored> createRepeated() =>
      $pb.PbList<SetIfResponse___Stored>();
  @$core.pragma('dart2js:noInline')
  static SetIfResponse___Stored getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfResponse___Stored>(create);
  static SetIfResponse___Stored? _defaultInstance;
}

class SetIfResponse___NotStored extends $pb.GeneratedMessage {
  factory SetIfResponse___NotStored() => create();
  SetIfResponse___NotStored._() : super();
  factory SetIfResponse___NotStored.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfResponse___NotStored.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfResponse._NotStored',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfResponse___NotStored clone() =>
      SetIfResponse___NotStored()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfResponse___NotStored copyWith(
          void Function(SetIfResponse___NotStored) updates) =>
      super.copyWith((message) => updates(message as SetIfResponse___NotStored))
          as SetIfResponse___NotStored;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfResponse___NotStored create() => SetIfResponse___NotStored._();
  SetIfResponse___NotStored createEmptyInstance() => create();
  static $pb.PbList<SetIfResponse___NotStored> createRepeated() =>
      $pb.PbList<SetIfResponse___NotStored>();
  @$core.pragma('dart2js:noInline')
  static SetIfResponse___NotStored getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfResponse___NotStored>(create);
  static SetIfResponse___NotStored? _defaultInstance;
}

enum SetIfResponse__Result { stored, notStored, notSet }

class SetIfResponse_ extends $pb.GeneratedMessage {
  factory SetIfResponse_({
    SetIfResponse___Stored? stored,
    SetIfResponse___NotStored? notStored,
  }) {
    final $result = create();
    if (stored != null) {
      $result.stored = stored;
    }
    if (notStored != null) {
      $result.notStored = notStored;
    }
    return $result;
  }
  SetIfResponse_._() : super();
  factory SetIfResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetIfResponse__Result>
      _SetIfResponse__ResultByTag = {
    1: SetIfResponse__Result.stored,
    2: SetIfResponse__Result.notStored,
    0: SetIfResponse__Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetIfResponse___Stored>(1, _omitFieldNames ? '' : 'stored',
        subBuilder: SetIfResponse___Stored.create)
    ..aOM<SetIfResponse___NotStored>(2, _omitFieldNames ? '' : 'notStored',
        subBuilder: SetIfResponse___NotStored.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfResponse_ clone() => SetIfResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfResponse_ copyWith(void Function(SetIfResponse_) updates) =>
      super.copyWith((message) => updates(message as SetIfResponse_))
          as SetIfResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfResponse_ create() => SetIfResponse_._();
  SetIfResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetIfResponse_> createRepeated() =>
      $pb.PbList<SetIfResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetIfResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfResponse_>(create);
  static SetIfResponse_? _defaultInstance;

  SetIfResponse__Result whichResult() =>
      _SetIfResponse__ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetIfResponse___Stored get stored => $_getN(0);
  @$pb.TagNumber(1)
  set stored(SetIfResponse___Stored v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStored() => $_has(0);
  @$pb.TagNumber(1)
  void clearStored() => clearField(1);
  @$pb.TagNumber(1)
  SetIfResponse___Stored ensureStored() => $_ensure(0);

  @$pb.TagNumber(2)
  SetIfResponse___NotStored get notStored => $_getN(1);
  @$pb.TagNumber(2)
  set notStored(SetIfResponse___NotStored v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNotStored() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotStored() => clearField(2);
  @$pb.TagNumber(2)
  SetIfResponse___NotStored ensureNotStored() => $_ensure(1);
}

class SetIfNotExistsRequest_ extends $pb.GeneratedMessage {
  factory SetIfNotExistsRequest_({
    $core.List<$core.int>? cacheKey,
    $core.List<$core.int>? cacheBody,
    $fixnum.Int64? ttlMilliseconds,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    if (cacheBody != null) {
      $result.cacheBody = cacheBody;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    return $result;
  }
  SetIfNotExistsRequest_._() : super();
  factory SetIfNotExistsRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfNotExistsRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfNotExistsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'cacheBody', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfNotExistsRequest_ clone() =>
      SetIfNotExistsRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfNotExistsRequest_ copyWith(
          void Function(SetIfNotExistsRequest_) updates) =>
      super.copyWith((message) => updates(message as SetIfNotExistsRequest_))
          as SetIfNotExistsRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsRequest_ create() => SetIfNotExistsRequest_._();
  SetIfNotExistsRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetIfNotExistsRequest_> createRepeated() =>
      $pb.PbList<SetIfNotExistsRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfNotExistsRequest_>(create);
  static SetIfNotExistsRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get cacheBody => $_getN(1);
  @$pb.TagNumber(2)
  set cacheBody($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCacheBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearCacheBody() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);
}

class SetIfNotExistsResponse___Stored extends $pb.GeneratedMessage {
  factory SetIfNotExistsResponse___Stored() => create();
  SetIfNotExistsResponse___Stored._() : super();
  factory SetIfNotExistsResponse___Stored.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfNotExistsResponse___Stored.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfNotExistsResponse._Stored',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfNotExistsResponse___Stored clone() =>
      SetIfNotExistsResponse___Stored()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfNotExistsResponse___Stored copyWith(
          void Function(SetIfNotExistsResponse___Stored) updates) =>
      super.copyWith(
              (message) => updates(message as SetIfNotExistsResponse___Stored))
          as SetIfNotExistsResponse___Stored;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsResponse___Stored create() =>
      SetIfNotExistsResponse___Stored._();
  SetIfNotExistsResponse___Stored createEmptyInstance() => create();
  static $pb.PbList<SetIfNotExistsResponse___Stored> createRepeated() =>
      $pb.PbList<SetIfNotExistsResponse___Stored>();
  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsResponse___Stored getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfNotExistsResponse___Stored>(
          create);
  static SetIfNotExistsResponse___Stored? _defaultInstance;
}

class SetIfNotExistsResponse___NotStored extends $pb.GeneratedMessage {
  factory SetIfNotExistsResponse___NotStored() => create();
  SetIfNotExistsResponse___NotStored._() : super();
  factory SetIfNotExistsResponse___NotStored.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfNotExistsResponse___NotStored.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfNotExistsResponse._NotStored',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfNotExistsResponse___NotStored clone() =>
      SetIfNotExistsResponse___NotStored()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfNotExistsResponse___NotStored copyWith(
          void Function(SetIfNotExistsResponse___NotStored) updates) =>
      super.copyWith((message) =>
              updates(message as SetIfNotExistsResponse___NotStored))
          as SetIfNotExistsResponse___NotStored;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsResponse___NotStored create() =>
      SetIfNotExistsResponse___NotStored._();
  SetIfNotExistsResponse___NotStored createEmptyInstance() => create();
  static $pb.PbList<SetIfNotExistsResponse___NotStored> createRepeated() =>
      $pb.PbList<SetIfNotExistsResponse___NotStored>();
  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsResponse___NotStored getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfNotExistsResponse___NotStored>(
          create);
  static SetIfNotExistsResponse___NotStored? _defaultInstance;
}

enum SetIfNotExistsResponse__Result { stored, notStored, notSet }

class SetIfNotExistsResponse_ extends $pb.GeneratedMessage {
  factory SetIfNotExistsResponse_({
    SetIfNotExistsResponse___Stored? stored,
    SetIfNotExistsResponse___NotStored? notStored,
  }) {
    final $result = create();
    if (stored != null) {
      $result.stored = stored;
    }
    if (notStored != null) {
      $result.notStored = notStored;
    }
    return $result;
  }
  SetIfNotExistsResponse_._() : super();
  factory SetIfNotExistsResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetIfNotExistsResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetIfNotExistsResponse__Result>
      _SetIfNotExistsResponse__ResultByTag = {
    1: SetIfNotExistsResponse__Result.stored,
    2: SetIfNotExistsResponse__Result.notStored,
    0: SetIfNotExistsResponse__Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetIfNotExistsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetIfNotExistsResponse___Stored>(1, _omitFieldNames ? '' : 'stored',
        subBuilder: SetIfNotExistsResponse___Stored.create)
    ..aOM<SetIfNotExistsResponse___NotStored>(
        2, _omitFieldNames ? '' : 'notStored',
        subBuilder: SetIfNotExistsResponse___NotStored.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetIfNotExistsResponse_ clone() =>
      SetIfNotExistsResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetIfNotExistsResponse_ copyWith(
          void Function(SetIfNotExistsResponse_) updates) =>
      super.copyWith((message) => updates(message as SetIfNotExistsResponse_))
          as SetIfNotExistsResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsResponse_ create() => SetIfNotExistsResponse_._();
  SetIfNotExistsResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetIfNotExistsResponse_> createRepeated() =>
      $pb.PbList<SetIfNotExistsResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetIfNotExistsResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetIfNotExistsResponse_>(create);
  static SetIfNotExistsResponse_? _defaultInstance;

  SetIfNotExistsResponse__Result whichResult() =>
      _SetIfNotExistsResponse__ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetIfNotExistsResponse___Stored get stored => $_getN(0);
  @$pb.TagNumber(1)
  set stored(SetIfNotExistsResponse___Stored v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStored() => $_has(0);
  @$pb.TagNumber(1)
  void clearStored() => clearField(1);
  @$pb.TagNumber(1)
  SetIfNotExistsResponse___Stored ensureStored() => $_ensure(0);

  @$pb.TagNumber(2)
  SetIfNotExistsResponse___NotStored get notStored => $_getN(1);
  @$pb.TagNumber(2)
  set notStored(SetIfNotExistsResponse___NotStored v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNotStored() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotStored() => clearField(2);
  @$pb.TagNumber(2)
  SetIfNotExistsResponse___NotStored ensureNotStored() => $_ensure(1);
}

class KeysExistRequest_ extends $pb.GeneratedMessage {
  factory KeysExistRequest_({
    $core.Iterable<$core.List<$core.int>>? cacheKeys,
  }) {
    final $result = create();
    if (cacheKeys != null) {
      $result.cacheKeys.addAll(cacheKeys);
    }
    return $result;
  }
  KeysExistRequest_._() : super();
  factory KeysExistRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KeysExistRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_KeysExistRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKeys', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KeysExistRequest_ clone() => KeysExistRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KeysExistRequest_ copyWith(void Function(KeysExistRequest_) updates) =>
      super.copyWith((message) => updates(message as KeysExistRequest_))
          as KeysExistRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeysExistRequest_ create() => KeysExistRequest_._();
  KeysExistRequest_ createEmptyInstance() => create();
  static $pb.PbList<KeysExistRequest_> createRepeated() =>
      $pb.PbList<KeysExistRequest_>();
  @$core.pragma('dart2js:noInline')
  static KeysExistRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeysExistRequest_>(create);
  static KeysExistRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get cacheKeys => $_getList(0);
}

class KeysExistResponse_ extends $pb.GeneratedMessage {
  factory KeysExistResponse_({
    $core.Iterable<$core.bool>? exists,
  }) {
    final $result = create();
    if (exists != null) {
      $result.exists.addAll(exists);
    }
    return $result;
  }
  KeysExistResponse_._() : super();
  factory KeysExistResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KeysExistResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_KeysExistResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.bool>(1, _omitFieldNames ? '' : 'exists', $pb.PbFieldType.KB)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KeysExistResponse_ clone() => KeysExistResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KeysExistResponse_ copyWith(void Function(KeysExistResponse_) updates) =>
      super.copyWith((message) => updates(message as KeysExistResponse_))
          as KeysExistResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeysExistResponse_ create() => KeysExistResponse_._();
  KeysExistResponse_ createEmptyInstance() => create();
  static $pb.PbList<KeysExistResponse_> createRepeated() =>
      $pb.PbList<KeysExistResponse_>();
  @$core.pragma('dart2js:noInline')
  static KeysExistResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeysExistResponse_>(create);
  static KeysExistResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.bool> get exists => $_getList(0);
}

class IncrementRequest_ extends $pb.GeneratedMessage {
  factory IncrementRequest_({
    $core.List<$core.int>? cacheKey,
    $fixnum.Int64? amount,
    $fixnum.Int64? ttlMilliseconds,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    return $result;
  }
  IncrementRequest_._() : super();
  factory IncrementRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IncrementRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_IncrementRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..aInt64(2, _omitFieldNames ? '' : 'amount')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IncrementRequest_ clone() => IncrementRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IncrementRequest_ copyWith(void Function(IncrementRequest_) updates) =>
      super.copyWith((message) => updates(message as IncrementRequest_))
          as IncrementRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IncrementRequest_ create() => IncrementRequest_._();
  IncrementRequest_ createEmptyInstance() => create();
  static $pb.PbList<IncrementRequest_> createRepeated() =>
      $pb.PbList<IncrementRequest_>();
  @$core.pragma('dart2js:noInline')
  static IncrementRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IncrementRequest_>(create);
  static IncrementRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);

  /// Amount to add to the stored value.
  /// If this key doesn't currently exist, it's created with this value (encoded as a base 10 string)
  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);
}

class IncrementResponse_ extends $pb.GeneratedMessage {
  factory IncrementResponse_({
    $fixnum.Int64? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  IncrementResponse_._() : super();
  factory IncrementResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IncrementResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_IncrementResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IncrementResponse_ clone() => IncrementResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IncrementResponse_ copyWith(void Function(IncrementResponse_) updates) =>
      super.copyWith((message) => updates(message as IncrementResponse_))
          as IncrementResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IncrementResponse_ create() => IncrementResponse_._();
  IncrementResponse_ createEmptyInstance() => create();
  static $pb.PbList<IncrementResponse_> createRepeated() =>
      $pb.PbList<IncrementResponse_>();
  @$core.pragma('dart2js:noInline')
  static IncrementResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IncrementResponse_>(create);
  static IncrementResponse_? _defaultInstance;

  /// The value stored after the increment operation.
  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

enum UpdateTtlRequest__UpdateTtl {
  increaseToMilliseconds,
  decreaseToMilliseconds,
  overwriteToMilliseconds,
  notSet
}

class UpdateTtlRequest_ extends $pb.GeneratedMessage {
  factory UpdateTtlRequest_({
    $core.List<$core.int>? cacheKey,
    $fixnum.Int64? increaseToMilliseconds,
    $fixnum.Int64? decreaseToMilliseconds,
    $fixnum.Int64? overwriteToMilliseconds,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    if (increaseToMilliseconds != null) {
      $result.increaseToMilliseconds = increaseToMilliseconds;
    }
    if (decreaseToMilliseconds != null) {
      $result.decreaseToMilliseconds = decreaseToMilliseconds;
    }
    if (overwriteToMilliseconds != null) {
      $result.overwriteToMilliseconds = overwriteToMilliseconds;
    }
    return $result;
  }
  UpdateTtlRequest_._() : super();
  factory UpdateTtlRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateTtlRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpdateTtlRequest__UpdateTtl>
      _UpdateTtlRequest__UpdateTtlByTag = {
    2: UpdateTtlRequest__UpdateTtl.increaseToMilliseconds,
    3: UpdateTtlRequest__UpdateTtl.decreaseToMilliseconds,
    4: UpdateTtlRequest__UpdateTtl.overwriteToMilliseconds,
    0: UpdateTtlRequest__UpdateTtl.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_UpdateTtlRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'increaseToMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'decreaseToMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'overwriteToMilliseconds',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateTtlRequest_ clone() => UpdateTtlRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateTtlRequest_ copyWith(void Function(UpdateTtlRequest_) updates) =>
      super.copyWith((message) => updates(message as UpdateTtlRequest_))
          as UpdateTtlRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTtlRequest_ create() => UpdateTtlRequest_._();
  UpdateTtlRequest_ createEmptyInstance() => create();
  static $pb.PbList<UpdateTtlRequest_> createRepeated() =>
      $pb.PbList<UpdateTtlRequest_>();
  @$core.pragma('dart2js:noInline')
  static UpdateTtlRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTtlRequest_>(create);
  static UpdateTtlRequest_? _defaultInstance;

  UpdateTtlRequest__UpdateTtl whichUpdateTtl() =>
      _UpdateTtlRequest__UpdateTtlByTag[$_whichOneof(0)]!;
  void clearUpdateTtl() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);

  /// Sets the ttl to this value only if it is an increase compared to the existing ttl
  @$pb.TagNumber(2)
  $fixnum.Int64 get increaseToMilliseconds => $_getI64(1);
  @$pb.TagNumber(2)
  set increaseToMilliseconds($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIncreaseToMilliseconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncreaseToMilliseconds() => clearField(2);

  /// Sets the ttl to this value only if it is a decrease compared to the existing ttl
  @$pb.TagNumber(3)
  $fixnum.Int64 get decreaseToMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set decreaseToMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDecreaseToMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecreaseToMilliseconds() => clearField(3);

  /// Sets the ttl to this value unconditionally
  @$pb.TagNumber(4)
  $fixnum.Int64 get overwriteToMilliseconds => $_getI64(3);
  @$pb.TagNumber(4)
  set overwriteToMilliseconds($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOverwriteToMilliseconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearOverwriteToMilliseconds() => clearField(4);
}

/// Indicates that the ttl was applied.
class UpdateTtlResponse___Set extends $pb.GeneratedMessage {
  factory UpdateTtlResponse___Set() => create();
  UpdateTtlResponse___Set._() : super();
  factory UpdateTtlResponse___Set.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateTtlResponse___Set.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_UpdateTtlResponse._Set',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse___Set clone() =>
      UpdateTtlResponse___Set()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse___Set copyWith(
          void Function(UpdateTtlResponse___Set) updates) =>
      super.copyWith((message) => updates(message as UpdateTtlResponse___Set))
          as UpdateTtlResponse___Set;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse___Set create() => UpdateTtlResponse___Set._();
  UpdateTtlResponse___Set createEmptyInstance() => create();
  static $pb.PbList<UpdateTtlResponse___Set> createRepeated() =>
      $pb.PbList<UpdateTtlResponse___Set>();
  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse___Set getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTtlResponse___Set>(create);
  static UpdateTtlResponse___Set? _defaultInstance;
}

/// Indicates that the ttl was not applied due to a failed condition.
class UpdateTtlResponse___NotSet extends $pb.GeneratedMessage {
  factory UpdateTtlResponse___NotSet() => create();
  UpdateTtlResponse___NotSet._() : super();
  factory UpdateTtlResponse___NotSet.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateTtlResponse___NotSet.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_UpdateTtlResponse._NotSet',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse___NotSet clone() =>
      UpdateTtlResponse___NotSet()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse___NotSet copyWith(
          void Function(UpdateTtlResponse___NotSet) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateTtlResponse___NotSet))
          as UpdateTtlResponse___NotSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse___NotSet create() => UpdateTtlResponse___NotSet._();
  UpdateTtlResponse___NotSet createEmptyInstance() => create();
  static $pb.PbList<UpdateTtlResponse___NotSet> createRepeated() =>
      $pb.PbList<UpdateTtlResponse___NotSet>();
  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse___NotSet getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTtlResponse___NotSet>(create);
  static UpdateTtlResponse___NotSet? _defaultInstance;
}

/// Indicates that the key did not exist.
class UpdateTtlResponse___Missing extends $pb.GeneratedMessage {
  factory UpdateTtlResponse___Missing() => create();
  UpdateTtlResponse___Missing._() : super();
  factory UpdateTtlResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateTtlResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_UpdateTtlResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse___Missing clone() =>
      UpdateTtlResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse___Missing copyWith(
          void Function(UpdateTtlResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateTtlResponse___Missing))
          as UpdateTtlResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse___Missing create() =>
      UpdateTtlResponse___Missing._();
  UpdateTtlResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<UpdateTtlResponse___Missing> createRepeated() =>
      $pb.PbList<UpdateTtlResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTtlResponse___Missing>(create);
  static UpdateTtlResponse___Missing? _defaultInstance;
}

enum UpdateTtlResponse__Result { set, notSet_2, missing, notSet }

class UpdateTtlResponse_ extends $pb.GeneratedMessage {
  factory UpdateTtlResponse_({
    UpdateTtlResponse___Set? set,
    UpdateTtlResponse___NotSet? notSet_2,
    UpdateTtlResponse___Missing? missing,
  }) {
    final $result = create();
    if (set != null) {
      $result.set = set;
    }
    if (notSet_2 != null) {
      $result.notSet_2 = notSet_2;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  UpdateTtlResponse_._() : super();
  factory UpdateTtlResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateTtlResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpdateTtlResponse__Result>
      _UpdateTtlResponse__ResultByTag = {
    1: UpdateTtlResponse__Result.set,
    2: UpdateTtlResponse__Result.notSet_2,
    3: UpdateTtlResponse__Result.missing,
    0: UpdateTtlResponse__Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_UpdateTtlResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<UpdateTtlResponse___Set>(1, _omitFieldNames ? '' : 'set',
        subBuilder: UpdateTtlResponse___Set.create)
    ..aOM<UpdateTtlResponse___NotSet>(2, _omitFieldNames ? '' : 'notSet',
        subBuilder: UpdateTtlResponse___NotSet.create)
    ..aOM<UpdateTtlResponse___Missing>(3, _omitFieldNames ? '' : 'missing',
        subBuilder: UpdateTtlResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse_ clone() => UpdateTtlResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateTtlResponse_ copyWith(void Function(UpdateTtlResponse_) updates) =>
      super.copyWith((message) => updates(message as UpdateTtlResponse_))
          as UpdateTtlResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse_ create() => UpdateTtlResponse_._();
  UpdateTtlResponse_ createEmptyInstance() => create();
  static $pb.PbList<UpdateTtlResponse_> createRepeated() =>
      $pb.PbList<UpdateTtlResponse_>();
  @$core.pragma('dart2js:noInline')
  static UpdateTtlResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTtlResponse_>(create);
  static UpdateTtlResponse_? _defaultInstance;

  UpdateTtlResponse__Result whichResult() =>
      _UpdateTtlResponse__ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  UpdateTtlResponse___Set get set => $_getN(0);
  @$pb.TagNumber(1)
  set set(UpdateTtlResponse___Set v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearSet() => clearField(1);
  @$pb.TagNumber(1)
  UpdateTtlResponse___Set ensureSet() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateTtlResponse___NotSet get notSet_2 => $_getN(1);
  @$pb.TagNumber(2)
  set notSet_2(UpdateTtlResponse___NotSet v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNotSet_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotSet_2() => clearField(2);
  @$pb.TagNumber(2)
  UpdateTtlResponse___NotSet ensureNotSet_2() => $_ensure(1);

  @$pb.TagNumber(3)
  UpdateTtlResponse___Missing get missing => $_getN(2);
  @$pb.TagNumber(3)
  set missing(UpdateTtlResponse___Missing v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMissing() => $_has(2);
  @$pb.TagNumber(3)
  void clearMissing() => clearField(3);
  @$pb.TagNumber(3)
  UpdateTtlResponse___Missing ensureMissing() => $_ensure(2);
}

class ItemGetTtlRequest_ extends $pb.GeneratedMessage {
  factory ItemGetTtlRequest_({
    $core.List<$core.int>? cacheKey,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    return $result;
  }
  ItemGetTtlRequest_._() : super();
  factory ItemGetTtlRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTtlRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTtlRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTtlRequest_ clone() => ItemGetTtlRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTtlRequest_ copyWith(void Function(ItemGetTtlRequest_) updates) =>
      super.copyWith((message) => updates(message as ItemGetTtlRequest_))
          as ItemGetTtlRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTtlRequest_ create() => ItemGetTtlRequest_._();
  ItemGetTtlRequest_ createEmptyInstance() => create();
  static $pb.PbList<ItemGetTtlRequest_> createRepeated() =>
      $pb.PbList<ItemGetTtlRequest_>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTtlRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTtlRequest_>(create);
  static ItemGetTtlRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);
}

class ItemGetTtlResponse___Found extends $pb.GeneratedMessage {
  factory ItemGetTtlResponse___Found({
    $fixnum.Int64? remainingTtlMillis,
  }) {
    final $result = create();
    if (remainingTtlMillis != null) {
      $result.remainingTtlMillis = remainingTtlMillis;
    }
    return $result;
  }
  ItemGetTtlResponse___Found._() : super();
  factory ItemGetTtlResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTtlResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTtlResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'remainingTtlMillis', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTtlResponse___Found clone() =>
      ItemGetTtlResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTtlResponse___Found copyWith(
          void Function(ItemGetTtlResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as ItemGetTtlResponse___Found))
          as ItemGetTtlResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTtlResponse___Found create() => ItemGetTtlResponse___Found._();
  ItemGetTtlResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ItemGetTtlResponse___Found> createRepeated() =>
      $pb.PbList<ItemGetTtlResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTtlResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTtlResponse___Found>(create);
  static ItemGetTtlResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get remainingTtlMillis => $_getI64(0);
  @$pb.TagNumber(1)
  set remainingTtlMillis($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRemainingTtlMillis() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemainingTtlMillis() => clearField(1);
}

class ItemGetTtlResponse___Missing extends $pb.GeneratedMessage {
  factory ItemGetTtlResponse___Missing() => create();
  ItemGetTtlResponse___Missing._() : super();
  factory ItemGetTtlResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTtlResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTtlResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTtlResponse___Missing clone() =>
      ItemGetTtlResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTtlResponse___Missing copyWith(
          void Function(ItemGetTtlResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ItemGetTtlResponse___Missing))
          as ItemGetTtlResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTtlResponse___Missing create() =>
      ItemGetTtlResponse___Missing._();
  ItemGetTtlResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ItemGetTtlResponse___Missing> createRepeated() =>
      $pb.PbList<ItemGetTtlResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTtlResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTtlResponse___Missing>(create);
  static ItemGetTtlResponse___Missing? _defaultInstance;
}

enum ItemGetTtlResponse__Result { found, missing, notSet }

class ItemGetTtlResponse_ extends $pb.GeneratedMessage {
  factory ItemGetTtlResponse_({
    ItemGetTtlResponse___Found? found,
    ItemGetTtlResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ItemGetTtlResponse_._() : super();
  factory ItemGetTtlResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTtlResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ItemGetTtlResponse__Result>
      _ItemGetTtlResponse__ResultByTag = {
    1: ItemGetTtlResponse__Result.found,
    2: ItemGetTtlResponse__Result.missing,
    0: ItemGetTtlResponse__Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTtlResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ItemGetTtlResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ItemGetTtlResponse___Found.create)
    ..aOM<ItemGetTtlResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ItemGetTtlResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTtlResponse_ clone() => ItemGetTtlResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTtlResponse_ copyWith(void Function(ItemGetTtlResponse_) updates) =>
      super.copyWith((message) => updates(message as ItemGetTtlResponse_))
          as ItemGetTtlResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTtlResponse_ create() => ItemGetTtlResponse_._();
  ItemGetTtlResponse_ createEmptyInstance() => create();
  static $pb.PbList<ItemGetTtlResponse_> createRepeated() =>
      $pb.PbList<ItemGetTtlResponse_>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTtlResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTtlResponse_>(create);
  static ItemGetTtlResponse_? _defaultInstance;

  ItemGetTtlResponse__Result whichResult() =>
      _ItemGetTtlResponse__ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ItemGetTtlResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ItemGetTtlResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ItemGetTtlResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ItemGetTtlResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ItemGetTtlResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ItemGetTtlResponse___Missing ensureMissing() => $_ensure(1);
}

class ItemGetTypeRequest_ extends $pb.GeneratedMessage {
  factory ItemGetTypeRequest_({
    $core.List<$core.int>? cacheKey,
  }) {
    final $result = create();
    if (cacheKey != null) {
      $result.cacheKey = cacheKey;
    }
    return $result;
  }
  ItemGetTypeRequest_._() : super();
  factory ItemGetTypeRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTypeRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTypeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cacheKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTypeRequest_ clone() => ItemGetTypeRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTypeRequest_ copyWith(void Function(ItemGetTypeRequest_) updates) =>
      super.copyWith((message) => updates(message as ItemGetTypeRequest_))
          as ItemGetTypeRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTypeRequest_ create() => ItemGetTypeRequest_._();
  ItemGetTypeRequest_ createEmptyInstance() => create();
  static $pb.PbList<ItemGetTypeRequest_> createRepeated() =>
      $pb.PbList<ItemGetTypeRequest_>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTypeRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTypeRequest_>(create);
  static ItemGetTypeRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cacheKey => $_getN(0);
  @$pb.TagNumber(1)
  set cacheKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheKey() => clearField(1);
}

class ItemGetTypeResponse___Found extends $pb.GeneratedMessage {
  factory ItemGetTypeResponse___Found({
    ItemGetTypeResponse__ItemType? itemType,
  }) {
    final $result = create();
    if (itemType != null) {
      $result.itemType = itemType;
    }
    return $result;
  }
  ItemGetTypeResponse___Found._() : super();
  factory ItemGetTypeResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTypeResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTypeResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..e<ItemGetTypeResponse__ItemType>(
        1, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.OE,
        defaultOrMaker: ItemGetTypeResponse__ItemType.SCALAR,
        valueOf: ItemGetTypeResponse__ItemType.valueOf,
        enumValues: ItemGetTypeResponse__ItemType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTypeResponse___Found clone() =>
      ItemGetTypeResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTypeResponse___Found copyWith(
          void Function(ItemGetTypeResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as ItemGetTypeResponse___Found))
          as ItemGetTypeResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTypeResponse___Found create() =>
      ItemGetTypeResponse___Found._();
  ItemGetTypeResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ItemGetTypeResponse___Found> createRepeated() =>
      $pb.PbList<ItemGetTypeResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTypeResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTypeResponse___Found>(create);
  static ItemGetTypeResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  ItemGetTypeResponse__ItemType get itemType => $_getN(0);
  @$pb.TagNumber(1)
  set itemType(ItemGetTypeResponse__ItemType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemType() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemType() => clearField(1);
}

class ItemGetTypeResponse___Missing extends $pb.GeneratedMessage {
  factory ItemGetTypeResponse___Missing() => create();
  ItemGetTypeResponse___Missing._() : super();
  factory ItemGetTypeResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTypeResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTypeResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTypeResponse___Missing clone() =>
      ItemGetTypeResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTypeResponse___Missing copyWith(
          void Function(ItemGetTypeResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ItemGetTypeResponse___Missing))
          as ItemGetTypeResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTypeResponse___Missing create() =>
      ItemGetTypeResponse___Missing._();
  ItemGetTypeResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ItemGetTypeResponse___Missing> createRepeated() =>
      $pb.PbList<ItemGetTypeResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTypeResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTypeResponse___Missing>(create);
  static ItemGetTypeResponse___Missing? _defaultInstance;
}

enum ItemGetTypeResponse__Result { found, missing, notSet }

class ItemGetTypeResponse_ extends $pb.GeneratedMessage {
  factory ItemGetTypeResponse_({
    ItemGetTypeResponse___Found? found,
    ItemGetTypeResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ItemGetTypeResponse_._() : super();
  factory ItemGetTypeResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemGetTypeResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ItemGetTypeResponse__Result>
      _ItemGetTypeResponse__ResultByTag = {
    1: ItemGetTypeResponse__Result.found,
    2: ItemGetTypeResponse__Result.missing,
    0: ItemGetTypeResponse__Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemGetTypeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ItemGetTypeResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ItemGetTypeResponse___Found.create)
    ..aOM<ItemGetTypeResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ItemGetTypeResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemGetTypeResponse_ clone() =>
      ItemGetTypeResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemGetTypeResponse_ copyWith(void Function(ItemGetTypeResponse_) updates) =>
      super.copyWith((message) => updates(message as ItemGetTypeResponse_))
          as ItemGetTypeResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemGetTypeResponse_ create() => ItemGetTypeResponse_._();
  ItemGetTypeResponse_ createEmptyInstance() => create();
  static $pb.PbList<ItemGetTypeResponse_> createRepeated() =>
      $pb.PbList<ItemGetTypeResponse_>();
  @$core.pragma('dart2js:noInline')
  static ItemGetTypeResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemGetTypeResponse_>(create);
  static ItemGetTypeResponse_? _defaultInstance;

  ItemGetTypeResponse__Result whichResult() =>
      _ItemGetTypeResponse__ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ItemGetTypeResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ItemGetTypeResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ItemGetTypeResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ItemGetTypeResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ItemGetTypeResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ItemGetTypeResponse___Missing ensureMissing() => $_ensure(1);
}

class DictionaryGetRequest_ extends $pb.GeneratedMessage {
  factory DictionaryGetRequest_({
    $core.List<$core.int>? dictionaryName,
    $core.Iterable<$core.List<$core.int>>? fields,
  }) {
    final $result = create();
    if (dictionaryName != null) {
      $result.dictionaryName = dictionaryName;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  DictionaryGetRequest_._() : super();
  factory DictionaryGetRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryGetRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryGetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dictionaryName', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'fields', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryGetRequest_ clone() =>
      DictionaryGetRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryGetRequest_ copyWith(
          void Function(DictionaryGetRequest_) updates) =>
      super.copyWith((message) => updates(message as DictionaryGetRequest_))
          as DictionaryGetRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryGetRequest_ create() => DictionaryGetRequest_._();
  DictionaryGetRequest_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryGetRequest_> createRepeated() =>
      $pb.PbList<DictionaryGetRequest_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryGetRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryGetRequest_>(create);
  static DictionaryGetRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dictionaryName => $_getN(0);
  @$pb.TagNumber(1)
  set dictionaryName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDictionaryName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDictionaryName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get fields => $_getList(1);
}

class DictionaryGetResponse___DictionaryGetResponsePart
    extends $pb.GeneratedMessage {
  factory DictionaryGetResponse___DictionaryGetResponsePart({
    ECacheResult? result,
    $core.List<$core.int>? cacheBody,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (cacheBody != null) {
      $result.cacheBody = cacheBody;
    }
    return $result;
  }
  DictionaryGetResponse___DictionaryGetResponsePart._() : super();
  factory DictionaryGetResponse___DictionaryGetResponsePart.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryGetResponse___DictionaryGetResponsePart.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : '_DictionaryGetResponse._DictionaryGetResponsePart',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..e<ECacheResult>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE,
        defaultOrMaker: ECacheResult.Invalid,
        valueOf: ECacheResult.valueOf,
        enumValues: ECacheResult.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'cacheBody', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse___DictionaryGetResponsePart clone() =>
      DictionaryGetResponse___DictionaryGetResponsePart()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse___DictionaryGetResponsePart copyWith(
          void Function(DictionaryGetResponse___DictionaryGetResponsePart)
              updates) =>
      super.copyWith((message) => updates(
              message as DictionaryGetResponse___DictionaryGetResponsePart))
          as DictionaryGetResponse___DictionaryGetResponsePart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse___DictionaryGetResponsePart create() =>
      DictionaryGetResponse___DictionaryGetResponsePart._();
  DictionaryGetResponse___DictionaryGetResponsePart createEmptyInstance() =>
      create();
  static $pb.PbList<DictionaryGetResponse___DictionaryGetResponsePart>
      createRepeated() =>
          $pb.PbList<DictionaryGetResponse___DictionaryGetResponsePart>();
  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse___DictionaryGetResponsePart getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          DictionaryGetResponse___DictionaryGetResponsePart>(create);
  static DictionaryGetResponse___DictionaryGetResponsePart? _defaultInstance;

  @$pb.TagNumber(1)
  ECacheResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ECacheResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get cacheBody => $_getN(1);
  @$pb.TagNumber(2)
  set cacheBody($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCacheBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearCacheBody() => clearField(2);
}

class DictionaryGetResponse___Found extends $pb.GeneratedMessage {
  factory DictionaryGetResponse___Found({
    $core.Iterable<DictionaryGetResponse___DictionaryGetResponsePart>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  DictionaryGetResponse___Found._() : super();
  factory DictionaryGetResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryGetResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryGetResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..pc<DictionaryGetResponse___DictionaryGetResponsePart>(
        1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: DictionaryGetResponse___DictionaryGetResponsePart.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse___Found clone() =>
      DictionaryGetResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse___Found copyWith(
          void Function(DictionaryGetResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryGetResponse___Found))
          as DictionaryGetResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse___Found create() =>
      DictionaryGetResponse___Found._();
  DictionaryGetResponse___Found createEmptyInstance() => create();
  static $pb.PbList<DictionaryGetResponse___Found> createRepeated() =>
      $pb.PbList<DictionaryGetResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryGetResponse___Found>(create);
  static DictionaryGetResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DictionaryGetResponse___DictionaryGetResponsePart> get items =>
      $_getList(0);
}

class DictionaryGetResponse___Missing extends $pb.GeneratedMessage {
  factory DictionaryGetResponse___Missing() => create();
  DictionaryGetResponse___Missing._() : super();
  factory DictionaryGetResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryGetResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryGetResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse___Missing clone() =>
      DictionaryGetResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse___Missing copyWith(
          void Function(DictionaryGetResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryGetResponse___Missing))
          as DictionaryGetResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse___Missing create() =>
      DictionaryGetResponse___Missing._();
  DictionaryGetResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<DictionaryGetResponse___Missing> createRepeated() =>
      $pb.PbList<DictionaryGetResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryGetResponse___Missing>(
          create);
  static DictionaryGetResponse___Missing? _defaultInstance;
}

enum DictionaryGetResponse__Dictionary { found, missing, notSet }

class DictionaryGetResponse_ extends $pb.GeneratedMessage {
  factory DictionaryGetResponse_({
    DictionaryGetResponse___Found? found,
    DictionaryGetResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  DictionaryGetResponse_._() : super();
  factory DictionaryGetResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryGetResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DictionaryGetResponse__Dictionary>
      _DictionaryGetResponse__DictionaryByTag = {
    1: DictionaryGetResponse__Dictionary.found,
    2: DictionaryGetResponse__Dictionary.missing,
    0: DictionaryGetResponse__Dictionary.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryGetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DictionaryGetResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: DictionaryGetResponse___Found.create)
    ..aOM<DictionaryGetResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: DictionaryGetResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse_ clone() =>
      DictionaryGetResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryGetResponse_ copyWith(
          void Function(DictionaryGetResponse_) updates) =>
      super.copyWith((message) => updates(message as DictionaryGetResponse_))
          as DictionaryGetResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse_ create() => DictionaryGetResponse_._();
  DictionaryGetResponse_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryGetResponse_> createRepeated() =>
      $pb.PbList<DictionaryGetResponse_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryGetResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryGetResponse_>(create);
  static DictionaryGetResponse_? _defaultInstance;

  DictionaryGetResponse__Dictionary whichDictionary() =>
      _DictionaryGetResponse__DictionaryByTag[$_whichOneof(0)]!;
  void clearDictionary() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DictionaryGetResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(DictionaryGetResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  DictionaryGetResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  DictionaryGetResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(DictionaryGetResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  DictionaryGetResponse___Missing ensureMissing() => $_ensure(1);
}

class DictionaryFetchRequest_ extends $pb.GeneratedMessage {
  factory DictionaryFetchRequest_({
    $core.List<$core.int>? dictionaryName,
  }) {
    final $result = create();
    if (dictionaryName != null) {
      $result.dictionaryName = dictionaryName;
    }
    return $result;
  }
  DictionaryFetchRequest_._() : super();
  factory DictionaryFetchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryFetchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryFetchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dictionaryName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryFetchRequest_ clone() =>
      DictionaryFetchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryFetchRequest_ copyWith(
          void Function(DictionaryFetchRequest_) updates) =>
      super.copyWith((message) => updates(message as DictionaryFetchRequest_))
          as DictionaryFetchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryFetchRequest_ create() => DictionaryFetchRequest_._();
  DictionaryFetchRequest_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryFetchRequest_> createRepeated() =>
      $pb.PbList<DictionaryFetchRequest_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryFetchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryFetchRequest_>(create);
  static DictionaryFetchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dictionaryName => $_getN(0);
  @$pb.TagNumber(1)
  set dictionaryName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDictionaryName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDictionaryName() => clearField(1);
}

class DictionaryFieldValuePair_ extends $pb.GeneratedMessage {
  factory DictionaryFieldValuePair_({
    $core.List<$core.int>? field_1,
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (field_1 != null) {
      $result.field_1 = field_1;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  DictionaryFieldValuePair_._() : super();
  factory DictionaryFieldValuePair_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryFieldValuePair_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryFieldValuePair',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'field', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryFieldValuePair_ clone() =>
      DictionaryFieldValuePair_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryFieldValuePair_ copyWith(
          void Function(DictionaryFieldValuePair_) updates) =>
      super.copyWith((message) => updates(message as DictionaryFieldValuePair_))
          as DictionaryFieldValuePair_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryFieldValuePair_ create() => DictionaryFieldValuePair_._();
  DictionaryFieldValuePair_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryFieldValuePair_> createRepeated() =>
      $pb.PbList<DictionaryFieldValuePair_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryFieldValuePair_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryFieldValuePair_>(create);
  static DictionaryFieldValuePair_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get field_1 => $_getN(0);
  @$pb.TagNumber(1)
  set field_1($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class DictionaryFetchResponse___Found extends $pb.GeneratedMessage {
  factory DictionaryFetchResponse___Found({
    $core.Iterable<DictionaryFieldValuePair_>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  DictionaryFetchResponse___Found._() : super();
  factory DictionaryFetchResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryFetchResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryFetchResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..pc<DictionaryFieldValuePair_>(
        1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: DictionaryFieldValuePair_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryFetchResponse___Found clone() =>
      DictionaryFetchResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryFetchResponse___Found copyWith(
          void Function(DictionaryFetchResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryFetchResponse___Found))
          as DictionaryFetchResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryFetchResponse___Found create() =>
      DictionaryFetchResponse___Found._();
  DictionaryFetchResponse___Found createEmptyInstance() => create();
  static $pb.PbList<DictionaryFetchResponse___Found> createRepeated() =>
      $pb.PbList<DictionaryFetchResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static DictionaryFetchResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryFetchResponse___Found>(
          create);
  static DictionaryFetchResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DictionaryFieldValuePair_> get items => $_getList(0);
}

class DictionaryFetchResponse___Missing extends $pb.GeneratedMessage {
  factory DictionaryFetchResponse___Missing() => create();
  DictionaryFetchResponse___Missing._() : super();
  factory DictionaryFetchResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryFetchResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryFetchResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryFetchResponse___Missing clone() =>
      DictionaryFetchResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryFetchResponse___Missing copyWith(
          void Function(DictionaryFetchResponse___Missing) updates) =>
      super.copyWith((message) =>
              updates(message as DictionaryFetchResponse___Missing))
          as DictionaryFetchResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryFetchResponse___Missing create() =>
      DictionaryFetchResponse___Missing._();
  DictionaryFetchResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<DictionaryFetchResponse___Missing> createRepeated() =>
      $pb.PbList<DictionaryFetchResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static DictionaryFetchResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryFetchResponse___Missing>(
          create);
  static DictionaryFetchResponse___Missing? _defaultInstance;
}

enum DictionaryFetchResponse__Dictionary { found, missing, notSet }

class DictionaryFetchResponse_ extends $pb.GeneratedMessage {
  factory DictionaryFetchResponse_({
    DictionaryFetchResponse___Found? found,
    DictionaryFetchResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  DictionaryFetchResponse_._() : super();
  factory DictionaryFetchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryFetchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DictionaryFetchResponse__Dictionary>
      _DictionaryFetchResponse__DictionaryByTag = {
    1: DictionaryFetchResponse__Dictionary.found,
    2: DictionaryFetchResponse__Dictionary.missing,
    0: DictionaryFetchResponse__Dictionary.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryFetchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DictionaryFetchResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: DictionaryFetchResponse___Found.create)
    ..aOM<DictionaryFetchResponse___Missing>(
        2, _omitFieldNames ? '' : 'missing',
        subBuilder: DictionaryFetchResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryFetchResponse_ clone() =>
      DictionaryFetchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryFetchResponse_ copyWith(
          void Function(DictionaryFetchResponse_) updates) =>
      super.copyWith((message) => updates(message as DictionaryFetchResponse_))
          as DictionaryFetchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryFetchResponse_ create() => DictionaryFetchResponse_._();
  DictionaryFetchResponse_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryFetchResponse_> createRepeated() =>
      $pb.PbList<DictionaryFetchResponse_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryFetchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryFetchResponse_>(create);
  static DictionaryFetchResponse_? _defaultInstance;

  DictionaryFetchResponse__Dictionary whichDictionary() =>
      _DictionaryFetchResponse__DictionaryByTag[$_whichOneof(0)]!;
  void clearDictionary() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DictionaryFetchResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(DictionaryFetchResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  DictionaryFetchResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  DictionaryFetchResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(DictionaryFetchResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  DictionaryFetchResponse___Missing ensureMissing() => $_ensure(1);
}

class DictionarySetRequest_ extends $pb.GeneratedMessage {
  factory DictionarySetRequest_({
    $core.List<$core.int>? dictionaryName,
    $core.Iterable<DictionaryFieldValuePair_>? items,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
  }) {
    final $result = create();
    if (dictionaryName != null) {
      $result.dictionaryName = dictionaryName;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    return $result;
  }
  DictionarySetRequest_._() : super();
  factory DictionarySetRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionarySetRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionarySetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dictionaryName', $pb.PbFieldType.OY)
    ..pc<DictionaryFieldValuePair_>(
        2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: DictionaryFieldValuePair_.create)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'refreshTtl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionarySetRequest_ clone() =>
      DictionarySetRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionarySetRequest_ copyWith(
          void Function(DictionarySetRequest_) updates) =>
      super.copyWith((message) => updates(message as DictionarySetRequest_))
          as DictionarySetRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionarySetRequest_ create() => DictionarySetRequest_._();
  DictionarySetRequest_ createEmptyInstance() => create();
  static $pb.PbList<DictionarySetRequest_> createRepeated() =>
      $pb.PbList<DictionarySetRequest_>();
  @$core.pragma('dart2js:noInline')
  static DictionarySetRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionarySetRequest_>(create);
  static DictionarySetRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dictionaryName => $_getN(0);
  @$pb.TagNumber(1)
  set dictionaryName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDictionaryName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDictionaryName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<DictionaryFieldValuePair_> get items => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get refreshTtl => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshTtl($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRefreshTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshTtl() => clearField(4);
}

class DictionarySetResponse_ extends $pb.GeneratedMessage {
  factory DictionarySetResponse_() => create();
  DictionarySetResponse_._() : super();
  factory DictionarySetResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionarySetResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionarySetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionarySetResponse_ clone() =>
      DictionarySetResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionarySetResponse_ copyWith(
          void Function(DictionarySetResponse_) updates) =>
      super.copyWith((message) => updates(message as DictionarySetResponse_))
          as DictionarySetResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionarySetResponse_ create() => DictionarySetResponse_._();
  DictionarySetResponse_ createEmptyInstance() => create();
  static $pb.PbList<DictionarySetResponse_> createRepeated() =>
      $pb.PbList<DictionarySetResponse_>();
  @$core.pragma('dart2js:noInline')
  static DictionarySetResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionarySetResponse_>(create);
  static DictionarySetResponse_? _defaultInstance;
}

class DictionaryIncrementRequest_ extends $pb.GeneratedMessage {
  factory DictionaryIncrementRequest_({
    $core.List<$core.int>? dictionaryName,
    $core.List<$core.int>? field_2,
    $fixnum.Int64? amount,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
  }) {
    final $result = create();
    if (dictionaryName != null) {
      $result.dictionaryName = dictionaryName;
    }
    if (field_2 != null) {
      $result.field_2 = field_2;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    return $result;
  }
  DictionaryIncrementRequest_._() : super();
  factory DictionaryIncrementRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryIncrementRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryIncrementRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dictionaryName', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'field', $pb.PbFieldType.OY)
    ..aInt64(3, _omitFieldNames ? '' : 'amount')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, _omitFieldNames ? '' : 'refreshTtl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryIncrementRequest_ clone() =>
      DictionaryIncrementRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryIncrementRequest_ copyWith(
          void Function(DictionaryIncrementRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryIncrementRequest_))
          as DictionaryIncrementRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryIncrementRequest_ create() =>
      DictionaryIncrementRequest_._();
  DictionaryIncrementRequest_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryIncrementRequest_> createRepeated() =>
      $pb.PbList<DictionaryIncrementRequest_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryIncrementRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryIncrementRequest_>(create);
  static DictionaryIncrementRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dictionaryName => $_getN(0);
  @$pb.TagNumber(1)
  set dictionaryName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDictionaryName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDictionaryName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get field_2 => $_getN(1);
  @$pb.TagNumber(2)
  set field_2($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasField_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearField_2() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(3);
  @$pb.TagNumber(4)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTtlMilliseconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearTtlMilliseconds() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get refreshTtl => $_getBF(4);
  @$pb.TagNumber(5)
  set refreshTtl($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRefreshTtl() => $_has(4);
  @$pb.TagNumber(5)
  void clearRefreshTtl() => clearField(5);
}

class DictionaryIncrementResponse_ extends $pb.GeneratedMessage {
  factory DictionaryIncrementResponse_({
    $fixnum.Int64? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  DictionaryIncrementResponse_._() : super();
  factory DictionaryIncrementResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryIncrementResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryIncrementResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryIncrementResponse_ clone() =>
      DictionaryIncrementResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryIncrementResponse_ copyWith(
          void Function(DictionaryIncrementResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryIncrementResponse_))
          as DictionaryIncrementResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryIncrementResponse_ create() =>
      DictionaryIncrementResponse_._();
  DictionaryIncrementResponse_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryIncrementResponse_> createRepeated() =>
      $pb.PbList<DictionaryIncrementResponse_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryIncrementResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryIncrementResponse_>(create);
  static DictionaryIncrementResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class DictionaryDeleteRequest__Some extends $pb.GeneratedMessage {
  factory DictionaryDeleteRequest__Some({
    $core.Iterable<$core.List<$core.int>>? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  DictionaryDeleteRequest__Some._() : super();
  factory DictionaryDeleteRequest__Some.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryDeleteRequest__Some.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryDeleteRequest.Some',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'fields', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryDeleteRequest__Some clone() =>
      DictionaryDeleteRequest__Some()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryDeleteRequest__Some copyWith(
          void Function(DictionaryDeleteRequest__Some) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryDeleteRequest__Some))
          as DictionaryDeleteRequest__Some;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteRequest__Some create() =>
      DictionaryDeleteRequest__Some._();
  DictionaryDeleteRequest__Some createEmptyInstance() => create();
  static $pb.PbList<DictionaryDeleteRequest__Some> createRepeated() =>
      $pb.PbList<DictionaryDeleteRequest__Some>();
  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteRequest__Some getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryDeleteRequest__Some>(create);
  static DictionaryDeleteRequest__Some? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get fields => $_getList(0);
}

class DictionaryDeleteRequest__All extends $pb.GeneratedMessage {
  factory DictionaryDeleteRequest__All() => create();
  DictionaryDeleteRequest__All._() : super();
  factory DictionaryDeleteRequest__All.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryDeleteRequest__All.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryDeleteRequest.All',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryDeleteRequest__All clone() =>
      DictionaryDeleteRequest__All()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryDeleteRequest__All copyWith(
          void Function(DictionaryDeleteRequest__All) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryDeleteRequest__All))
          as DictionaryDeleteRequest__All;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteRequest__All create() =>
      DictionaryDeleteRequest__All._();
  DictionaryDeleteRequest__All createEmptyInstance() => create();
  static $pb.PbList<DictionaryDeleteRequest__All> createRepeated() =>
      $pb.PbList<DictionaryDeleteRequest__All>();
  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteRequest__All getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryDeleteRequest__All>(create);
  static DictionaryDeleteRequest__All? _defaultInstance;
}

enum DictionaryDeleteRequest__Delete { some, all, notSet }

class DictionaryDeleteRequest_ extends $pb.GeneratedMessage {
  factory DictionaryDeleteRequest_({
    $core.List<$core.int>? dictionaryName,
    DictionaryDeleteRequest__Some? some,
    DictionaryDeleteRequest__All? all,
  }) {
    final $result = create();
    if (dictionaryName != null) {
      $result.dictionaryName = dictionaryName;
    }
    if (some != null) {
      $result.some = some;
    }
    if (all != null) {
      $result.all = all;
    }
    return $result;
  }
  DictionaryDeleteRequest_._() : super();
  factory DictionaryDeleteRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryDeleteRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DictionaryDeleteRequest__Delete>
      _DictionaryDeleteRequest__DeleteByTag = {
    2: DictionaryDeleteRequest__Delete.some,
    3: DictionaryDeleteRequest__Delete.all,
    0: DictionaryDeleteRequest__Delete.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryDeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dictionaryName', $pb.PbFieldType.OY)
    ..aOM<DictionaryDeleteRequest__Some>(2, _omitFieldNames ? '' : 'some',
        subBuilder: DictionaryDeleteRequest__Some.create)
    ..aOM<DictionaryDeleteRequest__All>(3, _omitFieldNames ? '' : 'all',
        subBuilder: DictionaryDeleteRequest__All.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryDeleteRequest_ clone() =>
      DictionaryDeleteRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryDeleteRequest_ copyWith(
          void Function(DictionaryDeleteRequest_) updates) =>
      super.copyWith((message) => updates(message as DictionaryDeleteRequest_))
          as DictionaryDeleteRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteRequest_ create() => DictionaryDeleteRequest_._();
  DictionaryDeleteRequest_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryDeleteRequest_> createRepeated() =>
      $pb.PbList<DictionaryDeleteRequest_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryDeleteRequest_>(create);
  static DictionaryDeleteRequest_? _defaultInstance;

  DictionaryDeleteRequest__Delete whichDelete() =>
      _DictionaryDeleteRequest__DeleteByTag[$_whichOneof(0)]!;
  void clearDelete() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get dictionaryName => $_getN(0);
  @$pb.TagNumber(1)
  set dictionaryName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDictionaryName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDictionaryName() => clearField(1);

  @$pb.TagNumber(2)
  DictionaryDeleteRequest__Some get some => $_getN(1);
  @$pb.TagNumber(2)
  set some(DictionaryDeleteRequest__Some v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSome() => $_has(1);
  @$pb.TagNumber(2)
  void clearSome() => clearField(2);
  @$pb.TagNumber(2)
  DictionaryDeleteRequest__Some ensureSome() => $_ensure(1);

  @$pb.TagNumber(3)
  DictionaryDeleteRequest__All get all => $_getN(2);
  @$pb.TagNumber(3)
  set all(DictionaryDeleteRequest__All v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAll() => $_has(2);
  @$pb.TagNumber(3)
  void clearAll() => clearField(3);
  @$pb.TagNumber(3)
  DictionaryDeleteRequest__All ensureAll() => $_ensure(2);
}

class DictionaryDeleteResponse_ extends $pb.GeneratedMessage {
  factory DictionaryDeleteResponse_() => create();
  DictionaryDeleteResponse_._() : super();
  factory DictionaryDeleteResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryDeleteResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryDeleteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryDeleteResponse_ clone() =>
      DictionaryDeleteResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryDeleteResponse_ copyWith(
          void Function(DictionaryDeleteResponse_) updates) =>
      super.copyWith((message) => updates(message as DictionaryDeleteResponse_))
          as DictionaryDeleteResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteResponse_ create() => DictionaryDeleteResponse_._();
  DictionaryDeleteResponse_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryDeleteResponse_> createRepeated() =>
      $pb.PbList<DictionaryDeleteResponse_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryDeleteResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryDeleteResponse_>(create);
  static DictionaryDeleteResponse_? _defaultInstance;
}

class DictionaryLengthRequest_ extends $pb.GeneratedMessage {
  factory DictionaryLengthRequest_({
    $core.List<$core.int>? dictionaryName,
  }) {
    final $result = create();
    if (dictionaryName != null) {
      $result.dictionaryName = dictionaryName;
    }
    return $result;
  }
  DictionaryLengthRequest_._() : super();
  factory DictionaryLengthRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryLengthRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryLengthRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dictionaryName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryLengthRequest_ clone() =>
      DictionaryLengthRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryLengthRequest_ copyWith(
          void Function(DictionaryLengthRequest_) updates) =>
      super.copyWith((message) => updates(message as DictionaryLengthRequest_))
          as DictionaryLengthRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryLengthRequest_ create() => DictionaryLengthRequest_._();
  DictionaryLengthRequest_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryLengthRequest_> createRepeated() =>
      $pb.PbList<DictionaryLengthRequest_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryLengthRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryLengthRequest_>(create);
  static DictionaryLengthRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dictionaryName => $_getN(0);
  @$pb.TagNumber(1)
  set dictionaryName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDictionaryName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDictionaryName() => clearField(1);
}

class DictionaryLengthResponse___Found extends $pb.GeneratedMessage {
  factory DictionaryLengthResponse___Found({
    $core.int? length,
  }) {
    final $result = create();
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  DictionaryLengthResponse___Found._() : super();
  factory DictionaryLengthResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryLengthResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryLengthResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryLengthResponse___Found clone() =>
      DictionaryLengthResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryLengthResponse___Found copyWith(
          void Function(DictionaryLengthResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as DictionaryLengthResponse___Found))
          as DictionaryLengthResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryLengthResponse___Found create() =>
      DictionaryLengthResponse___Found._();
  DictionaryLengthResponse___Found createEmptyInstance() => create();
  static $pb.PbList<DictionaryLengthResponse___Found> createRepeated() =>
      $pb.PbList<DictionaryLengthResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static DictionaryLengthResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryLengthResponse___Found>(
          create);
  static DictionaryLengthResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get length => $_getIZ(0);
  @$pb.TagNumber(1)
  set length($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearLength() => clearField(1);
}

class DictionaryLengthResponse___Missing extends $pb.GeneratedMessage {
  factory DictionaryLengthResponse___Missing() => create();
  DictionaryLengthResponse___Missing._() : super();
  factory DictionaryLengthResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryLengthResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryLengthResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryLengthResponse___Missing clone() =>
      DictionaryLengthResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryLengthResponse___Missing copyWith(
          void Function(DictionaryLengthResponse___Missing) updates) =>
      super.copyWith((message) =>
              updates(message as DictionaryLengthResponse___Missing))
          as DictionaryLengthResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryLengthResponse___Missing create() =>
      DictionaryLengthResponse___Missing._();
  DictionaryLengthResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<DictionaryLengthResponse___Missing> createRepeated() =>
      $pb.PbList<DictionaryLengthResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static DictionaryLengthResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryLengthResponse___Missing>(
          create);
  static DictionaryLengthResponse___Missing? _defaultInstance;
}

enum DictionaryLengthResponse__Dictionary { found, missing, notSet }

class DictionaryLengthResponse_ extends $pb.GeneratedMessage {
  factory DictionaryLengthResponse_({
    DictionaryLengthResponse___Found? found,
    DictionaryLengthResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  DictionaryLengthResponse_._() : super();
  factory DictionaryLengthResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictionaryLengthResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DictionaryLengthResponse__Dictionary>
      _DictionaryLengthResponse__DictionaryByTag = {
    1: DictionaryLengthResponse__Dictionary.found,
    2: DictionaryLengthResponse__Dictionary.missing,
    0: DictionaryLengthResponse__Dictionary.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DictionaryLengthResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DictionaryLengthResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: DictionaryLengthResponse___Found.create)
    ..aOM<DictionaryLengthResponse___Missing>(
        2, _omitFieldNames ? '' : 'missing',
        subBuilder: DictionaryLengthResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictionaryLengthResponse_ clone() =>
      DictionaryLengthResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictionaryLengthResponse_ copyWith(
          void Function(DictionaryLengthResponse_) updates) =>
      super.copyWith((message) => updates(message as DictionaryLengthResponse_))
          as DictionaryLengthResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictionaryLengthResponse_ create() => DictionaryLengthResponse_._();
  DictionaryLengthResponse_ createEmptyInstance() => create();
  static $pb.PbList<DictionaryLengthResponse_> createRepeated() =>
      $pb.PbList<DictionaryLengthResponse_>();
  @$core.pragma('dart2js:noInline')
  static DictionaryLengthResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DictionaryLengthResponse_>(create);
  static DictionaryLengthResponse_? _defaultInstance;

  DictionaryLengthResponse__Dictionary whichDictionary() =>
      _DictionaryLengthResponse__DictionaryByTag[$_whichOneof(0)]!;
  void clearDictionary() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DictionaryLengthResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(DictionaryLengthResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  DictionaryLengthResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  DictionaryLengthResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(DictionaryLengthResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  DictionaryLengthResponse___Missing ensureMissing() => $_ensure(1);
}

class SetFetchRequest_ extends $pb.GeneratedMessage {
  factory SetFetchRequest_({
    $core.List<$core.int>? setName,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    return $result;
  }
  SetFetchRequest_._() : super();
  factory SetFetchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetFetchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetFetchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetFetchRequest_ clone() => SetFetchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetFetchRequest_ copyWith(void Function(SetFetchRequest_) updates) =>
      super.copyWith((message) => updates(message as SetFetchRequest_))
          as SetFetchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFetchRequest_ create() => SetFetchRequest_._();
  SetFetchRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetFetchRequest_> createRepeated() =>
      $pb.PbList<SetFetchRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetFetchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetFetchRequest_>(create);
  static SetFetchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);
}

class SetFetchResponse___Found extends $pb.GeneratedMessage {
  factory SetFetchResponse___Found({
    $core.Iterable<$core.List<$core.int>>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SetFetchResponse___Found._() : super();
  factory SetFetchResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetFetchResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetFetchResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetFetchResponse___Found clone() =>
      SetFetchResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetFetchResponse___Found copyWith(
          void Function(SetFetchResponse___Found) updates) =>
      super.copyWith((message) => updates(message as SetFetchResponse___Found))
          as SetFetchResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFetchResponse___Found create() => SetFetchResponse___Found._();
  SetFetchResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SetFetchResponse___Found> createRepeated() =>
      $pb.PbList<SetFetchResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SetFetchResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetFetchResponse___Found>(create);
  static SetFetchResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get elements => $_getList(0);
}

class SetFetchResponse___Missing extends $pb.GeneratedMessage {
  factory SetFetchResponse___Missing() => create();
  SetFetchResponse___Missing._() : super();
  factory SetFetchResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetFetchResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetFetchResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetFetchResponse___Missing clone() =>
      SetFetchResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetFetchResponse___Missing copyWith(
          void Function(SetFetchResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as SetFetchResponse___Missing))
          as SetFetchResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFetchResponse___Missing create() => SetFetchResponse___Missing._();
  SetFetchResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SetFetchResponse___Missing> createRepeated() =>
      $pb.PbList<SetFetchResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SetFetchResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetFetchResponse___Missing>(create);
  static SetFetchResponse___Missing? _defaultInstance;
}

enum SetFetchResponse__Set { found, missing, notSet }

class SetFetchResponse_ extends $pb.GeneratedMessage {
  factory SetFetchResponse_({
    SetFetchResponse___Found? found,
    SetFetchResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SetFetchResponse_._() : super();
  factory SetFetchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetFetchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetFetchResponse__Set>
      _SetFetchResponse__SetByTag = {
    1: SetFetchResponse__Set.found,
    2: SetFetchResponse__Set.missing,
    0: SetFetchResponse__Set.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetFetchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetFetchResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SetFetchResponse___Found.create)
    ..aOM<SetFetchResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: SetFetchResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetFetchResponse_ clone() => SetFetchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetFetchResponse_ copyWith(void Function(SetFetchResponse_) updates) =>
      super.copyWith((message) => updates(message as SetFetchResponse_))
          as SetFetchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFetchResponse_ create() => SetFetchResponse_._();
  SetFetchResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetFetchResponse_> createRepeated() =>
      $pb.PbList<SetFetchResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetFetchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetFetchResponse_>(create);
  static SetFetchResponse_? _defaultInstance;

  SetFetchResponse__Set whichSet() =>
      _SetFetchResponse__SetByTag[$_whichOneof(0)]!;
  void clearSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetFetchResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SetFetchResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SetFetchResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SetFetchResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SetFetchResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SetFetchResponse___Missing ensureMissing() => $_ensure(1);
}

class SetSampleRequest_ extends $pb.GeneratedMessage {
  factory SetSampleRequest_({
    $core.List<$core.int>? setName,
    $fixnum.Int64? limit,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    return $result;
  }
  SetSampleRequest_._() : super();
  factory SetSampleRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetSampleRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetSampleRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetSampleRequest_ clone() => SetSampleRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetSampleRequest_ copyWith(void Function(SetSampleRequest_) updates) =>
      super.copyWith((message) => updates(message as SetSampleRequest_))
          as SetSampleRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSampleRequest_ create() => SetSampleRequest_._();
  SetSampleRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetSampleRequest_> createRepeated() =>
      $pb.PbList<SetSampleRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetSampleRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetSampleRequest_>(create);
  static SetSampleRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class SetSampleResponse___Found extends $pb.GeneratedMessage {
  factory SetSampleResponse___Found({
    $core.Iterable<$core.List<$core.int>>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SetSampleResponse___Found._() : super();
  factory SetSampleResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetSampleResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetSampleResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetSampleResponse___Found clone() =>
      SetSampleResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetSampleResponse___Found copyWith(
          void Function(SetSampleResponse___Found) updates) =>
      super.copyWith((message) => updates(message as SetSampleResponse___Found))
          as SetSampleResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSampleResponse___Found create() => SetSampleResponse___Found._();
  SetSampleResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SetSampleResponse___Found> createRepeated() =>
      $pb.PbList<SetSampleResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SetSampleResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetSampleResponse___Found>(create);
  static SetSampleResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get elements => $_getList(0);
}

class SetSampleResponse___Missing extends $pb.GeneratedMessage {
  factory SetSampleResponse___Missing() => create();
  SetSampleResponse___Missing._() : super();
  factory SetSampleResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetSampleResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetSampleResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetSampleResponse___Missing clone() =>
      SetSampleResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetSampleResponse___Missing copyWith(
          void Function(SetSampleResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as SetSampleResponse___Missing))
          as SetSampleResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSampleResponse___Missing create() =>
      SetSampleResponse___Missing._();
  SetSampleResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SetSampleResponse___Missing> createRepeated() =>
      $pb.PbList<SetSampleResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SetSampleResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetSampleResponse___Missing>(create);
  static SetSampleResponse___Missing? _defaultInstance;
}

enum SetSampleResponse__Set { found, missing, notSet }

class SetSampleResponse_ extends $pb.GeneratedMessage {
  factory SetSampleResponse_({
    SetSampleResponse___Found? found,
    SetSampleResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SetSampleResponse_._() : super();
  factory SetSampleResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetSampleResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetSampleResponse__Set>
      _SetSampleResponse__SetByTag = {
    1: SetSampleResponse__Set.found,
    2: SetSampleResponse__Set.missing,
    0: SetSampleResponse__Set.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetSampleResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetSampleResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SetSampleResponse___Found.create)
    ..aOM<SetSampleResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: SetSampleResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetSampleResponse_ clone() => SetSampleResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetSampleResponse_ copyWith(void Function(SetSampleResponse_) updates) =>
      super.copyWith((message) => updates(message as SetSampleResponse_))
          as SetSampleResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSampleResponse_ create() => SetSampleResponse_._();
  SetSampleResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetSampleResponse_> createRepeated() =>
      $pb.PbList<SetSampleResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetSampleResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetSampleResponse_>(create);
  static SetSampleResponse_? _defaultInstance;

  SetSampleResponse__Set whichSet() =>
      _SetSampleResponse__SetByTag[$_whichOneof(0)]!;
  void clearSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetSampleResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SetSampleResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SetSampleResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SetSampleResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SetSampleResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SetSampleResponse___Missing ensureMissing() => $_ensure(1);
}

class SetUnionRequest_ extends $pb.GeneratedMessage {
  factory SetUnionRequest_({
    $core.List<$core.int>? setName,
    $core.Iterable<$core.List<$core.int>>? elements,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    return $result;
  }
  SetUnionRequest_._() : super();
  factory SetUnionRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetUnionRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetUnionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'refreshTtl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetUnionRequest_ clone() => SetUnionRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetUnionRequest_ copyWith(void Function(SetUnionRequest_) updates) =>
      super.copyWith((message) => updates(message as SetUnionRequest_))
          as SetUnionRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetUnionRequest_ create() => SetUnionRequest_._();
  SetUnionRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetUnionRequest_> createRepeated() =>
      $pb.PbList<SetUnionRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetUnionRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetUnionRequest_>(create);
  static SetUnionRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get elements => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get refreshTtl => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshTtl($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRefreshTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshTtl() => clearField(4);
}

class SetUnionResponse_ extends $pb.GeneratedMessage {
  factory SetUnionResponse_() => create();
  SetUnionResponse_._() : super();
  factory SetUnionResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetUnionResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetUnionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetUnionResponse_ clone() => SetUnionResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetUnionResponse_ copyWith(void Function(SetUnionResponse_) updates) =>
      super.copyWith((message) => updates(message as SetUnionResponse_))
          as SetUnionResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetUnionResponse_ create() => SetUnionResponse_._();
  SetUnionResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetUnionResponse_> createRepeated() =>
      $pb.PbList<SetUnionResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetUnionResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetUnionResponse_>(create);
  static SetUnionResponse_? _defaultInstance;
}

/// cache = request - stored
class SetDifferenceRequest___Minuend extends $pb.GeneratedMessage {
  factory SetDifferenceRequest___Minuend({
    $core.Iterable<$core.List<$core.int>>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SetDifferenceRequest___Minuend._() : super();
  factory SetDifferenceRequest___Minuend.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceRequest___Minuend.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceRequest._Minuend',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Minuend clone() =>
      SetDifferenceRequest___Minuend()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Minuend copyWith(
          void Function(SetDifferenceRequest___Minuend) updates) =>
      super.copyWith(
              (message) => updates(message as SetDifferenceRequest___Minuend))
          as SetDifferenceRequest___Minuend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Minuend create() =>
      SetDifferenceRequest___Minuend._();
  SetDifferenceRequest___Minuend createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceRequest___Minuend> createRepeated() =>
      $pb.PbList<SetDifferenceRequest___Minuend>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Minuend getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDifferenceRequest___Minuend>(create);
  static SetDifferenceRequest___Minuend? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get elements => $_getList(0);
}

/// Subtract a set of elements
class SetDifferenceRequest___Subtrahend__Set extends $pb.GeneratedMessage {
  factory SetDifferenceRequest___Subtrahend__Set({
    $core.Iterable<$core.List<$core.int>>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SetDifferenceRequest___Subtrahend__Set._() : super();
  factory SetDifferenceRequest___Subtrahend__Set.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceRequest___Subtrahend__Set.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceRequest._Subtrahend._Set',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Subtrahend__Set clone() =>
      SetDifferenceRequest___Subtrahend__Set()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Subtrahend__Set copyWith(
          void Function(SetDifferenceRequest___Subtrahend__Set) updates) =>
      super.copyWith((message) =>
              updates(message as SetDifferenceRequest___Subtrahend__Set))
          as SetDifferenceRequest___Subtrahend__Set;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Subtrahend__Set create() =>
      SetDifferenceRequest___Subtrahend__Set._();
  SetDifferenceRequest___Subtrahend__Set createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceRequest___Subtrahend__Set> createRepeated() =>
      $pb.PbList<SetDifferenceRequest___Subtrahend__Set>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Subtrahend__Set getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SetDifferenceRequest___Subtrahend__Set>(create);
  static SetDifferenceRequest___Subtrahend__Set? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get elements => $_getList(0);
}

/// Subtract the set's identity (itself) from itself - which deletes it.
class SetDifferenceRequest___Subtrahend__Identity extends $pb.GeneratedMessage {
  factory SetDifferenceRequest___Subtrahend__Identity() => create();
  SetDifferenceRequest___Subtrahend__Identity._() : super();
  factory SetDifferenceRequest___Subtrahend__Identity.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceRequest___Subtrahend__Identity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceRequest._Subtrahend._Identity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Subtrahend__Identity clone() =>
      SetDifferenceRequest___Subtrahend__Identity()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Subtrahend__Identity copyWith(
          void Function(SetDifferenceRequest___Subtrahend__Identity) updates) =>
      super.copyWith((message) =>
              updates(message as SetDifferenceRequest___Subtrahend__Identity))
          as SetDifferenceRequest___Subtrahend__Identity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Subtrahend__Identity create() =>
      SetDifferenceRequest___Subtrahend__Identity._();
  SetDifferenceRequest___Subtrahend__Identity createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceRequest___Subtrahend__Identity>
      createRepeated() =>
          $pb.PbList<SetDifferenceRequest___Subtrahend__Identity>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Subtrahend__Identity getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SetDifferenceRequest___Subtrahend__Identity>(create);
  static SetDifferenceRequest___Subtrahend__Identity? _defaultInstance;
}

enum SetDifferenceRequest___Subtrahend_SubtrahendSet { set, identity, notSet }

/// cache = stored - request
class SetDifferenceRequest___Subtrahend extends $pb.GeneratedMessage {
  factory SetDifferenceRequest___Subtrahend({
    SetDifferenceRequest___Subtrahend__Set? set,
    SetDifferenceRequest___Subtrahend__Identity? identity,
  }) {
    final $result = create();
    if (set != null) {
      $result.set = set;
    }
    if (identity != null) {
      $result.identity = identity;
    }
    return $result;
  }
  SetDifferenceRequest___Subtrahend._() : super();
  factory SetDifferenceRequest___Subtrahend.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceRequest___Subtrahend.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core
      .Map<$core.int, SetDifferenceRequest___Subtrahend_SubtrahendSet>
      _SetDifferenceRequest___Subtrahend_SubtrahendSetByTag = {
    1: SetDifferenceRequest___Subtrahend_SubtrahendSet.set,
    2: SetDifferenceRequest___Subtrahend_SubtrahendSet.identity,
    0: SetDifferenceRequest___Subtrahend_SubtrahendSet.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceRequest._Subtrahend',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetDifferenceRequest___Subtrahend__Set>(
        1, _omitFieldNames ? '' : 'set',
        subBuilder: SetDifferenceRequest___Subtrahend__Set.create)
    ..aOM<SetDifferenceRequest___Subtrahend__Identity>(
        2, _omitFieldNames ? '' : 'identity',
        subBuilder: SetDifferenceRequest___Subtrahend__Identity.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Subtrahend clone() =>
      SetDifferenceRequest___Subtrahend()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest___Subtrahend copyWith(
          void Function(SetDifferenceRequest___Subtrahend) updates) =>
      super.copyWith((message) =>
              updates(message as SetDifferenceRequest___Subtrahend))
          as SetDifferenceRequest___Subtrahend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Subtrahend create() =>
      SetDifferenceRequest___Subtrahend._();
  SetDifferenceRequest___Subtrahend createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceRequest___Subtrahend> createRepeated() =>
      $pb.PbList<SetDifferenceRequest___Subtrahend>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest___Subtrahend getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDifferenceRequest___Subtrahend>(
          create);
  static SetDifferenceRequest___Subtrahend? _defaultInstance;

  SetDifferenceRequest___Subtrahend_SubtrahendSet whichSubtrahendSet() =>
      _SetDifferenceRequest___Subtrahend_SubtrahendSetByTag[$_whichOneof(0)]!;
  void clearSubtrahendSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetDifferenceRequest___Subtrahend__Set get set => $_getN(0);
  @$pb.TagNumber(1)
  set set(SetDifferenceRequest___Subtrahend__Set v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearSet() => clearField(1);
  @$pb.TagNumber(1)
  SetDifferenceRequest___Subtrahend__Set ensureSet() => $_ensure(0);

  @$pb.TagNumber(2)
  SetDifferenceRequest___Subtrahend__Identity get identity => $_getN(1);
  @$pb.TagNumber(2)
  set identity(SetDifferenceRequest___Subtrahend__Identity v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIdentity() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentity() => clearField(2);
  @$pb.TagNumber(2)
  SetDifferenceRequest___Subtrahend__Identity ensureIdentity() => $_ensure(1);
}

enum SetDifferenceRequest__Difference { minuend, subtrahend, notSet }

class SetDifferenceRequest_ extends $pb.GeneratedMessage {
  factory SetDifferenceRequest_({
    $core.List<$core.int>? setName,
    SetDifferenceRequest___Minuend? minuend,
    SetDifferenceRequest___Subtrahend? subtrahend,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (minuend != null) {
      $result.minuend = minuend;
    }
    if (subtrahend != null) {
      $result.subtrahend = subtrahend;
    }
    return $result;
  }
  SetDifferenceRequest_._() : super();
  factory SetDifferenceRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetDifferenceRequest__Difference>
      _SetDifferenceRequest__DifferenceByTag = {
    2: SetDifferenceRequest__Difference.minuend,
    3: SetDifferenceRequest__Difference.subtrahend,
    0: SetDifferenceRequest__Difference.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..aOM<SetDifferenceRequest___Minuend>(2, _omitFieldNames ? '' : 'minuend',
        subBuilder: SetDifferenceRequest___Minuend.create)
    ..aOM<SetDifferenceRequest___Subtrahend>(
        3, _omitFieldNames ? '' : 'subtrahend',
        subBuilder: SetDifferenceRequest___Subtrahend.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest_ clone() =>
      SetDifferenceRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceRequest_ copyWith(
          void Function(SetDifferenceRequest_) updates) =>
      super.copyWith((message) => updates(message as SetDifferenceRequest_))
          as SetDifferenceRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest_ create() => SetDifferenceRequest_._();
  SetDifferenceRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceRequest_> createRepeated() =>
      $pb.PbList<SetDifferenceRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDifferenceRequest_>(create);
  static SetDifferenceRequest_? _defaultInstance;

  SetDifferenceRequest__Difference whichDifference() =>
      _SetDifferenceRequest__DifferenceByTag[$_whichOneof(0)]!;
  void clearDifference() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  SetDifferenceRequest___Minuend get minuend => $_getN(1);
  @$pb.TagNumber(2)
  set minuend(SetDifferenceRequest___Minuend v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinuend() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinuend() => clearField(2);
  @$pb.TagNumber(2)
  SetDifferenceRequest___Minuend ensureMinuend() => $_ensure(1);

  @$pb.TagNumber(3)
  SetDifferenceRequest___Subtrahend get subtrahend => $_getN(2);
  @$pb.TagNumber(3)
  set subtrahend(SetDifferenceRequest___Subtrahend v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSubtrahend() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubtrahend() => clearField(3);
  @$pb.TagNumber(3)
  SetDifferenceRequest___Subtrahend ensureSubtrahend() => $_ensure(2);
}

class SetDifferenceResponse___Found extends $pb.GeneratedMessage {
  factory SetDifferenceResponse___Found() => create();
  SetDifferenceResponse___Found._() : super();
  factory SetDifferenceResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceResponse___Found clone() =>
      SetDifferenceResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceResponse___Found copyWith(
          void Function(SetDifferenceResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as SetDifferenceResponse___Found))
          as SetDifferenceResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceResponse___Found create() =>
      SetDifferenceResponse___Found._();
  SetDifferenceResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceResponse___Found> createRepeated() =>
      $pb.PbList<SetDifferenceResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDifferenceResponse___Found>(create);
  static SetDifferenceResponse___Found? _defaultInstance;
}

class SetDifferenceResponse___Missing extends $pb.GeneratedMessage {
  factory SetDifferenceResponse___Missing() => create();
  SetDifferenceResponse___Missing._() : super();
  factory SetDifferenceResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceResponse___Missing clone() =>
      SetDifferenceResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceResponse___Missing copyWith(
          void Function(SetDifferenceResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as SetDifferenceResponse___Missing))
          as SetDifferenceResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceResponse___Missing create() =>
      SetDifferenceResponse___Missing._();
  SetDifferenceResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceResponse___Missing> createRepeated() =>
      $pb.PbList<SetDifferenceResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDifferenceResponse___Missing>(
          create);
  static SetDifferenceResponse___Missing? _defaultInstance;
}

enum SetDifferenceResponse__Set { found, missing, notSet }

class SetDifferenceResponse_ extends $pb.GeneratedMessage {
  factory SetDifferenceResponse_({
    SetDifferenceResponse___Found? found,
    SetDifferenceResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SetDifferenceResponse_._() : super();
  factory SetDifferenceResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetDifferenceResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetDifferenceResponse__Set>
      _SetDifferenceResponse__SetByTag = {
    1: SetDifferenceResponse__Set.found,
    2: SetDifferenceResponse__Set.missing,
    0: SetDifferenceResponse__Set.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetDifferenceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetDifferenceResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SetDifferenceResponse___Found.create)
    ..aOM<SetDifferenceResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: SetDifferenceResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetDifferenceResponse_ clone() =>
      SetDifferenceResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetDifferenceResponse_ copyWith(
          void Function(SetDifferenceResponse_) updates) =>
      super.copyWith((message) => updates(message as SetDifferenceResponse_))
          as SetDifferenceResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDifferenceResponse_ create() => SetDifferenceResponse_._();
  SetDifferenceResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetDifferenceResponse_> createRepeated() =>
      $pb.PbList<SetDifferenceResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetDifferenceResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDifferenceResponse_>(create);
  static SetDifferenceResponse_? _defaultInstance;

  SetDifferenceResponse__Set whichSet() =>
      _SetDifferenceResponse__SetByTag[$_whichOneof(0)]!;
  void clearSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetDifferenceResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SetDifferenceResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SetDifferenceResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SetDifferenceResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SetDifferenceResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SetDifferenceResponse___Missing ensureMissing() => $_ensure(1);
}

class SetContainsRequest_ extends $pb.GeneratedMessage {
  factory SetContainsRequest_({
    $core.List<$core.int>? setName,
    $core.Iterable<$core.List<$core.int>>? elements,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SetContainsRequest_._() : super();
  factory SetContainsRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetContainsRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetContainsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetContainsRequest_ clone() => SetContainsRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetContainsRequest_ copyWith(void Function(SetContainsRequest_) updates) =>
      super.copyWith((message) => updates(message as SetContainsRequest_))
          as SetContainsRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetContainsRequest_ create() => SetContainsRequest_._();
  SetContainsRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetContainsRequest_> createRepeated() =>
      $pb.PbList<SetContainsRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetContainsRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetContainsRequest_>(create);
  static SetContainsRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get elements => $_getList(1);
}

class SetContainsResponse___Found extends $pb.GeneratedMessage {
  factory SetContainsResponse___Found({
    $core.Iterable<$core.bool>? contains,
  }) {
    final $result = create();
    if (contains != null) {
      $result.contains.addAll(contains);
    }
    return $result;
  }
  SetContainsResponse___Found._() : super();
  factory SetContainsResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetContainsResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetContainsResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.bool>(1, _omitFieldNames ? '' : 'contains', $pb.PbFieldType.KB)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetContainsResponse___Found clone() =>
      SetContainsResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetContainsResponse___Found copyWith(
          void Function(SetContainsResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as SetContainsResponse___Found))
          as SetContainsResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetContainsResponse___Found create() =>
      SetContainsResponse___Found._();
  SetContainsResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SetContainsResponse___Found> createRepeated() =>
      $pb.PbList<SetContainsResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SetContainsResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetContainsResponse___Found>(create);
  static SetContainsResponse___Found? _defaultInstance;

  /// This will be the same length as the elements passed in the request.
  /// It represents whether each element is a member of the set, with indices corresponding to the request elements.
  @$pb.TagNumber(1)
  $core.List<$core.bool> get contains => $_getList(0);
}

class SetContainsResponse___Missing extends $pb.GeneratedMessage {
  factory SetContainsResponse___Missing() => create();
  SetContainsResponse___Missing._() : super();
  factory SetContainsResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetContainsResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetContainsResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetContainsResponse___Missing clone() =>
      SetContainsResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetContainsResponse___Missing copyWith(
          void Function(SetContainsResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as SetContainsResponse___Missing))
          as SetContainsResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetContainsResponse___Missing create() =>
      SetContainsResponse___Missing._();
  SetContainsResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SetContainsResponse___Missing> createRepeated() =>
      $pb.PbList<SetContainsResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SetContainsResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetContainsResponse___Missing>(create);
  static SetContainsResponse___Missing? _defaultInstance;
}

enum SetContainsResponse__Set { found, missing, notSet }

class SetContainsResponse_ extends $pb.GeneratedMessage {
  factory SetContainsResponse_({
    SetContainsResponse___Found? found,
    SetContainsResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SetContainsResponse_._() : super();
  factory SetContainsResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetContainsResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetContainsResponse__Set>
      _SetContainsResponse__SetByTag = {
    1: SetContainsResponse__Set.found,
    2: SetContainsResponse__Set.missing,
    0: SetContainsResponse__Set.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetContainsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetContainsResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SetContainsResponse___Found.create)
    ..aOM<SetContainsResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: SetContainsResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetContainsResponse_ clone() =>
      SetContainsResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetContainsResponse_ copyWith(void Function(SetContainsResponse_) updates) =>
      super.copyWith((message) => updates(message as SetContainsResponse_))
          as SetContainsResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetContainsResponse_ create() => SetContainsResponse_._();
  SetContainsResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetContainsResponse_> createRepeated() =>
      $pb.PbList<SetContainsResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetContainsResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetContainsResponse_>(create);
  static SetContainsResponse_? _defaultInstance;

  SetContainsResponse__Set whichSet() =>
      _SetContainsResponse__SetByTag[$_whichOneof(0)]!;
  void clearSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetContainsResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SetContainsResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SetContainsResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SetContainsResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SetContainsResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SetContainsResponse___Missing ensureMissing() => $_ensure(1);
}

class SetLengthRequest_ extends $pb.GeneratedMessage {
  factory SetLengthRequest_({
    $core.List<$core.int>? setName,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    return $result;
  }
  SetLengthRequest_._() : super();
  factory SetLengthRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetLengthRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetLengthRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetLengthRequest_ clone() => SetLengthRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetLengthRequest_ copyWith(void Function(SetLengthRequest_) updates) =>
      super.copyWith((message) => updates(message as SetLengthRequest_))
          as SetLengthRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetLengthRequest_ create() => SetLengthRequest_._();
  SetLengthRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetLengthRequest_> createRepeated() =>
      $pb.PbList<SetLengthRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetLengthRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetLengthRequest_>(create);
  static SetLengthRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);
}

class SetLengthResponse___Found extends $pb.GeneratedMessage {
  factory SetLengthResponse___Found({
    $core.int? length,
  }) {
    final $result = create();
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  SetLengthResponse___Found._() : super();
  factory SetLengthResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetLengthResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetLengthResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetLengthResponse___Found clone() =>
      SetLengthResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetLengthResponse___Found copyWith(
          void Function(SetLengthResponse___Found) updates) =>
      super.copyWith((message) => updates(message as SetLengthResponse___Found))
          as SetLengthResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetLengthResponse___Found create() => SetLengthResponse___Found._();
  SetLengthResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SetLengthResponse___Found> createRepeated() =>
      $pb.PbList<SetLengthResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SetLengthResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetLengthResponse___Found>(create);
  static SetLengthResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get length => $_getIZ(0);
  @$pb.TagNumber(1)
  set length($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearLength() => clearField(1);
}

class SetLengthResponse___Missing extends $pb.GeneratedMessage {
  factory SetLengthResponse___Missing() => create();
  SetLengthResponse___Missing._() : super();
  factory SetLengthResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetLengthResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetLengthResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetLengthResponse___Missing clone() =>
      SetLengthResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetLengthResponse___Missing copyWith(
          void Function(SetLengthResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as SetLengthResponse___Missing))
          as SetLengthResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetLengthResponse___Missing create() =>
      SetLengthResponse___Missing._();
  SetLengthResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SetLengthResponse___Missing> createRepeated() =>
      $pb.PbList<SetLengthResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SetLengthResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetLengthResponse___Missing>(create);
  static SetLengthResponse___Missing? _defaultInstance;
}

enum SetLengthResponse__Set { found, missing, notSet }

class SetLengthResponse_ extends $pb.GeneratedMessage {
  factory SetLengthResponse_({
    SetLengthResponse___Found? found,
    SetLengthResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SetLengthResponse_._() : super();
  factory SetLengthResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetLengthResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetLengthResponse__Set>
      _SetLengthResponse__SetByTag = {
    1: SetLengthResponse__Set.found,
    2: SetLengthResponse__Set.missing,
    0: SetLengthResponse__Set.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetLengthResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetLengthResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SetLengthResponse___Found.create)
    ..aOM<SetLengthResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: SetLengthResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetLengthResponse_ clone() => SetLengthResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetLengthResponse_ copyWith(void Function(SetLengthResponse_) updates) =>
      super.copyWith((message) => updates(message as SetLengthResponse_))
          as SetLengthResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetLengthResponse_ create() => SetLengthResponse_._();
  SetLengthResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetLengthResponse_> createRepeated() =>
      $pb.PbList<SetLengthResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetLengthResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetLengthResponse_>(create);
  static SetLengthResponse_? _defaultInstance;

  SetLengthResponse__Set whichSet() =>
      _SetLengthResponse__SetByTag[$_whichOneof(0)]!;
  void clearSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetLengthResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SetLengthResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SetLengthResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SetLengthResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SetLengthResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SetLengthResponse___Missing ensureMissing() => $_ensure(1);
}

class SetPopRequest_ extends $pb.GeneratedMessage {
  factory SetPopRequest_({
    $core.List<$core.int>? setName,
    $core.int? count,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  SetPopRequest_._() : super();
  factory SetPopRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetPopRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetPopRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetPopRequest_ clone() => SetPopRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetPopRequest_ copyWith(void Function(SetPopRequest_) updates) =>
      super.copyWith((message) => updates(message as SetPopRequest_))
          as SetPopRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPopRequest_ create() => SetPopRequest_._();
  SetPopRequest_ createEmptyInstance() => create();
  static $pb.PbList<SetPopRequest_> createRepeated() =>
      $pb.PbList<SetPopRequest_>();
  @$core.pragma('dart2js:noInline')
  static SetPopRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetPopRequest_>(create);
  static SetPopRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class SetPopResponse___Found extends $pb.GeneratedMessage {
  factory SetPopResponse___Found({
    $core.Iterable<$core.List<$core.int>>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SetPopResponse___Found._() : super();
  factory SetPopResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetPopResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetPopResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetPopResponse___Found clone() =>
      SetPopResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetPopResponse___Found copyWith(
          void Function(SetPopResponse___Found) updates) =>
      super.copyWith((message) => updates(message as SetPopResponse___Found))
          as SetPopResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPopResponse___Found create() => SetPopResponse___Found._();
  SetPopResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SetPopResponse___Found> createRepeated() =>
      $pb.PbList<SetPopResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SetPopResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetPopResponse___Found>(create);
  static SetPopResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get elements => $_getList(0);
}

class SetPopResponse___Missing extends $pb.GeneratedMessage {
  factory SetPopResponse___Missing() => create();
  SetPopResponse___Missing._() : super();
  factory SetPopResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetPopResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetPopResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetPopResponse___Missing clone() =>
      SetPopResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetPopResponse___Missing copyWith(
          void Function(SetPopResponse___Missing) updates) =>
      super.copyWith((message) => updates(message as SetPopResponse___Missing))
          as SetPopResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPopResponse___Missing create() => SetPopResponse___Missing._();
  SetPopResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SetPopResponse___Missing> createRepeated() =>
      $pb.PbList<SetPopResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SetPopResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetPopResponse___Missing>(create);
  static SetPopResponse___Missing? _defaultInstance;
}

enum SetPopResponse__Set { found, missing, notSet }

class SetPopResponse_ extends $pb.GeneratedMessage {
  factory SetPopResponse_({
    SetPopResponse___Found? found,
    SetPopResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SetPopResponse_._() : super();
  factory SetPopResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetPopResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetPopResponse__Set>
      _SetPopResponse__SetByTag = {
    1: SetPopResponse__Set.found,
    2: SetPopResponse__Set.missing,
    0: SetPopResponse__Set.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SetPopResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetPopResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SetPopResponse___Found.create)
    ..aOM<SetPopResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: SetPopResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetPopResponse_ clone() => SetPopResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetPopResponse_ copyWith(void Function(SetPopResponse_) updates) =>
      super.copyWith((message) => updates(message as SetPopResponse_))
          as SetPopResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPopResponse_ create() => SetPopResponse_._();
  SetPopResponse_ createEmptyInstance() => create();
  static $pb.PbList<SetPopResponse_> createRepeated() =>
      $pb.PbList<SetPopResponse_>();
  @$core.pragma('dart2js:noInline')
  static SetPopResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetPopResponse_>(create);
  static SetPopResponse_? _defaultInstance;

  SetPopResponse__Set whichSet() => _SetPopResponse__SetByTag[$_whichOneof(0)]!;
  void clearSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetPopResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SetPopResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SetPopResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SetPopResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SetPopResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SetPopResponse___Missing ensureMissing() => $_ensure(1);
}

class ListConcatenateFrontRequest_ extends $pb.GeneratedMessage {
  factory ListConcatenateFrontRequest_({
    $core.List<$core.int>? listName,
    $core.Iterable<$core.List<$core.int>>? values,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
    $core.int? truncateBackToSize,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    if (truncateBackToSize != null) {
      $result.truncateBackToSize = truncateBackToSize;
    }
    return $result;
  }
  ListConcatenateFrontRequest_._() : super();
  factory ListConcatenateFrontRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListConcatenateFrontRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListConcatenateFrontRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'refreshTtl')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'truncateBackToSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListConcatenateFrontRequest_ clone() =>
      ListConcatenateFrontRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListConcatenateFrontRequest_ copyWith(
          void Function(ListConcatenateFrontRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as ListConcatenateFrontRequest_))
          as ListConcatenateFrontRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListConcatenateFrontRequest_ create() =>
      ListConcatenateFrontRequest_._();
  ListConcatenateFrontRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListConcatenateFrontRequest_> createRepeated() =>
      $pb.PbList<ListConcatenateFrontRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListConcatenateFrontRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListConcatenateFrontRequest_>(create);
  static ListConcatenateFrontRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get values => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get refreshTtl => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshTtl($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRefreshTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshTtl() => clearField(4);

  /// ensure total length <= this; remove excess from back of list
  @$pb.TagNumber(5)
  $core.int get truncateBackToSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set truncateBackToSize($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTruncateBackToSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearTruncateBackToSize() => clearField(5);
}

class ListConcatenateFrontResponse_ extends $pb.GeneratedMessage {
  factory ListConcatenateFrontResponse_({
    $core.int? listLength,
  }) {
    final $result = create();
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListConcatenateFrontResponse_._() : super();
  factory ListConcatenateFrontResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListConcatenateFrontResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListConcatenateFrontResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListConcatenateFrontResponse_ clone() =>
      ListConcatenateFrontResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListConcatenateFrontResponse_ copyWith(
          void Function(ListConcatenateFrontResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as ListConcatenateFrontResponse_))
          as ListConcatenateFrontResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListConcatenateFrontResponse_ create() =>
      ListConcatenateFrontResponse_._();
  ListConcatenateFrontResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListConcatenateFrontResponse_> createRepeated() =>
      $pb.PbList<ListConcatenateFrontResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListConcatenateFrontResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListConcatenateFrontResponse_>(create);
  static ListConcatenateFrontResponse_? _defaultInstance;

  /// length of the list after the concatenation
  @$pb.TagNumber(1)
  $core.int get listLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set listLength($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearListLength() => clearField(1);
}

class ListConcatenateBackRequest_ extends $pb.GeneratedMessage {
  factory ListConcatenateBackRequest_({
    $core.List<$core.int>? listName,
    $core.Iterable<$core.List<$core.int>>? values,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
    $core.int? truncateFrontToSize,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    if (truncateFrontToSize != null) {
      $result.truncateFrontToSize = truncateFrontToSize;
    }
    return $result;
  }
  ListConcatenateBackRequest_._() : super();
  factory ListConcatenateBackRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListConcatenateBackRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListConcatenateBackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'refreshTtl')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'truncateFrontToSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListConcatenateBackRequest_ clone() =>
      ListConcatenateBackRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListConcatenateBackRequest_ copyWith(
          void Function(ListConcatenateBackRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as ListConcatenateBackRequest_))
          as ListConcatenateBackRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListConcatenateBackRequest_ create() =>
      ListConcatenateBackRequest_._();
  ListConcatenateBackRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListConcatenateBackRequest_> createRepeated() =>
      $pb.PbList<ListConcatenateBackRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListConcatenateBackRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListConcatenateBackRequest_>(create);
  static ListConcatenateBackRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get values => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get refreshTtl => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshTtl($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRefreshTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshTtl() => clearField(4);

  /// ensure total length <= this; remove excess from front of list
  @$pb.TagNumber(5)
  $core.int get truncateFrontToSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set truncateFrontToSize($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTruncateFrontToSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearTruncateFrontToSize() => clearField(5);
}

class ListConcatenateBackResponse_ extends $pb.GeneratedMessage {
  factory ListConcatenateBackResponse_({
    $core.int? listLength,
  }) {
    final $result = create();
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListConcatenateBackResponse_._() : super();
  factory ListConcatenateBackResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListConcatenateBackResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListConcatenateBackResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListConcatenateBackResponse_ clone() =>
      ListConcatenateBackResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListConcatenateBackResponse_ copyWith(
          void Function(ListConcatenateBackResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as ListConcatenateBackResponse_))
          as ListConcatenateBackResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListConcatenateBackResponse_ create() =>
      ListConcatenateBackResponse_._();
  ListConcatenateBackResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListConcatenateBackResponse_> createRepeated() =>
      $pb.PbList<ListConcatenateBackResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListConcatenateBackResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListConcatenateBackResponse_>(create);
  static ListConcatenateBackResponse_? _defaultInstance;

  /// length of the list after the concatenation
  @$pb.TagNumber(1)
  $core.int get listLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set listLength($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearListLength() => clearField(1);
}

/// stored = request + stored
class ListPushFrontRequest_ extends $pb.GeneratedMessage {
  factory ListPushFrontRequest_({
    $core.List<$core.int>? listName,
    $core.List<$core.int>? value,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
    $core.int? truncateBackToSize,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    if (truncateBackToSize != null) {
      $result.truncateBackToSize = truncateBackToSize;
    }
    return $result;
  }
  ListPushFrontRequest_._() : super();
  factory ListPushFrontRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPushFrontRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPushFrontRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'refreshTtl')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'truncateBackToSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPushFrontRequest_ clone() =>
      ListPushFrontRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPushFrontRequest_ copyWith(
          void Function(ListPushFrontRequest_) updates) =>
      super.copyWith((message) => updates(message as ListPushFrontRequest_))
          as ListPushFrontRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPushFrontRequest_ create() => ListPushFrontRequest_._();
  ListPushFrontRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListPushFrontRequest_> createRepeated() =>
      $pb.PbList<ListPushFrontRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListPushFrontRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPushFrontRequest_>(create);
  static ListPushFrontRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get refreshTtl => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshTtl($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRefreshTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshTtl() => clearField(4);

  /// ensure total length <= this; remove excess from back of list
  @$pb.TagNumber(5)
  $core.int get truncateBackToSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set truncateBackToSize($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTruncateBackToSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearTruncateBackToSize() => clearField(5);
}

class ListPushFrontResponse_ extends $pb.GeneratedMessage {
  factory ListPushFrontResponse_({
    $core.int? listLength,
  }) {
    final $result = create();
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListPushFrontResponse_._() : super();
  factory ListPushFrontResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPushFrontResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPushFrontResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPushFrontResponse_ clone() =>
      ListPushFrontResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPushFrontResponse_ copyWith(
          void Function(ListPushFrontResponse_) updates) =>
      super.copyWith((message) => updates(message as ListPushFrontResponse_))
          as ListPushFrontResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPushFrontResponse_ create() => ListPushFrontResponse_._();
  ListPushFrontResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListPushFrontResponse_> createRepeated() =>
      $pb.PbList<ListPushFrontResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListPushFrontResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPushFrontResponse_>(create);
  static ListPushFrontResponse_? _defaultInstance;

  /// length of the list after the push
  @$pb.TagNumber(1)
  $core.int get listLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set listLength($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearListLength() => clearField(1);
}

/// stored = stored + request
class ListPushBackRequest_ extends $pb.GeneratedMessage {
  factory ListPushBackRequest_({
    $core.List<$core.int>? listName,
    $core.List<$core.int>? value,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
    $core.int? truncateFrontToSize,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    if (truncateFrontToSize != null) {
      $result.truncateFrontToSize = truncateFrontToSize;
    }
    return $result;
  }
  ListPushBackRequest_._() : super();
  factory ListPushBackRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPushBackRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPushBackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'refreshTtl')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'truncateFrontToSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPushBackRequest_ clone() =>
      ListPushBackRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPushBackRequest_ copyWith(void Function(ListPushBackRequest_) updates) =>
      super.copyWith((message) => updates(message as ListPushBackRequest_))
          as ListPushBackRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPushBackRequest_ create() => ListPushBackRequest_._();
  ListPushBackRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListPushBackRequest_> createRepeated() =>
      $pb.PbList<ListPushBackRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListPushBackRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPushBackRequest_>(create);
  static ListPushBackRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get refreshTtl => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshTtl($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRefreshTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshTtl() => clearField(4);

  /// ensure total length <= this; remove excess from front of list
  @$pb.TagNumber(5)
  $core.int get truncateFrontToSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set truncateFrontToSize($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTruncateFrontToSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearTruncateFrontToSize() => clearField(5);
}

class ListPushBackResponse_ extends $pb.GeneratedMessage {
  factory ListPushBackResponse_({
    $core.int? listLength,
  }) {
    final $result = create();
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListPushBackResponse_._() : super();
  factory ListPushBackResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPushBackResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPushBackResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPushBackResponse_ clone() =>
      ListPushBackResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPushBackResponse_ copyWith(
          void Function(ListPushBackResponse_) updates) =>
      super.copyWith((message) => updates(message as ListPushBackResponse_))
          as ListPushBackResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPushBackResponse_ create() => ListPushBackResponse_._();
  ListPushBackResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListPushBackResponse_> createRepeated() =>
      $pb.PbList<ListPushBackResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListPushBackResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPushBackResponse_>(create);
  static ListPushBackResponse_? _defaultInstance;

  /// length of the list after the push
  @$pb.TagNumber(1)
  $core.int get listLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set listLength($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearListLength() => clearField(1);
}

class ListPopFrontRequest_ extends $pb.GeneratedMessage {
  factory ListPopFrontRequest_({
    $core.List<$core.int>? listName,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    return $result;
  }
  ListPopFrontRequest_._() : super();
  factory ListPopFrontRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopFrontRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopFrontRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopFrontRequest_ clone() =>
      ListPopFrontRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopFrontRequest_ copyWith(void Function(ListPopFrontRequest_) updates) =>
      super.copyWith((message) => updates(message as ListPopFrontRequest_))
          as ListPopFrontRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopFrontRequest_ create() => ListPopFrontRequest_._();
  ListPopFrontRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListPopFrontRequest_> createRepeated() =>
      $pb.PbList<ListPopFrontRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListPopFrontRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopFrontRequest_>(create);
  static ListPopFrontRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);
}

class ListPopFrontResponse___Found extends $pb.GeneratedMessage {
  factory ListPopFrontResponse___Found({
    $core.List<$core.int>? front,
    $core.int? listLength,
  }) {
    final $result = create();
    if (front != null) {
      $result.front = front;
    }
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListPopFrontResponse___Found._() : super();
  factory ListPopFrontResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopFrontResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopFrontResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'front', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopFrontResponse___Found clone() =>
      ListPopFrontResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopFrontResponse___Found copyWith(
          void Function(ListPopFrontResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as ListPopFrontResponse___Found))
          as ListPopFrontResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopFrontResponse___Found create() =>
      ListPopFrontResponse___Found._();
  ListPopFrontResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ListPopFrontResponse___Found> createRepeated() =>
      $pb.PbList<ListPopFrontResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ListPopFrontResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopFrontResponse___Found>(create);
  static ListPopFrontResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get front => $_getN(0);
  @$pb.TagNumber(1)
  set front($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFront() => $_has(0);
  @$pb.TagNumber(1)
  void clearFront() => clearField(1);

  /// length of the list after the pop
  @$pb.TagNumber(2)
  $core.int get listLength => $_getIZ(1);
  @$pb.TagNumber(2)
  set listLength($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasListLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearListLength() => clearField(2);
}

class ListPopFrontResponse___Missing extends $pb.GeneratedMessage {
  factory ListPopFrontResponse___Missing() => create();
  ListPopFrontResponse___Missing._() : super();
  factory ListPopFrontResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopFrontResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopFrontResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopFrontResponse___Missing clone() =>
      ListPopFrontResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopFrontResponse___Missing copyWith(
          void Function(ListPopFrontResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ListPopFrontResponse___Missing))
          as ListPopFrontResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopFrontResponse___Missing create() =>
      ListPopFrontResponse___Missing._();
  ListPopFrontResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ListPopFrontResponse___Missing> createRepeated() =>
      $pb.PbList<ListPopFrontResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ListPopFrontResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopFrontResponse___Missing>(create);
  static ListPopFrontResponse___Missing? _defaultInstance;
}

enum ListPopFrontResponse__List { found, missing, notSet }

class ListPopFrontResponse_ extends $pb.GeneratedMessage {
  factory ListPopFrontResponse_({
    ListPopFrontResponse___Found? found,
    ListPopFrontResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ListPopFrontResponse_._() : super();
  factory ListPopFrontResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopFrontResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListPopFrontResponse__List>
      _ListPopFrontResponse__ListByTag = {
    1: ListPopFrontResponse__List.found,
    2: ListPopFrontResponse__List.missing,
    0: ListPopFrontResponse__List.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopFrontResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListPopFrontResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ListPopFrontResponse___Found.create)
    ..aOM<ListPopFrontResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ListPopFrontResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopFrontResponse_ clone() =>
      ListPopFrontResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopFrontResponse_ copyWith(
          void Function(ListPopFrontResponse_) updates) =>
      super.copyWith((message) => updates(message as ListPopFrontResponse_))
          as ListPopFrontResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopFrontResponse_ create() => ListPopFrontResponse_._();
  ListPopFrontResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListPopFrontResponse_> createRepeated() =>
      $pb.PbList<ListPopFrontResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListPopFrontResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopFrontResponse_>(create);
  static ListPopFrontResponse_? _defaultInstance;

  ListPopFrontResponse__List whichList() =>
      _ListPopFrontResponse__ListByTag[$_whichOneof(0)]!;
  void clearList() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListPopFrontResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ListPopFrontResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ListPopFrontResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ListPopFrontResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ListPopFrontResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ListPopFrontResponse___Missing ensureMissing() => $_ensure(1);
}

class ListPopBackRequest_ extends $pb.GeneratedMessage {
  factory ListPopBackRequest_({
    $core.List<$core.int>? listName,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    return $result;
  }
  ListPopBackRequest_._() : super();
  factory ListPopBackRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopBackRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopBackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopBackRequest_ clone() => ListPopBackRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopBackRequest_ copyWith(void Function(ListPopBackRequest_) updates) =>
      super.copyWith((message) => updates(message as ListPopBackRequest_))
          as ListPopBackRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopBackRequest_ create() => ListPopBackRequest_._();
  ListPopBackRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListPopBackRequest_> createRepeated() =>
      $pb.PbList<ListPopBackRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListPopBackRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopBackRequest_>(create);
  static ListPopBackRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);
}

class ListPopBackResponse___Found extends $pb.GeneratedMessage {
  factory ListPopBackResponse___Found({
    $core.List<$core.int>? back,
    $core.int? listLength,
  }) {
    final $result = create();
    if (back != null) {
      $result.back = back;
    }
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListPopBackResponse___Found._() : super();
  factory ListPopBackResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopBackResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopBackResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'back', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopBackResponse___Found clone() =>
      ListPopBackResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopBackResponse___Found copyWith(
          void Function(ListPopBackResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as ListPopBackResponse___Found))
          as ListPopBackResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopBackResponse___Found create() =>
      ListPopBackResponse___Found._();
  ListPopBackResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ListPopBackResponse___Found> createRepeated() =>
      $pb.PbList<ListPopBackResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ListPopBackResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopBackResponse___Found>(create);
  static ListPopBackResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get back => $_getN(0);
  @$pb.TagNumber(1)
  set back($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBack() => $_has(0);
  @$pb.TagNumber(1)
  void clearBack() => clearField(1);

  /// length of the list after the pop
  @$pb.TagNumber(2)
  $core.int get listLength => $_getIZ(1);
  @$pb.TagNumber(2)
  set listLength($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasListLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearListLength() => clearField(2);
}

class ListPopBackResponse___Missing extends $pb.GeneratedMessage {
  factory ListPopBackResponse___Missing() => create();
  ListPopBackResponse___Missing._() : super();
  factory ListPopBackResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopBackResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopBackResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopBackResponse___Missing clone() =>
      ListPopBackResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopBackResponse___Missing copyWith(
          void Function(ListPopBackResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ListPopBackResponse___Missing))
          as ListPopBackResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopBackResponse___Missing create() =>
      ListPopBackResponse___Missing._();
  ListPopBackResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ListPopBackResponse___Missing> createRepeated() =>
      $pb.PbList<ListPopBackResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ListPopBackResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopBackResponse___Missing>(create);
  static ListPopBackResponse___Missing? _defaultInstance;
}

enum ListPopBackResponse__List { found, missing, notSet }

class ListPopBackResponse_ extends $pb.GeneratedMessage {
  factory ListPopBackResponse_({
    ListPopBackResponse___Found? found,
    ListPopBackResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ListPopBackResponse_._() : super();
  factory ListPopBackResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPopBackResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListPopBackResponse__List>
      _ListPopBackResponse__ListByTag = {
    1: ListPopBackResponse__List.found,
    2: ListPopBackResponse__List.missing,
    0: ListPopBackResponse__List.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListPopBackResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListPopBackResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ListPopBackResponse___Found.create)
    ..aOM<ListPopBackResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ListPopBackResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListPopBackResponse_ clone() =>
      ListPopBackResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListPopBackResponse_ copyWith(void Function(ListPopBackResponse_) updates) =>
      super.copyWith((message) => updates(message as ListPopBackResponse_))
          as ListPopBackResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPopBackResponse_ create() => ListPopBackResponse_._();
  ListPopBackResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListPopBackResponse_> createRepeated() =>
      $pb.PbList<ListPopBackResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListPopBackResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPopBackResponse_>(create);
  static ListPopBackResponse_? _defaultInstance;

  ListPopBackResponse__List whichList() =>
      _ListPopBackResponse__ListByTag[$_whichOneof(0)]!;
  void clearList() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListPopBackResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ListPopBackResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ListPopBackResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ListPopBackResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ListPopBackResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ListPopBackResponse___Missing ensureMissing() => $_ensure(1);
}

class ListRange_ extends $pb.GeneratedMessage {
  factory ListRange_({
    $core.int? beginIndex,
    $core.int? count,
  }) {
    final $result = create();
    if (beginIndex != null) {
      $result.beginIndex = beginIndex;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ListRange_._() : super();
  factory ListRange_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRange_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRange',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'beginIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRange_ clone() => ListRange_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRange_ copyWith(void Function(ListRange_) updates) =>
      super.copyWith((message) => updates(message as ListRange_)) as ListRange_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRange_ create() => ListRange_._();
  ListRange_ createEmptyInstance() => create();
  static $pb.PbList<ListRange_> createRepeated() => $pb.PbList<ListRange_>();
  @$core.pragma('dart2js:noInline')
  static ListRange_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRange_>(create);
  static ListRange_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get beginIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set beginIndex($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBeginIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearBeginIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class ListEraseRequest___All extends $pb.GeneratedMessage {
  factory ListEraseRequest___All() => create();
  ListEraseRequest___All._() : super();
  factory ListEraseRequest___All.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEraseRequest___All.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListEraseRequest._All',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEraseRequest___All clone() =>
      ListEraseRequest___All()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEraseRequest___All copyWith(
          void Function(ListEraseRequest___All) updates) =>
      super.copyWith((message) => updates(message as ListEraseRequest___All))
          as ListEraseRequest___All;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEraseRequest___All create() => ListEraseRequest___All._();
  ListEraseRequest___All createEmptyInstance() => create();
  static $pb.PbList<ListEraseRequest___All> createRepeated() =>
      $pb.PbList<ListEraseRequest___All>();
  @$core.pragma('dart2js:noInline')
  static ListEraseRequest___All getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEraseRequest___All>(create);
  static ListEraseRequest___All? _defaultInstance;
}

class ListEraseRequest___ListRanges extends $pb.GeneratedMessage {
  factory ListEraseRequest___ListRanges({
    $core.Iterable<ListRange_>? ranges,
  }) {
    final $result = create();
    if (ranges != null) {
      $result.ranges.addAll(ranges);
    }
    return $result;
  }
  ListEraseRequest___ListRanges._() : super();
  factory ListEraseRequest___ListRanges.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEraseRequest___ListRanges.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListEraseRequest._ListRanges',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..pc<ListRange_>(1, _omitFieldNames ? '' : 'ranges', $pb.PbFieldType.PM,
        subBuilder: ListRange_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEraseRequest___ListRanges clone() =>
      ListEraseRequest___ListRanges()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEraseRequest___ListRanges copyWith(
          void Function(ListEraseRequest___ListRanges) updates) =>
      super.copyWith(
              (message) => updates(message as ListEraseRequest___ListRanges))
          as ListEraseRequest___ListRanges;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEraseRequest___ListRanges create() =>
      ListEraseRequest___ListRanges._();
  ListEraseRequest___ListRanges createEmptyInstance() => create();
  static $pb.PbList<ListEraseRequest___ListRanges> createRepeated() =>
      $pb.PbList<ListEraseRequest___ListRanges>();
  @$core.pragma('dart2js:noInline')
  static ListEraseRequest___ListRanges getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEraseRequest___ListRanges>(create);
  static ListEraseRequest___ListRanges? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ListRange_> get ranges => $_getList(0);
}

enum ListEraseRequest__Erase { some, all, notSet }

class ListEraseRequest_ extends $pb.GeneratedMessage {
  factory ListEraseRequest_({
    $core.List<$core.int>? listName,
    ListEraseRequest___ListRanges? some,
    ListEraseRequest___All? all,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (some != null) {
      $result.some = some;
    }
    if (all != null) {
      $result.all = all;
    }
    return $result;
  }
  ListEraseRequest_._() : super();
  factory ListEraseRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEraseRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListEraseRequest__Erase>
      _ListEraseRequest__EraseByTag = {
    2: ListEraseRequest__Erase.some,
    3: ListEraseRequest__Erase.all,
    0: ListEraseRequest__Erase.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListEraseRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..aOM<ListEraseRequest___ListRanges>(2, _omitFieldNames ? '' : 'some',
        subBuilder: ListEraseRequest___ListRanges.create)
    ..aOM<ListEraseRequest___All>(3, _omitFieldNames ? '' : 'all',
        subBuilder: ListEraseRequest___All.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEraseRequest_ clone() => ListEraseRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEraseRequest_ copyWith(void Function(ListEraseRequest_) updates) =>
      super.copyWith((message) => updates(message as ListEraseRequest_))
          as ListEraseRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEraseRequest_ create() => ListEraseRequest_._();
  ListEraseRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListEraseRequest_> createRepeated() =>
      $pb.PbList<ListEraseRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListEraseRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEraseRequest_>(create);
  static ListEraseRequest_? _defaultInstance;

  ListEraseRequest__Erase whichErase() =>
      _ListEraseRequest__EraseByTag[$_whichOneof(0)]!;
  void clearErase() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  @$pb.TagNumber(2)
  ListEraseRequest___ListRanges get some => $_getN(1);
  @$pb.TagNumber(2)
  set some(ListEraseRequest___ListRanges v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSome() => $_has(1);
  @$pb.TagNumber(2)
  void clearSome() => clearField(2);
  @$pb.TagNumber(2)
  ListEraseRequest___ListRanges ensureSome() => $_ensure(1);

  @$pb.TagNumber(3)
  ListEraseRequest___All get all => $_getN(2);
  @$pb.TagNumber(3)
  set all(ListEraseRequest___All v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAll() => $_has(2);
  @$pb.TagNumber(3)
  void clearAll() => clearField(3);
  @$pb.TagNumber(3)
  ListEraseRequest___All ensureAll() => $_ensure(2);
}

class ListEraseResponse___Found extends $pb.GeneratedMessage {
  factory ListEraseResponse___Found({
    $core.int? listLength,
  }) {
    final $result = create();
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListEraseResponse___Found._() : super();
  factory ListEraseResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEraseResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListEraseResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEraseResponse___Found clone() =>
      ListEraseResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEraseResponse___Found copyWith(
          void Function(ListEraseResponse___Found) updates) =>
      super.copyWith((message) => updates(message as ListEraseResponse___Found))
          as ListEraseResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEraseResponse___Found create() => ListEraseResponse___Found._();
  ListEraseResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ListEraseResponse___Found> createRepeated() =>
      $pb.PbList<ListEraseResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ListEraseResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEraseResponse___Found>(create);
  static ListEraseResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get listLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set listLength($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearListLength() => clearField(1);
}

class ListEraseResponse___Missing extends $pb.GeneratedMessage {
  factory ListEraseResponse___Missing() => create();
  ListEraseResponse___Missing._() : super();
  factory ListEraseResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEraseResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListEraseResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEraseResponse___Missing clone() =>
      ListEraseResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEraseResponse___Missing copyWith(
          void Function(ListEraseResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ListEraseResponse___Missing))
          as ListEraseResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEraseResponse___Missing create() =>
      ListEraseResponse___Missing._();
  ListEraseResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ListEraseResponse___Missing> createRepeated() =>
      $pb.PbList<ListEraseResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ListEraseResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEraseResponse___Missing>(create);
  static ListEraseResponse___Missing? _defaultInstance;
}

enum ListEraseResponse__List { found, missing, notSet }

class ListEraseResponse_ extends $pb.GeneratedMessage {
  factory ListEraseResponse_({
    ListEraseResponse___Found? found,
    ListEraseResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ListEraseResponse_._() : super();
  factory ListEraseResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListEraseResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListEraseResponse__List>
      _ListEraseResponse__ListByTag = {
    1: ListEraseResponse__List.found,
    2: ListEraseResponse__List.missing,
    0: ListEraseResponse__List.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListEraseResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListEraseResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ListEraseResponse___Found.create)
    ..aOM<ListEraseResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ListEraseResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListEraseResponse_ clone() => ListEraseResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListEraseResponse_ copyWith(void Function(ListEraseResponse_) updates) =>
      super.copyWith((message) => updates(message as ListEraseResponse_))
          as ListEraseResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEraseResponse_ create() => ListEraseResponse_._();
  ListEraseResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListEraseResponse_> createRepeated() =>
      $pb.PbList<ListEraseResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListEraseResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEraseResponse_>(create);
  static ListEraseResponse_? _defaultInstance;

  ListEraseResponse__List whichList() =>
      _ListEraseResponse__ListByTag[$_whichOneof(0)]!;
  void clearList() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListEraseResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ListEraseResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ListEraseResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ListEraseResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ListEraseResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ListEraseResponse___Missing ensureMissing() => $_ensure(1);
}

enum ListRemoveRequest__Remove { allElementsWithValue, notSet }

class ListRemoveRequest_ extends $pb.GeneratedMessage {
  factory ListRemoveRequest_({
    $core.List<$core.int>? listName,
    $core.List<$core.int>? allElementsWithValue,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (allElementsWithValue != null) {
      $result.allElementsWithValue = allElementsWithValue;
    }
    return $result;
  }
  ListRemoveRequest_._() : super();
  factory ListRemoveRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRemoveRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListRemoveRequest__Remove>
      _ListRemoveRequest__RemoveByTag = {
    2: ListRemoveRequest__Remove.allElementsWithValue,
    0: ListRemoveRequest__Remove.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRemoveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'allElementsWithValue', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRemoveRequest_ clone() => ListRemoveRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRemoveRequest_ copyWith(void Function(ListRemoveRequest_) updates) =>
      super.copyWith((message) => updates(message as ListRemoveRequest_))
          as ListRemoveRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRemoveRequest_ create() => ListRemoveRequest_._();
  ListRemoveRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListRemoveRequest_> createRepeated() =>
      $pb.PbList<ListRemoveRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListRemoveRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRemoveRequest_>(create);
  static ListRemoveRequest_? _defaultInstance;

  ListRemoveRequest__Remove whichRemove() =>
      _ListRemoveRequest__RemoveByTag[$_whichOneof(0)]!;
  void clearRemove() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  /// Remove all appearances in the list where the element is this value
  @$pb.TagNumber(2)
  $core.List<$core.int> get allElementsWithValue => $_getN(1);
  @$pb.TagNumber(2)
  set allElementsWithValue($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAllElementsWithValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllElementsWithValue() => clearField(2);
}

class ListRemoveResponse___Found extends $pb.GeneratedMessage {
  factory ListRemoveResponse___Found({
    $core.int? listLength,
  }) {
    final $result = create();
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListRemoveResponse___Found._() : super();
  factory ListRemoveResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRemoveResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRemoveResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRemoveResponse___Found clone() =>
      ListRemoveResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRemoveResponse___Found copyWith(
          void Function(ListRemoveResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as ListRemoveResponse___Found))
          as ListRemoveResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRemoveResponse___Found create() => ListRemoveResponse___Found._();
  ListRemoveResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ListRemoveResponse___Found> createRepeated() =>
      $pb.PbList<ListRemoveResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ListRemoveResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRemoveResponse___Found>(create);
  static ListRemoveResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get listLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set listLength($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearListLength() => clearField(1);
}

class ListRemoveResponse___Missing extends $pb.GeneratedMessage {
  factory ListRemoveResponse___Missing() => create();
  ListRemoveResponse___Missing._() : super();
  factory ListRemoveResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRemoveResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRemoveResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRemoveResponse___Missing clone() =>
      ListRemoveResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRemoveResponse___Missing copyWith(
          void Function(ListRemoveResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ListRemoveResponse___Missing))
          as ListRemoveResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRemoveResponse___Missing create() =>
      ListRemoveResponse___Missing._();
  ListRemoveResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ListRemoveResponse___Missing> createRepeated() =>
      $pb.PbList<ListRemoveResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ListRemoveResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRemoveResponse___Missing>(create);
  static ListRemoveResponse___Missing? _defaultInstance;
}

enum ListRemoveResponse__List { found, missing, notSet }

class ListRemoveResponse_ extends $pb.GeneratedMessage {
  factory ListRemoveResponse_({
    ListRemoveResponse___Found? found,
    ListRemoveResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ListRemoveResponse_._() : super();
  factory ListRemoveResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRemoveResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListRemoveResponse__List>
      _ListRemoveResponse__ListByTag = {
    1: ListRemoveResponse__List.found,
    2: ListRemoveResponse__List.missing,
    0: ListRemoveResponse__List.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRemoveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListRemoveResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ListRemoveResponse___Found.create)
    ..aOM<ListRemoveResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ListRemoveResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRemoveResponse_ clone() => ListRemoveResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRemoveResponse_ copyWith(void Function(ListRemoveResponse_) updates) =>
      super.copyWith((message) => updates(message as ListRemoveResponse_))
          as ListRemoveResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRemoveResponse_ create() => ListRemoveResponse_._();
  ListRemoveResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListRemoveResponse_> createRepeated() =>
      $pb.PbList<ListRemoveResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListRemoveResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRemoveResponse_>(create);
  static ListRemoveResponse_? _defaultInstance;

  ListRemoveResponse__List whichList() =>
      _ListRemoveResponse__ListByTag[$_whichOneof(0)]!;
  void clearList() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListRemoveResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ListRemoveResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ListRemoveResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ListRemoveResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ListRemoveResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ListRemoveResponse___Missing ensureMissing() => $_ensure(1);
}

enum ListFetchRequest__StartIndex { unboundedStart, inclusiveStart, notSet }

enum ListFetchRequest__EndIndex { unboundedEnd, exclusiveEnd, notSet }

class ListFetchRequest_ extends $pb.GeneratedMessage {
  factory ListFetchRequest_({
    $core.List<$core.int>? listName,
    $3.Unbounded_? unboundedStart,
    $core.int? inclusiveStart,
    $3.Unbounded_? unboundedEnd,
    $core.int? exclusiveEnd,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (unboundedStart != null) {
      $result.unboundedStart = unboundedStart;
    }
    if (inclusiveStart != null) {
      $result.inclusiveStart = inclusiveStart;
    }
    if (unboundedEnd != null) {
      $result.unboundedEnd = unboundedEnd;
    }
    if (exclusiveEnd != null) {
      $result.exclusiveEnd = exclusiveEnd;
    }
    return $result;
  }
  ListFetchRequest_._() : super();
  factory ListFetchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListFetchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListFetchRequest__StartIndex>
      _ListFetchRequest__StartIndexByTag = {
    2: ListFetchRequest__StartIndex.unboundedStart,
    3: ListFetchRequest__StartIndex.inclusiveStart,
    0: ListFetchRequest__StartIndex.notSet
  };
  static const $core.Map<$core.int, ListFetchRequest__EndIndex>
      _ListFetchRequest__EndIndexByTag = {
    4: ListFetchRequest__EndIndex.unboundedEnd,
    5: ListFetchRequest__EndIndex.exclusiveEnd,
    0: ListFetchRequest__EndIndex.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListFetchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..aOM<$3.Unbounded_>(2, _omitFieldNames ? '' : 'unboundedStart',
        subBuilder: $3.Unbounded_.create)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'inclusiveStart', $pb.PbFieldType.OS3)
    ..aOM<$3.Unbounded_>(4, _omitFieldNames ? '' : 'unboundedEnd',
        subBuilder: $3.Unbounded_.create)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'exclusiveEnd', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListFetchRequest_ clone() => ListFetchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListFetchRequest_ copyWith(void Function(ListFetchRequest_) updates) =>
      super.copyWith((message) => updates(message as ListFetchRequest_))
          as ListFetchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFetchRequest_ create() => ListFetchRequest_._();
  ListFetchRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListFetchRequest_> createRepeated() =>
      $pb.PbList<ListFetchRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListFetchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListFetchRequest_>(create);
  static ListFetchRequest_? _defaultInstance;

  ListFetchRequest__StartIndex whichStartIndex() =>
      _ListFetchRequest__StartIndexByTag[$_whichOneof(0)]!;
  void clearStartIndex() => clearField($_whichOneof(0));

  ListFetchRequest__EndIndex whichEndIndex() =>
      _ListFetchRequest__EndIndexByTag[$_whichOneof(1)]!;
  void clearEndIndex() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  @$pb.TagNumber(2)
  $3.Unbounded_ get unboundedStart => $_getN(1);
  @$pb.TagNumber(2)
  set unboundedStart($3.Unbounded_ v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUnboundedStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnboundedStart() => clearField(2);
  @$pb.TagNumber(2)
  $3.Unbounded_ ensureUnboundedStart() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get inclusiveStart => $_getIZ(2);
  @$pb.TagNumber(3)
  set inclusiveStart($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInclusiveStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearInclusiveStart() => clearField(3);

  @$pb.TagNumber(4)
  $3.Unbounded_ get unboundedEnd => $_getN(3);
  @$pb.TagNumber(4)
  set unboundedEnd($3.Unbounded_ v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUnboundedEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnboundedEnd() => clearField(4);
  @$pb.TagNumber(4)
  $3.Unbounded_ ensureUnboundedEnd() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get exclusiveEnd => $_getIZ(4);
  @$pb.TagNumber(5)
  set exclusiveEnd($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExclusiveEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearExclusiveEnd() => clearField(5);
}

enum ListRetainRequest__StartIndex { unboundedStart, inclusiveStart, notSet }

enum ListRetainRequest__EndIndex { unboundedEnd, exclusiveEnd, notSet }

class ListRetainRequest_ extends $pb.GeneratedMessage {
  factory ListRetainRequest_({
    $core.List<$core.int>? listName,
    $3.Unbounded_? unboundedStart,
    $core.int? inclusiveStart,
    $3.Unbounded_? unboundedEnd,
    $core.int? exclusiveEnd,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    if (unboundedStart != null) {
      $result.unboundedStart = unboundedStart;
    }
    if (inclusiveStart != null) {
      $result.inclusiveStart = inclusiveStart;
    }
    if (unboundedEnd != null) {
      $result.unboundedEnd = unboundedEnd;
    }
    if (exclusiveEnd != null) {
      $result.exclusiveEnd = exclusiveEnd;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    return $result;
  }
  ListRetainRequest_._() : super();
  factory ListRetainRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRetainRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListRetainRequest__StartIndex>
      _ListRetainRequest__StartIndexByTag = {
    2: ListRetainRequest__StartIndex.unboundedStart,
    3: ListRetainRequest__StartIndex.inclusiveStart,
    0: ListRetainRequest__StartIndex.notSet
  };
  static const $core.Map<$core.int, ListRetainRequest__EndIndex>
      _ListRetainRequest__EndIndexByTag = {
    4: ListRetainRequest__EndIndex.unboundedEnd,
    5: ListRetainRequest__EndIndex.exclusiveEnd,
    0: ListRetainRequest__EndIndex.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRetainRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..aOM<$3.Unbounded_>(2, _omitFieldNames ? '' : 'unboundedStart',
        subBuilder: $3.Unbounded_.create)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'inclusiveStart', $pb.PbFieldType.OS3)
    ..aOM<$3.Unbounded_>(4, _omitFieldNames ? '' : 'unboundedEnd',
        subBuilder: $3.Unbounded_.create)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'exclusiveEnd', $pb.PbFieldType.OS3)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(7, _omitFieldNames ? '' : 'refreshTtl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRetainRequest_ clone() => ListRetainRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRetainRequest_ copyWith(void Function(ListRetainRequest_) updates) =>
      super.copyWith((message) => updates(message as ListRetainRequest_))
          as ListRetainRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRetainRequest_ create() => ListRetainRequest_._();
  ListRetainRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListRetainRequest_> createRepeated() =>
      $pb.PbList<ListRetainRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListRetainRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRetainRequest_>(create);
  static ListRetainRequest_? _defaultInstance;

  ListRetainRequest__StartIndex whichStartIndex() =>
      _ListRetainRequest__StartIndexByTag[$_whichOneof(0)]!;
  void clearStartIndex() => clearField($_whichOneof(0));

  ListRetainRequest__EndIndex whichEndIndex() =>
      _ListRetainRequest__EndIndexByTag[$_whichOneof(1)]!;
  void clearEndIndex() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);

  @$pb.TagNumber(2)
  $3.Unbounded_ get unboundedStart => $_getN(1);
  @$pb.TagNumber(2)
  set unboundedStart($3.Unbounded_ v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUnboundedStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnboundedStart() => clearField(2);
  @$pb.TagNumber(2)
  $3.Unbounded_ ensureUnboundedStart() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get inclusiveStart => $_getIZ(2);
  @$pb.TagNumber(3)
  set inclusiveStart($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInclusiveStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearInclusiveStart() => clearField(3);

  @$pb.TagNumber(4)
  $3.Unbounded_ get unboundedEnd => $_getN(3);
  @$pb.TagNumber(4)
  set unboundedEnd($3.Unbounded_ v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUnboundedEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnboundedEnd() => clearField(4);
  @$pb.TagNumber(4)
  $3.Unbounded_ ensureUnboundedEnd() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get exclusiveEnd => $_getIZ(4);
  @$pb.TagNumber(5)
  set exclusiveEnd($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExclusiveEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearExclusiveEnd() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(5);
  @$pb.TagNumber(6)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTtlMilliseconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearTtlMilliseconds() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get refreshTtl => $_getBF(6);
  @$pb.TagNumber(7)
  set refreshTtl($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRefreshTtl() => $_has(6);
  @$pb.TagNumber(7)
  void clearRefreshTtl() => clearField(7);
}

class ListRetainResponse___Found extends $pb.GeneratedMessage {
  factory ListRetainResponse___Found({
    $core.int? listLength,
  }) {
    final $result = create();
    if (listLength != null) {
      $result.listLength = listLength;
    }
    return $result;
  }
  ListRetainResponse___Found._() : super();
  factory ListRetainResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRetainResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRetainResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'listLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRetainResponse___Found clone() =>
      ListRetainResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRetainResponse___Found copyWith(
          void Function(ListRetainResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as ListRetainResponse___Found))
          as ListRetainResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRetainResponse___Found create() => ListRetainResponse___Found._();
  ListRetainResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ListRetainResponse___Found> createRepeated() =>
      $pb.PbList<ListRetainResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ListRetainResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRetainResponse___Found>(create);
  static ListRetainResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get listLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set listLength($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearListLength() => clearField(1);
}

class ListRetainResponse___Missing extends $pb.GeneratedMessage {
  factory ListRetainResponse___Missing() => create();
  ListRetainResponse___Missing._() : super();
  factory ListRetainResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRetainResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRetainResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRetainResponse___Missing clone() =>
      ListRetainResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRetainResponse___Missing copyWith(
          void Function(ListRetainResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ListRetainResponse___Missing))
          as ListRetainResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRetainResponse___Missing create() =>
      ListRetainResponse___Missing._();
  ListRetainResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ListRetainResponse___Missing> createRepeated() =>
      $pb.PbList<ListRetainResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ListRetainResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRetainResponse___Missing>(create);
  static ListRetainResponse___Missing? _defaultInstance;
}

enum ListRetainResponse__List { found, missing, notSet }

class ListRetainResponse_ extends $pb.GeneratedMessage {
  factory ListRetainResponse_({
    ListRetainResponse___Found? found,
    ListRetainResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ListRetainResponse_._() : super();
  factory ListRetainResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRetainResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListRetainResponse__List>
      _ListRetainResponse__ListByTag = {
    1: ListRetainResponse__List.found,
    2: ListRetainResponse__List.missing,
    0: ListRetainResponse__List.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListRetainResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListRetainResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ListRetainResponse___Found.create)
    ..aOM<ListRetainResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ListRetainResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRetainResponse_ clone() => ListRetainResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRetainResponse_ copyWith(void Function(ListRetainResponse_) updates) =>
      super.copyWith((message) => updates(message as ListRetainResponse_))
          as ListRetainResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRetainResponse_ create() => ListRetainResponse_._();
  ListRetainResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListRetainResponse_> createRepeated() =>
      $pb.PbList<ListRetainResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListRetainResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRetainResponse_>(create);
  static ListRetainResponse_? _defaultInstance;

  ListRetainResponse__List whichList() =>
      _ListRetainResponse__ListByTag[$_whichOneof(0)]!;
  void clearList() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListRetainResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ListRetainResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ListRetainResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ListRetainResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ListRetainResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ListRetainResponse___Missing ensureMissing() => $_ensure(1);
}

class ListFetchResponse___Found extends $pb.GeneratedMessage {
  factory ListFetchResponse___Found({
    $core.Iterable<$core.List<$core.int>>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListFetchResponse___Found._() : super();
  factory ListFetchResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListFetchResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListFetchResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListFetchResponse___Found clone() =>
      ListFetchResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListFetchResponse___Found copyWith(
          void Function(ListFetchResponse___Found) updates) =>
      super.copyWith((message) => updates(message as ListFetchResponse___Found))
          as ListFetchResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFetchResponse___Found create() => ListFetchResponse___Found._();
  ListFetchResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ListFetchResponse___Found> createRepeated() =>
      $pb.PbList<ListFetchResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ListFetchResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListFetchResponse___Found>(create);
  static ListFetchResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get values => $_getList(0);
}

class ListFetchResponse___Missing extends $pb.GeneratedMessage {
  factory ListFetchResponse___Missing() => create();
  ListFetchResponse___Missing._() : super();
  factory ListFetchResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListFetchResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListFetchResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListFetchResponse___Missing clone() =>
      ListFetchResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListFetchResponse___Missing copyWith(
          void Function(ListFetchResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ListFetchResponse___Missing))
          as ListFetchResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFetchResponse___Missing create() =>
      ListFetchResponse___Missing._();
  ListFetchResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ListFetchResponse___Missing> createRepeated() =>
      $pb.PbList<ListFetchResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ListFetchResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListFetchResponse___Missing>(create);
  static ListFetchResponse___Missing? _defaultInstance;
}

enum ListFetchResponse__List { found, missing, notSet }

class ListFetchResponse_ extends $pb.GeneratedMessage {
  factory ListFetchResponse_({
    ListFetchResponse___Found? found,
    ListFetchResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ListFetchResponse_._() : super();
  factory ListFetchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListFetchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListFetchResponse__List>
      _ListFetchResponse__ListByTag = {
    1: ListFetchResponse__List.found,
    2: ListFetchResponse__List.missing,
    0: ListFetchResponse__List.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListFetchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListFetchResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ListFetchResponse___Found.create)
    ..aOM<ListFetchResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ListFetchResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListFetchResponse_ clone() => ListFetchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListFetchResponse_ copyWith(void Function(ListFetchResponse_) updates) =>
      super.copyWith((message) => updates(message as ListFetchResponse_))
          as ListFetchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFetchResponse_ create() => ListFetchResponse_._();
  ListFetchResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListFetchResponse_> createRepeated() =>
      $pb.PbList<ListFetchResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListFetchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListFetchResponse_>(create);
  static ListFetchResponse_? _defaultInstance;

  ListFetchResponse__List whichList() =>
      _ListFetchResponse__ListByTag[$_whichOneof(0)]!;
  void clearList() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListFetchResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ListFetchResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ListFetchResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ListFetchResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ListFetchResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ListFetchResponse___Missing ensureMissing() => $_ensure(1);
}

class ListLengthRequest_ extends $pb.GeneratedMessage {
  factory ListLengthRequest_({
    $core.List<$core.int>? listName,
  }) {
    final $result = create();
    if (listName != null) {
      $result.listName = listName;
    }
    return $result;
  }
  ListLengthRequest_._() : super();
  factory ListLengthRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListLengthRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListLengthRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'listName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListLengthRequest_ clone() => ListLengthRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListLengthRequest_ copyWith(void Function(ListLengthRequest_) updates) =>
      super.copyWith((message) => updates(message as ListLengthRequest_))
          as ListLengthRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLengthRequest_ create() => ListLengthRequest_._();
  ListLengthRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListLengthRequest_> createRepeated() =>
      $pb.PbList<ListLengthRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListLengthRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListLengthRequest_>(create);
  static ListLengthRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get listName => $_getN(0);
  @$pb.TagNumber(1)
  set listName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasListName() => $_has(0);
  @$pb.TagNumber(1)
  void clearListName() => clearField(1);
}

class ListLengthResponse___Found extends $pb.GeneratedMessage {
  factory ListLengthResponse___Found({
    $core.int? length,
  }) {
    final $result = create();
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  ListLengthResponse___Found._() : super();
  factory ListLengthResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListLengthResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListLengthResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListLengthResponse___Found clone() =>
      ListLengthResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListLengthResponse___Found copyWith(
          void Function(ListLengthResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as ListLengthResponse___Found))
          as ListLengthResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLengthResponse___Found create() => ListLengthResponse___Found._();
  ListLengthResponse___Found createEmptyInstance() => create();
  static $pb.PbList<ListLengthResponse___Found> createRepeated() =>
      $pb.PbList<ListLengthResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static ListLengthResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListLengthResponse___Found>(create);
  static ListLengthResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get length => $_getIZ(0);
  @$pb.TagNumber(1)
  set length($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearLength() => clearField(1);
}

class ListLengthResponse___Missing extends $pb.GeneratedMessage {
  factory ListLengthResponse___Missing() => create();
  ListLengthResponse___Missing._() : super();
  factory ListLengthResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListLengthResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListLengthResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListLengthResponse___Missing clone() =>
      ListLengthResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListLengthResponse___Missing copyWith(
          void Function(ListLengthResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as ListLengthResponse___Missing))
          as ListLengthResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLengthResponse___Missing create() =>
      ListLengthResponse___Missing._();
  ListLengthResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<ListLengthResponse___Missing> createRepeated() =>
      $pb.PbList<ListLengthResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static ListLengthResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListLengthResponse___Missing>(create);
  static ListLengthResponse___Missing? _defaultInstance;
}

enum ListLengthResponse__List { found, missing, notSet }

class ListLengthResponse_ extends $pb.GeneratedMessage {
  factory ListLengthResponse_({
    ListLengthResponse___Found? found,
    ListLengthResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  ListLengthResponse_._() : super();
  factory ListLengthResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListLengthResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListLengthResponse__List>
      _ListLengthResponse__ListByTag = {
    1: ListLengthResponse__List.found,
    2: ListLengthResponse__List.missing,
    0: ListLengthResponse__List.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListLengthResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ListLengthResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: ListLengthResponse___Found.create)
    ..aOM<ListLengthResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: ListLengthResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListLengthResponse_ clone() => ListLengthResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListLengthResponse_ copyWith(void Function(ListLengthResponse_) updates) =>
      super.copyWith((message) => updates(message as ListLengthResponse_))
          as ListLengthResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLengthResponse_ create() => ListLengthResponse_._();
  ListLengthResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListLengthResponse_> createRepeated() =>
      $pb.PbList<ListLengthResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListLengthResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListLengthResponse_>(create);
  static ListLengthResponse_? _defaultInstance;

  ListLengthResponse__List whichList() =>
      _ListLengthResponse__ListByTag[$_whichOneof(0)]!;
  void clearList() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListLengthResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(ListLengthResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  ListLengthResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  ListLengthResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(ListLengthResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  ListLengthResponse___Missing ensureMissing() => $_ensure(1);
}

class SortedSetElement_ extends $pb.GeneratedMessage {
  factory SortedSetElement_({
    $core.List<$core.int>? value,
    $core.double? score,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  SortedSetElement_._() : super();
  factory SortedSetElement_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetElement_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetElement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetElement_ clone() => SortedSetElement_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetElement_ copyWith(void Function(SortedSetElement_) updates) =>
      super.copyWith((message) => updates(message as SortedSetElement_))
          as SortedSetElement_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetElement_ create() => SortedSetElement_._();
  SortedSetElement_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetElement_> createRepeated() =>
      $pb.PbList<SortedSetElement_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetElement_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetElement_>(create);
  static SortedSetElement_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);
}

class SortedSetPutRequest_ extends $pb.GeneratedMessage {
  factory SortedSetPutRequest_({
    $core.List<$core.int>? setName,
    $core.Iterable<SortedSetElement_>? elements,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    return $result;
  }
  SortedSetPutRequest_._() : super();
  factory SortedSetPutRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetPutRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetPutRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..pc<SortedSetElement_>(
        2, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM,
        subBuilder: SortedSetElement_.create)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'refreshTtl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetPutRequest_ clone() =>
      SortedSetPutRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetPutRequest_ copyWith(void Function(SortedSetPutRequest_) updates) =>
      super.copyWith((message) => updates(message as SortedSetPutRequest_))
          as SortedSetPutRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetPutRequest_ create() => SortedSetPutRequest_._();
  SortedSetPutRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetPutRequest_> createRepeated() =>
      $pb.PbList<SortedSetPutRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetPutRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetPutRequest_>(create);
  static SortedSetPutRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<SortedSetElement_> get elements => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(2);
  @$pb.TagNumber(3)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTtlMilliseconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtlMilliseconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get refreshTtl => $_getBF(3);
  @$pb.TagNumber(4)
  set refreshTtl($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRefreshTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshTtl() => clearField(4);
}

class SortedSetPutResponse_ extends $pb.GeneratedMessage {
  factory SortedSetPutResponse_() => create();
  SortedSetPutResponse_._() : super();
  factory SortedSetPutResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetPutResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetPutResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetPutResponse_ clone() =>
      SortedSetPutResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetPutResponse_ copyWith(
          void Function(SortedSetPutResponse_) updates) =>
      super.copyWith((message) => updates(message as SortedSetPutResponse_))
          as SortedSetPutResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetPutResponse_ create() => SortedSetPutResponse_._();
  SortedSetPutResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetPutResponse_> createRepeated() =>
      $pb.PbList<SortedSetPutResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetPutResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetPutResponse_>(create);
  static SortedSetPutResponse_? _defaultInstance;
}

enum SortedSetFetchRequest___ByIndex_Start {
  unboundedStart,
  inclusiveStartIndex,
  notSet
}

enum SortedSetFetchRequest___ByIndex_End {
  unboundedEnd,
  exclusiveEndIndex,
  notSet
}

class SortedSetFetchRequest___ByIndex extends $pb.GeneratedMessage {
  factory SortedSetFetchRequest___ByIndex({
    $3.Unbounded_? unboundedStart,
    $core.int? inclusiveStartIndex,
    $3.Unbounded_? unboundedEnd,
    $core.int? exclusiveEndIndex,
  }) {
    final $result = create();
    if (unboundedStart != null) {
      $result.unboundedStart = unboundedStart;
    }
    if (inclusiveStartIndex != null) {
      $result.inclusiveStartIndex = inclusiveStartIndex;
    }
    if (unboundedEnd != null) {
      $result.unboundedEnd = unboundedEnd;
    }
    if (exclusiveEndIndex != null) {
      $result.exclusiveEndIndex = exclusiveEndIndex;
    }
    return $result;
  }
  SortedSetFetchRequest___ByIndex._() : super();
  factory SortedSetFetchRequest___ByIndex.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchRequest___ByIndex.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetFetchRequest___ByIndex_Start>
      _SortedSetFetchRequest___ByIndex_StartByTag = {
    1: SortedSetFetchRequest___ByIndex_Start.unboundedStart,
    2: SortedSetFetchRequest___ByIndex_Start.inclusiveStartIndex,
    0: SortedSetFetchRequest___ByIndex_Start.notSet
  };
  static const $core.Map<$core.int, SortedSetFetchRequest___ByIndex_End>
      _SortedSetFetchRequest___ByIndex_EndByTag = {
    3: SortedSetFetchRequest___ByIndex_End.unboundedEnd,
    4: SortedSetFetchRequest___ByIndex_End.exclusiveEndIndex,
    0: SortedSetFetchRequest___ByIndex_End.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchRequest._ByIndex',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..oo(1, [3, 4])
    ..aOM<$3.Unbounded_>(1, _omitFieldNames ? '' : 'unboundedStart',
        subBuilder: $3.Unbounded_.create)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'inclusiveStartIndex', $pb.PbFieldType.OS3)
    ..aOM<$3.Unbounded_>(3, _omitFieldNames ? '' : 'unboundedEnd',
        subBuilder: $3.Unbounded_.create)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'exclusiveEndIndex', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest___ByIndex clone() =>
      SortedSetFetchRequest___ByIndex()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest___ByIndex copyWith(
          void Function(SortedSetFetchRequest___ByIndex) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetFetchRequest___ByIndex))
          as SortedSetFetchRequest___ByIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest___ByIndex create() =>
      SortedSetFetchRequest___ByIndex._();
  SortedSetFetchRequest___ByIndex createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchRequest___ByIndex> createRepeated() =>
      $pb.PbList<SortedSetFetchRequest___ByIndex>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest___ByIndex getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetFetchRequest___ByIndex>(
          create);
  static SortedSetFetchRequest___ByIndex? _defaultInstance;

  SortedSetFetchRequest___ByIndex_Start whichStart() =>
      _SortedSetFetchRequest___ByIndex_StartByTag[$_whichOneof(0)]!;
  void clearStart() => clearField($_whichOneof(0));

  SortedSetFetchRequest___ByIndex_End whichEnd() =>
      _SortedSetFetchRequest___ByIndex_EndByTag[$_whichOneof(1)]!;
  void clearEnd() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $3.Unbounded_ get unboundedStart => $_getN(0);
  @$pb.TagNumber(1)
  set unboundedStart($3.Unbounded_ v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUnboundedStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnboundedStart() => clearField(1);
  @$pb.TagNumber(1)
  $3.Unbounded_ ensureUnboundedStart() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get inclusiveStartIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set inclusiveStartIndex($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInclusiveStartIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearInclusiveStartIndex() => clearField(2);

  @$pb.TagNumber(3)
  $3.Unbounded_ get unboundedEnd => $_getN(2);
  @$pb.TagNumber(3)
  set unboundedEnd($3.Unbounded_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUnboundedEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnboundedEnd() => clearField(3);
  @$pb.TagNumber(3)
  $3.Unbounded_ ensureUnboundedEnd() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get exclusiveEndIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set exclusiveEndIndex($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExclusiveEndIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearExclusiveEndIndex() => clearField(4);
}

class SortedSetFetchRequest___ByScore__Score extends $pb.GeneratedMessage {
  factory SortedSetFetchRequest___ByScore__Score({
    $core.double? score,
    $core.bool? exclusive,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    if (exclusive != null) {
      $result.exclusive = exclusive;
    }
    return $result;
  }
  SortedSetFetchRequest___ByScore__Score._() : super();
  factory SortedSetFetchRequest___ByScore__Score.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchRequest___ByScore__Score.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchRequest._ByScore._Score',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OD)
    ..aOB(2, _omitFieldNames ? '' : 'exclusive')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest___ByScore__Score clone() =>
      SortedSetFetchRequest___ByScore__Score()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest___ByScore__Score copyWith(
          void Function(SortedSetFetchRequest___ByScore__Score) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetFetchRequest___ByScore__Score))
          as SortedSetFetchRequest___ByScore__Score;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest___ByScore__Score create() =>
      SortedSetFetchRequest___ByScore__Score._();
  SortedSetFetchRequest___ByScore__Score createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchRequest___ByScore__Score> createRepeated() =>
      $pb.PbList<SortedSetFetchRequest___ByScore__Score>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest___ByScore__Score getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetFetchRequest___ByScore__Score>(create);
  static SortedSetFetchRequest___ByScore__Score? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get score => $_getN(0);
  @$pb.TagNumber(1)
  set score($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get exclusive => $_getBF(1);
  @$pb.TagNumber(2)
  set exclusive($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExclusive() => $_has(1);
  @$pb.TagNumber(2)
  void clearExclusive() => clearField(2);
}

enum SortedSetFetchRequest___ByScore_Min { unboundedMin, minScore, notSet }

enum SortedSetFetchRequest___ByScore_Max { unboundedMax, maxScore, notSet }

class SortedSetFetchRequest___ByScore extends $pb.GeneratedMessage {
  factory SortedSetFetchRequest___ByScore({
    $3.Unbounded_? unboundedMin,
    SortedSetFetchRequest___ByScore__Score? minScore,
    $3.Unbounded_? unboundedMax,
    SortedSetFetchRequest___ByScore__Score? maxScore,
    $core.int? offset,
    $core.int? count,
  }) {
    final $result = create();
    if (unboundedMin != null) {
      $result.unboundedMin = unboundedMin;
    }
    if (minScore != null) {
      $result.minScore = minScore;
    }
    if (unboundedMax != null) {
      $result.unboundedMax = unboundedMax;
    }
    if (maxScore != null) {
      $result.maxScore = maxScore;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  SortedSetFetchRequest___ByScore._() : super();
  factory SortedSetFetchRequest___ByScore.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchRequest___ByScore.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetFetchRequest___ByScore_Min>
      _SortedSetFetchRequest___ByScore_MinByTag = {
    1: SortedSetFetchRequest___ByScore_Min.unboundedMin,
    2: SortedSetFetchRequest___ByScore_Min.minScore,
    0: SortedSetFetchRequest___ByScore_Min.notSet
  };
  static const $core.Map<$core.int, SortedSetFetchRequest___ByScore_Max>
      _SortedSetFetchRequest___ByScore_MaxByTag = {
    3: SortedSetFetchRequest___ByScore_Max.unboundedMax,
    4: SortedSetFetchRequest___ByScore_Max.maxScore,
    0: SortedSetFetchRequest___ByScore_Max.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchRequest._ByScore',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..oo(1, [3, 4])
    ..aOM<$3.Unbounded_>(1, _omitFieldNames ? '' : 'unboundedMin',
        subBuilder: $3.Unbounded_.create)
    ..aOM<SortedSetFetchRequest___ByScore__Score>(
        2, _omitFieldNames ? '' : 'minScore',
        subBuilder: SortedSetFetchRequest___ByScore__Score.create)
    ..aOM<$3.Unbounded_>(3, _omitFieldNames ? '' : 'unboundedMax',
        subBuilder: $3.Unbounded_.create)
    ..aOM<SortedSetFetchRequest___ByScore__Score>(
        4, _omitFieldNames ? '' : 'maxScore',
        subBuilder: SortedSetFetchRequest___ByScore__Score.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest___ByScore clone() =>
      SortedSetFetchRequest___ByScore()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest___ByScore copyWith(
          void Function(SortedSetFetchRequest___ByScore) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetFetchRequest___ByScore))
          as SortedSetFetchRequest___ByScore;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest___ByScore create() =>
      SortedSetFetchRequest___ByScore._();
  SortedSetFetchRequest___ByScore createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchRequest___ByScore> createRepeated() =>
      $pb.PbList<SortedSetFetchRequest___ByScore>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest___ByScore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetFetchRequest___ByScore>(
          create);
  static SortedSetFetchRequest___ByScore? _defaultInstance;

  SortedSetFetchRequest___ByScore_Min whichMin() =>
      _SortedSetFetchRequest___ByScore_MinByTag[$_whichOneof(0)]!;
  void clearMin() => clearField($_whichOneof(0));

  SortedSetFetchRequest___ByScore_Max whichMax() =>
      _SortedSetFetchRequest___ByScore_MaxByTag[$_whichOneof(1)]!;
  void clearMax() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $3.Unbounded_ get unboundedMin => $_getN(0);
  @$pb.TagNumber(1)
  set unboundedMin($3.Unbounded_ v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUnboundedMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnboundedMin() => clearField(1);
  @$pb.TagNumber(1)
  $3.Unbounded_ ensureUnboundedMin() => $_ensure(0);

  @$pb.TagNumber(2)
  SortedSetFetchRequest___ByScore__Score get minScore => $_getN(1);
  @$pb.TagNumber(2)
  set minScore(SortedSetFetchRequest___ByScore__Score v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinScore() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetFetchRequest___ByScore__Score ensureMinScore() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.Unbounded_ get unboundedMax => $_getN(2);
  @$pb.TagNumber(3)
  set unboundedMax($3.Unbounded_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUnboundedMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnboundedMax() => clearField(3);
  @$pb.TagNumber(3)
  $3.Unbounded_ ensureUnboundedMax() => $_ensure(2);

  @$pb.TagNumber(4)
  SortedSetFetchRequest___ByScore__Score get maxScore => $_getN(3);
  @$pb.TagNumber(4)
  set maxScore(SortedSetFetchRequest___ByScore__Score v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMaxScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxScore() => clearField(4);
  @$pb.TagNumber(4)
  SortedSetFetchRequest___ByScore__Score ensureMaxScore() => $_ensure(3);

  /// Offset and count are used to only get a range of the matching elements,
  /// similar to "SELECT LIMIT offset, count" in SQL.
  /// A negative count returns all elements from the offset.
  /// Use (0, -1) to return all matching elements.
  @$pb.TagNumber(5)
  $core.int get offset => $_getIZ(4);
  @$pb.TagNumber(5)
  set offset($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffset() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get count => $_getIZ(5);
  @$pb.TagNumber(6)
  set count($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearCount() => clearField(6);
}

enum SortedSetFetchRequest__Range { byIndex, byScore, notSet }

class SortedSetFetchRequest_ extends $pb.GeneratedMessage {
  factory SortedSetFetchRequest_({
    $core.List<$core.int>? setName,
    SortedSetFetchRequest__Order? order,
    $core.bool? withScores,
    SortedSetFetchRequest___ByIndex? byIndex,
    SortedSetFetchRequest___ByScore? byScore,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (order != null) {
      $result.order = order;
    }
    if (withScores != null) {
      $result.withScores = withScores;
    }
    if (byIndex != null) {
      $result.byIndex = byIndex;
    }
    if (byScore != null) {
      $result.byScore = byScore;
    }
    return $result;
  }
  SortedSetFetchRequest_._() : super();
  factory SortedSetFetchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetFetchRequest__Range>
      _SortedSetFetchRequest__RangeByTag = {
    4: SortedSetFetchRequest__Range.byIndex,
    5: SortedSetFetchRequest__Range.byScore,
    0: SortedSetFetchRequest__Range.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..e<SortedSetFetchRequest__Order>(
        2, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE,
        defaultOrMaker: SortedSetFetchRequest__Order.ASCENDING,
        valueOf: SortedSetFetchRequest__Order.valueOf,
        enumValues: SortedSetFetchRequest__Order.values)
    ..aOB(3, _omitFieldNames ? '' : 'withScores')
    ..aOM<SortedSetFetchRequest___ByIndex>(4, _omitFieldNames ? '' : 'byIndex',
        subBuilder: SortedSetFetchRequest___ByIndex.create)
    ..aOM<SortedSetFetchRequest___ByScore>(5, _omitFieldNames ? '' : 'byScore',
        subBuilder: SortedSetFetchRequest___ByScore.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest_ clone() =>
      SortedSetFetchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchRequest_ copyWith(
          void Function(SortedSetFetchRequest_) updates) =>
      super.copyWith((message) => updates(message as SortedSetFetchRequest_))
          as SortedSetFetchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest_ create() => SortedSetFetchRequest_._();
  SortedSetFetchRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchRequest_> createRepeated() =>
      $pb.PbList<SortedSetFetchRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetFetchRequest_>(create);
  static SortedSetFetchRequest_? _defaultInstance;

  SortedSetFetchRequest__Range whichRange() =>
      _SortedSetFetchRequest__RangeByTag[$_whichOneof(0)]!;
  void clearRange() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  SortedSetFetchRequest__Order get order => $_getN(1);
  @$pb.TagNumber(2)
  set order(SortedSetFetchRequest__Order v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrder() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrder() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get withScores => $_getBF(2);
  @$pb.TagNumber(3)
  set withScores($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWithScores() => $_has(2);
  @$pb.TagNumber(3)
  void clearWithScores() => clearField(3);

  @$pb.TagNumber(4)
  SortedSetFetchRequest___ByIndex get byIndex => $_getN(3);
  @$pb.TagNumber(4)
  set byIndex(SortedSetFetchRequest___ByIndex v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasByIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearByIndex() => clearField(4);
  @$pb.TagNumber(4)
  SortedSetFetchRequest___ByIndex ensureByIndex() => $_ensure(3);

  @$pb.TagNumber(5)
  SortedSetFetchRequest___ByScore get byScore => $_getN(4);
  @$pb.TagNumber(5)
  set byScore(SortedSetFetchRequest___ByScore v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasByScore() => $_has(4);
  @$pb.TagNumber(5)
  void clearByScore() => clearField(5);
  @$pb.TagNumber(5)
  SortedSetFetchRequest___ByScore ensureByScore() => $_ensure(4);
}

class SortedSetFetchResponse___Found__ValuesWithScores
    extends $pb.GeneratedMessage {
  factory SortedSetFetchResponse___Found__ValuesWithScores({
    $core.Iterable<SortedSetElement_>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SortedSetFetchResponse___Found__ValuesWithScores._() : super();
  factory SortedSetFetchResponse___Found__ValuesWithScores.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchResponse___Found__ValuesWithScores.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : '_SortedSetFetchResponse._Found._ValuesWithScores',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..pc<SortedSetElement_>(
        1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM,
        subBuilder: SortedSetElement_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Found__ValuesWithScores clone() =>
      SortedSetFetchResponse___Found__ValuesWithScores()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Found__ValuesWithScores copyWith(
          void Function(SortedSetFetchResponse___Found__ValuesWithScores)
              updates) =>
      super.copyWith((message) => updates(
              message as SortedSetFetchResponse___Found__ValuesWithScores))
          as SortedSetFetchResponse___Found__ValuesWithScores;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Found__ValuesWithScores create() =>
      SortedSetFetchResponse___Found__ValuesWithScores._();
  SortedSetFetchResponse___Found__ValuesWithScores createEmptyInstance() =>
      create();
  static $pb.PbList<SortedSetFetchResponse___Found__ValuesWithScores>
      createRepeated() =>
          $pb.PbList<SortedSetFetchResponse___Found__ValuesWithScores>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Found__ValuesWithScores getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetFetchResponse___Found__ValuesWithScores>(create);
  static SortedSetFetchResponse___Found__ValuesWithScores? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SortedSetElement_> get elements => $_getList(0);
}

class SortedSetFetchResponse___Found__Values extends $pb.GeneratedMessage {
  factory SortedSetFetchResponse___Found__Values({
    $core.Iterable<$core.List<$core.int>>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  SortedSetFetchResponse___Found__Values._() : super();
  factory SortedSetFetchResponse___Found__Values.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchResponse___Found__Values.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchResponse._Found._Values',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Found__Values clone() =>
      SortedSetFetchResponse___Found__Values()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Found__Values copyWith(
          void Function(SortedSetFetchResponse___Found__Values) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetFetchResponse___Found__Values))
          as SortedSetFetchResponse___Found__Values;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Found__Values create() =>
      SortedSetFetchResponse___Found__Values._();
  SortedSetFetchResponse___Found__Values createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchResponse___Found__Values> createRepeated() =>
      $pb.PbList<SortedSetFetchResponse___Found__Values>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Found__Values getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetFetchResponse___Found__Values>(create);
  static SortedSetFetchResponse___Found__Values? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get values => $_getList(0);
}

enum SortedSetFetchResponse___Found_Elements {
  valuesWithScores,
  values_,
  notSet
}

class SortedSetFetchResponse___Found extends $pb.GeneratedMessage {
  factory SortedSetFetchResponse___Found({
    SortedSetFetchResponse___Found__ValuesWithScores? valuesWithScores,
    SortedSetFetchResponse___Found__Values? values,
  }) {
    final $result = create();
    if (valuesWithScores != null) {
      $result.valuesWithScores = valuesWithScores;
    }
    if (values != null) {
      $result.values = values;
    }
    return $result;
  }
  SortedSetFetchResponse___Found._() : super();
  factory SortedSetFetchResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetFetchResponse___Found_Elements>
      _SortedSetFetchResponse___Found_ElementsByTag = {
    1: SortedSetFetchResponse___Found_Elements.valuesWithScores,
    2: SortedSetFetchResponse___Found_Elements.values_,
    0: SortedSetFetchResponse___Found_Elements.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SortedSetFetchResponse___Found__ValuesWithScores>(
        1, _omitFieldNames ? '' : 'valuesWithScores',
        subBuilder: SortedSetFetchResponse___Found__ValuesWithScores.create)
    ..aOM<SortedSetFetchResponse___Found__Values>(
        2, _omitFieldNames ? '' : 'values',
        subBuilder: SortedSetFetchResponse___Found__Values.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Found clone() =>
      SortedSetFetchResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Found copyWith(
          void Function(SortedSetFetchResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetFetchResponse___Found))
          as SortedSetFetchResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Found create() =>
      SortedSetFetchResponse___Found._();
  SortedSetFetchResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchResponse___Found> createRepeated() =>
      $pb.PbList<SortedSetFetchResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetFetchResponse___Found>(create);
  static SortedSetFetchResponse___Found? _defaultInstance;

  SortedSetFetchResponse___Found_Elements whichElements() =>
      _SortedSetFetchResponse___Found_ElementsByTag[$_whichOneof(0)]!;
  void clearElements() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SortedSetFetchResponse___Found__ValuesWithScores get valuesWithScores =>
      $_getN(0);
  @$pb.TagNumber(1)
  set valuesWithScores(SortedSetFetchResponse___Found__ValuesWithScores v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValuesWithScores() => $_has(0);
  @$pb.TagNumber(1)
  void clearValuesWithScores() => clearField(1);
  @$pb.TagNumber(1)
  SortedSetFetchResponse___Found__ValuesWithScores ensureValuesWithScores() =>
      $_ensure(0);

  @$pb.TagNumber(2)
  SortedSetFetchResponse___Found__Values get values => $_getN(1);
  @$pb.TagNumber(2)
  set values(SortedSetFetchResponse___Found__Values v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValues() => $_has(1);
  @$pb.TagNumber(2)
  void clearValues() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetFetchResponse___Found__Values ensureValues() => $_ensure(1);
}

class SortedSetFetchResponse___Missing extends $pb.GeneratedMessage {
  factory SortedSetFetchResponse___Missing() => create();
  SortedSetFetchResponse___Missing._() : super();
  factory SortedSetFetchResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Missing clone() =>
      SortedSetFetchResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse___Missing copyWith(
          void Function(SortedSetFetchResponse___Missing) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetFetchResponse___Missing))
          as SortedSetFetchResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Missing create() =>
      SortedSetFetchResponse___Missing._();
  SortedSetFetchResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchResponse___Missing> createRepeated() =>
      $pb.PbList<SortedSetFetchResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetFetchResponse___Missing>(
          create);
  static SortedSetFetchResponse___Missing? _defaultInstance;
}

enum SortedSetFetchResponse__SortedSet { found, missing, notSet }

class SortedSetFetchResponse_ extends $pb.GeneratedMessage {
  factory SortedSetFetchResponse_({
    SortedSetFetchResponse___Found? found,
    SortedSetFetchResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SortedSetFetchResponse_._() : super();
  factory SortedSetFetchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetFetchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetFetchResponse__SortedSet>
      _SortedSetFetchResponse__SortedSetByTag = {
    1: SortedSetFetchResponse__SortedSet.found,
    2: SortedSetFetchResponse__SortedSet.missing,
    0: SortedSetFetchResponse__SortedSet.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetFetchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SortedSetFetchResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SortedSetFetchResponse___Found.create)
    ..aOM<SortedSetFetchResponse___Missing>(2, _omitFieldNames ? '' : 'missing',
        subBuilder: SortedSetFetchResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse_ clone() =>
      SortedSetFetchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetFetchResponse_ copyWith(
          void Function(SortedSetFetchResponse_) updates) =>
      super.copyWith((message) => updates(message as SortedSetFetchResponse_))
          as SortedSetFetchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse_ create() => SortedSetFetchResponse_._();
  SortedSetFetchResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetFetchResponse_> createRepeated() =>
      $pb.PbList<SortedSetFetchResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetFetchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetFetchResponse_>(create);
  static SortedSetFetchResponse_? _defaultInstance;

  SortedSetFetchResponse__SortedSet whichSortedSet() =>
      _SortedSetFetchResponse__SortedSetByTag[$_whichOneof(0)]!;
  void clearSortedSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SortedSetFetchResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SortedSetFetchResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SortedSetFetchResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SortedSetFetchResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SortedSetFetchResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetFetchResponse___Missing ensureMissing() => $_ensure(1);
}

class SortedSetGetScoreRequest_ extends $pb.GeneratedMessage {
  factory SortedSetGetScoreRequest_({
    $core.List<$core.int>? setName,
    $core.Iterable<$core.List<$core.int>>? values,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  SortedSetGetScoreRequest_._() : super();
  factory SortedSetGetScoreRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetScoreRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetScoreRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreRequest_ clone() =>
      SortedSetGetScoreRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreRequest_ copyWith(
          void Function(SortedSetGetScoreRequest_) updates) =>
      super.copyWith((message) => updates(message as SortedSetGetScoreRequest_))
          as SortedSetGetScoreRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreRequest_ create() => SortedSetGetScoreRequest_._();
  SortedSetGetScoreRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetScoreRequest_> createRepeated() =>
      $pb.PbList<SortedSetGetScoreRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetGetScoreRequest_>(create);
  static SortedSetGetScoreRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get values => $_getList(1);
}

class SortedSetGetScoreResponse___SortedSetGetScoreResponsePart
    extends $pb.GeneratedMessage {
  factory SortedSetGetScoreResponse___SortedSetGetScoreResponsePart({
    ECacheResult? result,
    $core.double? score,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  SortedSetGetScoreResponse___SortedSetGetScoreResponsePart._() : super();
  factory SortedSetGetScoreResponse___SortedSetGetScoreResponsePart.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetScoreResponse___SortedSetGetScoreResponsePart.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : '_SortedSetGetScoreResponse._SortedSetGetScoreResponsePart',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..e<ECacheResult>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE,
        defaultOrMaker: ECacheResult.Invalid,
        valueOf: ECacheResult.valueOf,
        enumValues: ECacheResult.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse___SortedSetGetScoreResponsePart clone() =>
      SortedSetGetScoreResponse___SortedSetGetScoreResponsePart()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse___SortedSetGetScoreResponsePart copyWith(
          void Function(
                  SortedSetGetScoreResponse___SortedSetGetScoreResponsePart)
              updates) =>
      super.copyWith((message) => updates(message
              as SortedSetGetScoreResponse___SortedSetGetScoreResponsePart))
          as SortedSetGetScoreResponse___SortedSetGetScoreResponsePart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse___SortedSetGetScoreResponsePart create() =>
      SortedSetGetScoreResponse___SortedSetGetScoreResponsePart._();
  SortedSetGetScoreResponse___SortedSetGetScoreResponsePart
      createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetScoreResponse___SortedSetGetScoreResponsePart>
      createRepeated() => $pb.PbList<
          SortedSetGetScoreResponse___SortedSetGetScoreResponsePart>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse___SortedSetGetScoreResponsePart
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetGetScoreResponse___SortedSetGetScoreResponsePart>(create);
  static SortedSetGetScoreResponse___SortedSetGetScoreResponsePart?
      _defaultInstance;

  @$pb.TagNumber(1)
  ECacheResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ECacheResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);
}

class SortedSetGetScoreResponse___SortedSetFound extends $pb.GeneratedMessage {
  factory SortedSetGetScoreResponse___SortedSetFound({
    $core.Iterable<SortedSetGetScoreResponse___SortedSetGetScoreResponsePart>?
        elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  SortedSetGetScoreResponse___SortedSetFound._() : super();
  factory SortedSetGetScoreResponse___SortedSetFound.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetScoreResponse___SortedSetFound.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetScoreResponse._SortedSetFound',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..pc<SortedSetGetScoreResponse___SortedSetGetScoreResponsePart>(
        1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM,
        subBuilder:
            SortedSetGetScoreResponse___SortedSetGetScoreResponsePart.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse___SortedSetFound clone() =>
      SortedSetGetScoreResponse___SortedSetFound()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse___SortedSetFound copyWith(
          void Function(SortedSetGetScoreResponse___SortedSetFound) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetGetScoreResponse___SortedSetFound))
          as SortedSetGetScoreResponse___SortedSetFound;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse___SortedSetFound create() =>
      SortedSetGetScoreResponse___SortedSetFound._();
  SortedSetGetScoreResponse___SortedSetFound createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetScoreResponse___SortedSetFound>
      createRepeated() =>
          $pb.PbList<SortedSetGetScoreResponse___SortedSetFound>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse___SortedSetFound getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetGetScoreResponse___SortedSetFound>(create);
  static SortedSetGetScoreResponse___SortedSetFound? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SortedSetGetScoreResponse___SortedSetGetScoreResponsePart>
      get elements => $_getList(0);
}

class SortedSetGetScoreResponse___SortedSetMissing
    extends $pb.GeneratedMessage {
  factory SortedSetGetScoreResponse___SortedSetMissing() => create();
  SortedSetGetScoreResponse___SortedSetMissing._() : super();
  factory SortedSetGetScoreResponse___SortedSetMissing.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetScoreResponse___SortedSetMissing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetScoreResponse._SortedSetMissing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse___SortedSetMissing clone() =>
      SortedSetGetScoreResponse___SortedSetMissing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse___SortedSetMissing copyWith(
          void Function(SortedSetGetScoreResponse___SortedSetMissing)
              updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetGetScoreResponse___SortedSetMissing))
          as SortedSetGetScoreResponse___SortedSetMissing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse___SortedSetMissing create() =>
      SortedSetGetScoreResponse___SortedSetMissing._();
  SortedSetGetScoreResponse___SortedSetMissing createEmptyInstance() =>
      create();
  static $pb.PbList<SortedSetGetScoreResponse___SortedSetMissing>
      createRepeated() =>
          $pb.PbList<SortedSetGetScoreResponse___SortedSetMissing>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse___SortedSetMissing getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetGetScoreResponse___SortedSetMissing>(create);
  static SortedSetGetScoreResponse___SortedSetMissing? _defaultInstance;
}

enum SortedSetGetScoreResponse__SortedSet { found, missing, notSet }

class SortedSetGetScoreResponse_ extends $pb.GeneratedMessage {
  factory SortedSetGetScoreResponse_({
    SortedSetGetScoreResponse___SortedSetFound? found,
    SortedSetGetScoreResponse___SortedSetMissing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SortedSetGetScoreResponse_._() : super();
  factory SortedSetGetScoreResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetScoreResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetGetScoreResponse__SortedSet>
      _SortedSetGetScoreResponse__SortedSetByTag = {
    1: SortedSetGetScoreResponse__SortedSet.found,
    2: SortedSetGetScoreResponse__SortedSet.missing,
    0: SortedSetGetScoreResponse__SortedSet.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetScoreResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SortedSetGetScoreResponse___SortedSetFound>(
        1, _omitFieldNames ? '' : 'found',
        subBuilder: SortedSetGetScoreResponse___SortedSetFound.create)
    ..aOM<SortedSetGetScoreResponse___SortedSetMissing>(
        2, _omitFieldNames ? '' : 'missing',
        subBuilder: SortedSetGetScoreResponse___SortedSetMissing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse_ clone() =>
      SortedSetGetScoreResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetScoreResponse_ copyWith(
          void Function(SortedSetGetScoreResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetGetScoreResponse_))
          as SortedSetGetScoreResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse_ create() => SortedSetGetScoreResponse_._();
  SortedSetGetScoreResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetScoreResponse_> createRepeated() =>
      $pb.PbList<SortedSetGetScoreResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetScoreResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetGetScoreResponse_>(create);
  static SortedSetGetScoreResponse_? _defaultInstance;

  SortedSetGetScoreResponse__SortedSet whichSortedSet() =>
      _SortedSetGetScoreResponse__SortedSetByTag[$_whichOneof(0)]!;
  void clearSortedSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SortedSetGetScoreResponse___SortedSetFound get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SortedSetGetScoreResponse___SortedSetFound v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SortedSetGetScoreResponse___SortedSetFound ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SortedSetGetScoreResponse___SortedSetMissing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SortedSetGetScoreResponse___SortedSetMissing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetGetScoreResponse___SortedSetMissing ensureMissing() => $_ensure(1);
}

class SortedSetRemoveRequest___All extends $pb.GeneratedMessage {
  factory SortedSetRemoveRequest___All() => create();
  SortedSetRemoveRequest___All._() : super();
  factory SortedSetRemoveRequest___All.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetRemoveRequest___All.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetRemoveRequest._All',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetRemoveRequest___All clone() =>
      SortedSetRemoveRequest___All()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetRemoveRequest___All copyWith(
          void Function(SortedSetRemoveRequest___All) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetRemoveRequest___All))
          as SortedSetRemoveRequest___All;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveRequest___All create() =>
      SortedSetRemoveRequest___All._();
  SortedSetRemoveRequest___All createEmptyInstance() => create();
  static $pb.PbList<SortedSetRemoveRequest___All> createRepeated() =>
      $pb.PbList<SortedSetRemoveRequest___All>();
  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveRequest___All getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetRemoveRequest___All>(create);
  static SortedSetRemoveRequest___All? _defaultInstance;
}

class SortedSetRemoveRequest___Some extends $pb.GeneratedMessage {
  factory SortedSetRemoveRequest___Some({
    $core.Iterable<$core.List<$core.int>>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  SortedSetRemoveRequest___Some._() : super();
  factory SortedSetRemoveRequest___Some.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetRemoveRequest___Some.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetRemoveRequest._Some',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetRemoveRequest___Some clone() =>
      SortedSetRemoveRequest___Some()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetRemoveRequest___Some copyWith(
          void Function(SortedSetRemoveRequest___Some) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetRemoveRequest___Some))
          as SortedSetRemoveRequest___Some;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveRequest___Some create() =>
      SortedSetRemoveRequest___Some._();
  SortedSetRemoveRequest___Some createEmptyInstance() => create();
  static $pb.PbList<SortedSetRemoveRequest___Some> createRepeated() =>
      $pb.PbList<SortedSetRemoveRequest___Some>();
  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveRequest___Some getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetRemoveRequest___Some>(create);
  static SortedSetRemoveRequest___Some? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get values => $_getList(0);
}

enum SortedSetRemoveRequest__RemoveElements { all, some, notSet }

class SortedSetRemoveRequest_ extends $pb.GeneratedMessage {
  factory SortedSetRemoveRequest_({
    $core.List<$core.int>? setName,
    SortedSetRemoveRequest___All? all,
    SortedSetRemoveRequest___Some? some,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (all != null) {
      $result.all = all;
    }
    if (some != null) {
      $result.some = some;
    }
    return $result;
  }
  SortedSetRemoveRequest_._() : super();
  factory SortedSetRemoveRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetRemoveRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetRemoveRequest__RemoveElements>
      _SortedSetRemoveRequest__RemoveElementsByTag = {
    2: SortedSetRemoveRequest__RemoveElements.all,
    3: SortedSetRemoveRequest__RemoveElements.some,
    0: SortedSetRemoveRequest__RemoveElements.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetRemoveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..aOM<SortedSetRemoveRequest___All>(2, _omitFieldNames ? '' : 'all',
        subBuilder: SortedSetRemoveRequest___All.create)
    ..aOM<SortedSetRemoveRequest___Some>(3, _omitFieldNames ? '' : 'some',
        subBuilder: SortedSetRemoveRequest___Some.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetRemoveRequest_ clone() =>
      SortedSetRemoveRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetRemoveRequest_ copyWith(
          void Function(SortedSetRemoveRequest_) updates) =>
      super.copyWith((message) => updates(message as SortedSetRemoveRequest_))
          as SortedSetRemoveRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveRequest_ create() => SortedSetRemoveRequest_._();
  SortedSetRemoveRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetRemoveRequest_> createRepeated() =>
      $pb.PbList<SortedSetRemoveRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetRemoveRequest_>(create);
  static SortedSetRemoveRequest_? _defaultInstance;

  SortedSetRemoveRequest__RemoveElements whichRemoveElements() =>
      _SortedSetRemoveRequest__RemoveElementsByTag[$_whichOneof(0)]!;
  void clearRemoveElements() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  SortedSetRemoveRequest___All get all => $_getN(1);
  @$pb.TagNumber(2)
  set all(SortedSetRemoveRequest___All v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAll() => $_has(1);
  @$pb.TagNumber(2)
  void clearAll() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetRemoveRequest___All ensureAll() => $_ensure(1);

  @$pb.TagNumber(3)
  SortedSetRemoveRequest___Some get some => $_getN(2);
  @$pb.TagNumber(3)
  set some(SortedSetRemoveRequest___Some v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSome() => $_has(2);
  @$pb.TagNumber(3)
  void clearSome() => clearField(3);
  @$pb.TagNumber(3)
  SortedSetRemoveRequest___Some ensureSome() => $_ensure(2);
}

class SortedSetRemoveResponse_ extends $pb.GeneratedMessage {
  factory SortedSetRemoveResponse_() => create();
  SortedSetRemoveResponse_._() : super();
  factory SortedSetRemoveResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetRemoveResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetRemoveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetRemoveResponse_ clone() =>
      SortedSetRemoveResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetRemoveResponse_ copyWith(
          void Function(SortedSetRemoveResponse_) updates) =>
      super.copyWith((message) => updates(message as SortedSetRemoveResponse_))
          as SortedSetRemoveResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveResponse_ create() => SortedSetRemoveResponse_._();
  SortedSetRemoveResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetRemoveResponse_> createRepeated() =>
      $pb.PbList<SortedSetRemoveResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetRemoveResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetRemoveResponse_>(create);
  static SortedSetRemoveResponse_? _defaultInstance;
}

class SortedSetIncrementRequest_ extends $pb.GeneratedMessage {
  factory SortedSetIncrementRequest_({
    $core.List<$core.int>? setName,
    $core.List<$core.int>? value,
    $core.double? amount,
    $fixnum.Int64? ttlMilliseconds,
    $core.bool? refreshTtl,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (ttlMilliseconds != null) {
      $result.ttlMilliseconds = ttlMilliseconds;
    }
    if (refreshTtl != null) {
      $result.refreshTtl = refreshTtl;
    }
    return $result;
  }
  SortedSetIncrementRequest_._() : super();
  factory SortedSetIncrementRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetIncrementRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetIncrementRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'ttlMilliseconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, _omitFieldNames ? '' : 'refreshTtl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetIncrementRequest_ clone() =>
      SortedSetIncrementRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetIncrementRequest_ copyWith(
          void Function(SortedSetIncrementRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetIncrementRequest_))
          as SortedSetIncrementRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetIncrementRequest_ create() => SortedSetIncrementRequest_._();
  SortedSetIncrementRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetIncrementRequest_> createRepeated() =>
      $pb.PbList<SortedSetIncrementRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetIncrementRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetIncrementRequest_>(create);
  static SortedSetIncrementRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get ttlMilliseconds => $_getI64(3);
  @$pb.TagNumber(4)
  set ttlMilliseconds($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTtlMilliseconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearTtlMilliseconds() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get refreshTtl => $_getBF(4);
  @$pb.TagNumber(5)
  set refreshTtl($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRefreshTtl() => $_has(4);
  @$pb.TagNumber(5)
  void clearRefreshTtl() => clearField(5);
}

class SortedSetIncrementResponse_ extends $pb.GeneratedMessage {
  factory SortedSetIncrementResponse_({
    $core.double? score,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  SortedSetIncrementResponse_._() : super();
  factory SortedSetIncrementResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetIncrementResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetIncrementResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetIncrementResponse_ clone() =>
      SortedSetIncrementResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetIncrementResponse_ copyWith(
          void Function(SortedSetIncrementResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetIncrementResponse_))
          as SortedSetIncrementResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetIncrementResponse_ create() =>
      SortedSetIncrementResponse_._();
  SortedSetIncrementResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetIncrementResponse_> createRepeated() =>
      $pb.PbList<SortedSetIncrementResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetIncrementResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetIncrementResponse_>(create);
  static SortedSetIncrementResponse_? _defaultInstance;

  /// The updated score stored after the increment operation.
  @$pb.TagNumber(1)
  $core.double get score => $_getN(0);
  @$pb.TagNumber(1)
  set score($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => clearField(1);
}

class SortedSetGetRankRequest_ extends $pb.GeneratedMessage {
  factory SortedSetGetRankRequest_({
    $core.List<$core.int>? setName,
    $core.List<$core.int>? value,
    SortedSetGetRankRequest__Order? order,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (order != null) {
      $result.order = order;
    }
    return $result;
  }
  SortedSetGetRankRequest_._() : super();
  factory SortedSetGetRankRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetRankRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetRankRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..e<SortedSetGetRankRequest__Order>(
        3, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OE,
        defaultOrMaker: SortedSetGetRankRequest__Order.ASCENDING,
        valueOf: SortedSetGetRankRequest__Order.valueOf,
        enumValues: SortedSetGetRankRequest__Order.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetRankRequest_ clone() =>
      SortedSetGetRankRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetRankRequest_ copyWith(
          void Function(SortedSetGetRankRequest_) updates) =>
      super.copyWith((message) => updates(message as SortedSetGetRankRequest_))
          as SortedSetGetRankRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankRequest_ create() => SortedSetGetRankRequest_._();
  SortedSetGetRankRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetRankRequest_> createRepeated() =>
      $pb.PbList<SortedSetGetRankRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetGetRankRequest_>(create);
  static SortedSetGetRankRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  ///  The order in which sorted set will be sorted to determine the rank.
  ///
  ///  When Order.ASCENDING is specified, will return the rank of the value
  ///  when sorted set scores are ordered from low to high. This is the default
  ///  when no Order is specified.
  ///
  ///  When Order.DESCENDING is specified, will return the rank of the value
  ///  when sorted set scores are ordered from high to low.
  @$pb.TagNumber(3)
  SortedSetGetRankRequest__Order get order => $_getN(2);
  @$pb.TagNumber(3)
  set order(SortedSetGetRankRequest__Order v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => clearField(3);
}

class SortedSetGetRankResponse___RankResponsePart extends $pb.GeneratedMessage {
  factory SortedSetGetRankResponse___RankResponsePart({
    ECacheResult? result,
    $fixnum.Int64? rank,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    return $result;
  }
  SortedSetGetRankResponse___RankResponsePart._() : super();
  factory SortedSetGetRankResponse___RankResponsePart.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetRankResponse___RankResponsePart.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetRankResponse._RankResponsePart',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..e<ECacheResult>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE,
        defaultOrMaker: ECacheResult.Invalid,
        valueOf: ECacheResult.valueOf,
        enumValues: ECacheResult.values)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'rank', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetRankResponse___RankResponsePart clone() =>
      SortedSetGetRankResponse___RankResponsePart()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetRankResponse___RankResponsePart copyWith(
          void Function(SortedSetGetRankResponse___RankResponsePart) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetGetRankResponse___RankResponsePart))
          as SortedSetGetRankResponse___RankResponsePart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankResponse___RankResponsePart create() =>
      SortedSetGetRankResponse___RankResponsePart._();
  SortedSetGetRankResponse___RankResponsePart createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetRankResponse___RankResponsePart>
      createRepeated() =>
          $pb.PbList<SortedSetGetRankResponse___RankResponsePart>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankResponse___RankResponsePart getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetGetRankResponse___RankResponsePart>(create);
  static SortedSetGetRankResponse___RankResponsePart? _defaultInstance;

  @$pb.TagNumber(1)
  ECacheResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ECacheResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  /// Rank is 0-based i.e. when sort order is descending the rank of the
  /// value with the highest score will be 0. Similarly for ascending order,
  /// value with the lowest score will have rank 0.
  @$pb.TagNumber(2)
  $fixnum.Int64 get rank => $_getI64(1);
  @$pb.TagNumber(2)
  set rank($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearRank() => clearField(2);
}

class SortedSetGetRankResponse___SortedSetMissing extends $pb.GeneratedMessage {
  factory SortedSetGetRankResponse___SortedSetMissing() => create();
  SortedSetGetRankResponse___SortedSetMissing._() : super();
  factory SortedSetGetRankResponse___SortedSetMissing.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetRankResponse___SortedSetMissing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetRankResponse._SortedSetMissing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetRankResponse___SortedSetMissing clone() =>
      SortedSetGetRankResponse___SortedSetMissing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetRankResponse___SortedSetMissing copyWith(
          void Function(SortedSetGetRankResponse___SortedSetMissing) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetGetRankResponse___SortedSetMissing))
          as SortedSetGetRankResponse___SortedSetMissing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankResponse___SortedSetMissing create() =>
      SortedSetGetRankResponse___SortedSetMissing._();
  SortedSetGetRankResponse___SortedSetMissing createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetRankResponse___SortedSetMissing>
      createRepeated() =>
          $pb.PbList<SortedSetGetRankResponse___SortedSetMissing>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankResponse___SortedSetMissing getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetGetRankResponse___SortedSetMissing>(create);
  static SortedSetGetRankResponse___SortedSetMissing? _defaultInstance;
}

enum SortedSetGetRankResponse__Rank { elementRank, missing, notSet }

class SortedSetGetRankResponse_ extends $pb.GeneratedMessage {
  factory SortedSetGetRankResponse_({
    SortedSetGetRankResponse___RankResponsePart? elementRank,
    SortedSetGetRankResponse___SortedSetMissing? missing,
  }) {
    final $result = create();
    if (elementRank != null) {
      $result.elementRank = elementRank;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SortedSetGetRankResponse_._() : super();
  factory SortedSetGetRankResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetGetRankResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetGetRankResponse__Rank>
      _SortedSetGetRankResponse__RankByTag = {
    1: SortedSetGetRankResponse__Rank.elementRank,
    2: SortedSetGetRankResponse__Rank.missing,
    0: SortedSetGetRankResponse__Rank.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetGetRankResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SortedSetGetRankResponse___RankResponsePart>(
        1, _omitFieldNames ? '' : 'elementRank',
        subBuilder: SortedSetGetRankResponse___RankResponsePart.create)
    ..aOM<SortedSetGetRankResponse___SortedSetMissing>(
        2, _omitFieldNames ? '' : 'missing',
        subBuilder: SortedSetGetRankResponse___SortedSetMissing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetGetRankResponse_ clone() =>
      SortedSetGetRankResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetGetRankResponse_ copyWith(
          void Function(SortedSetGetRankResponse_) updates) =>
      super.copyWith((message) => updates(message as SortedSetGetRankResponse_))
          as SortedSetGetRankResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankResponse_ create() => SortedSetGetRankResponse_._();
  SortedSetGetRankResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetGetRankResponse_> createRepeated() =>
      $pb.PbList<SortedSetGetRankResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetGetRankResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetGetRankResponse_>(create);
  static SortedSetGetRankResponse_? _defaultInstance;

  SortedSetGetRankResponse__Rank whichRank() =>
      _SortedSetGetRankResponse__RankByTag[$_whichOneof(0)]!;
  void clearRank() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SortedSetGetRankResponse___RankResponsePart get elementRank => $_getN(0);
  @$pb.TagNumber(1)
  set elementRank(SortedSetGetRankResponse___RankResponsePart v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasElementRank() => $_has(0);
  @$pb.TagNumber(1)
  void clearElementRank() => clearField(1);
  @$pb.TagNumber(1)
  SortedSetGetRankResponse___RankResponsePart ensureElementRank() =>
      $_ensure(0);

  @$pb.TagNumber(2)
  SortedSetGetRankResponse___SortedSetMissing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SortedSetGetRankResponse___SortedSetMissing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetGetRankResponse___SortedSetMissing ensureMissing() => $_ensure(1);
}

class SortedSetLengthRequest_ extends $pb.GeneratedMessage {
  factory SortedSetLengthRequest_({
    $core.List<$core.int>? setName,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    return $result;
  }
  SortedSetLengthRequest_._() : super();
  factory SortedSetLengthRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthRequest_ clone() =>
      SortedSetLengthRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthRequest_ copyWith(
          void Function(SortedSetLengthRequest_) updates) =>
      super.copyWith((message) => updates(message as SortedSetLengthRequest_))
          as SortedSetLengthRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthRequest_ create() => SortedSetLengthRequest_._();
  SortedSetLengthRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthRequest_> createRepeated() =>
      $pb.PbList<SortedSetLengthRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetLengthRequest_>(create);
  static SortedSetLengthRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);
}

class SortedSetLengthResponse___Found extends $pb.GeneratedMessage {
  factory SortedSetLengthResponse___Found({
    $core.int? length,
  }) {
    final $result = create();
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  SortedSetLengthResponse___Found._() : super();
  factory SortedSetLengthResponse___Found.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthResponse___Found clone() =>
      SortedSetLengthResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthResponse___Found copyWith(
          void Function(SortedSetLengthResponse___Found) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetLengthResponse___Found))
          as SortedSetLengthResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthResponse___Found create() =>
      SortedSetLengthResponse___Found._();
  SortedSetLengthResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthResponse___Found> createRepeated() =>
      $pb.PbList<SortedSetLengthResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthResponse___Found getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetLengthResponse___Found>(
          create);
  static SortedSetLengthResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get length => $_getIZ(0);
  @$pb.TagNumber(1)
  set length($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearLength() => clearField(1);
}

class SortedSetLengthResponse___Missing extends $pb.GeneratedMessage {
  factory SortedSetLengthResponse___Missing() => create();
  SortedSetLengthResponse___Missing._() : super();
  factory SortedSetLengthResponse___Missing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthResponse___Missing clone() =>
      SortedSetLengthResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthResponse___Missing copyWith(
          void Function(SortedSetLengthResponse___Missing) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetLengthResponse___Missing))
          as SortedSetLengthResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthResponse___Missing create() =>
      SortedSetLengthResponse___Missing._();
  SortedSetLengthResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthResponse___Missing> createRepeated() =>
      $pb.PbList<SortedSetLengthResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthResponse___Missing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetLengthResponse___Missing>(
          create);
  static SortedSetLengthResponse___Missing? _defaultInstance;
}

enum SortedSetLengthResponse__SortedSet { found, missing, notSet }

class SortedSetLengthResponse_ extends $pb.GeneratedMessage {
  factory SortedSetLengthResponse_({
    SortedSetLengthResponse___Found? found,
    SortedSetLengthResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SortedSetLengthResponse_._() : super();
  factory SortedSetLengthResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetLengthResponse__SortedSet>
      _SortedSetLengthResponse__SortedSetByTag = {
    1: SortedSetLengthResponse__SortedSet.found,
    2: SortedSetLengthResponse__SortedSet.missing,
    0: SortedSetLengthResponse__SortedSet.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SortedSetLengthResponse___Found>(1, _omitFieldNames ? '' : 'found',
        subBuilder: SortedSetLengthResponse___Found.create)
    ..aOM<SortedSetLengthResponse___Missing>(
        2, _omitFieldNames ? '' : 'missing',
        subBuilder: SortedSetLengthResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthResponse_ clone() =>
      SortedSetLengthResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthResponse_ copyWith(
          void Function(SortedSetLengthResponse_) updates) =>
      super.copyWith((message) => updates(message as SortedSetLengthResponse_))
          as SortedSetLengthResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthResponse_ create() => SortedSetLengthResponse_._();
  SortedSetLengthResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthResponse_> createRepeated() =>
      $pb.PbList<SortedSetLengthResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetLengthResponse_>(create);
  static SortedSetLengthResponse_? _defaultInstance;

  SortedSetLengthResponse__SortedSet whichSortedSet() =>
      _SortedSetLengthResponse__SortedSetByTag[$_whichOneof(0)]!;
  void clearSortedSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SortedSetLengthResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SortedSetLengthResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SortedSetLengthResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SortedSetLengthResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SortedSetLengthResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetLengthResponse___Missing ensureMissing() => $_ensure(1);
}

enum SortedSetLengthByScoreRequest__Min {
  inclusiveMin,
  exclusiveMin,
  unboundedMin,
  notSet
}

enum SortedSetLengthByScoreRequest__Max {
  inclusiveMax,
  exclusiveMax,
  unboundedMax,
  notSet
}

class SortedSetLengthByScoreRequest_ extends $pb.GeneratedMessage {
  factory SortedSetLengthByScoreRequest_({
    $core.List<$core.int>? setName,
    $core.double? inclusiveMin,
    $core.double? exclusiveMin,
    $3.Unbounded_? unboundedMin,
    $core.double? inclusiveMax,
    $core.double? exclusiveMax,
    $3.Unbounded_? unboundedMax,
  }) {
    final $result = create();
    if (setName != null) {
      $result.setName = setName;
    }
    if (inclusiveMin != null) {
      $result.inclusiveMin = inclusiveMin;
    }
    if (exclusiveMin != null) {
      $result.exclusiveMin = exclusiveMin;
    }
    if (unboundedMin != null) {
      $result.unboundedMin = unboundedMin;
    }
    if (inclusiveMax != null) {
      $result.inclusiveMax = inclusiveMax;
    }
    if (exclusiveMax != null) {
      $result.exclusiveMax = exclusiveMax;
    }
    if (unboundedMax != null) {
      $result.unboundedMax = unboundedMax;
    }
    return $result;
  }
  SortedSetLengthByScoreRequest_._() : super();
  factory SortedSetLengthByScoreRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthByScoreRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetLengthByScoreRequest__Min>
      _SortedSetLengthByScoreRequest__MinByTag = {
    2: SortedSetLengthByScoreRequest__Min.inclusiveMin,
    3: SortedSetLengthByScoreRequest__Min.exclusiveMin,
    4: SortedSetLengthByScoreRequest__Min.unboundedMin,
    0: SortedSetLengthByScoreRequest__Min.notSet
  };
  static const $core.Map<$core.int, SortedSetLengthByScoreRequest__Max>
      _SortedSetLengthByScoreRequest__MaxByTag = {
    5: SortedSetLengthByScoreRequest__Max.inclusiveMax,
    6: SortedSetLengthByScoreRequest__Max.exclusiveMax,
    7: SortedSetLengthByScoreRequest__Max.unboundedMax,
    0: SortedSetLengthByScoreRequest__Max.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthByScoreRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..oo(1, [5, 6, 7])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'setName', $pb.PbFieldType.OY)
    ..a<$core.double>(
        2, _omitFieldNames ? '' : 'inclusiveMin', $pb.PbFieldType.OD)
    ..a<$core.double>(
        3, _omitFieldNames ? '' : 'exclusiveMin', $pb.PbFieldType.OD)
    ..aOM<$3.Unbounded_>(4, _omitFieldNames ? '' : 'unboundedMin',
        subBuilder: $3.Unbounded_.create)
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'inclusiveMax', $pb.PbFieldType.OD)
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'exclusiveMax', $pb.PbFieldType.OD)
    ..aOM<$3.Unbounded_>(7, _omitFieldNames ? '' : 'unboundedMax',
        subBuilder: $3.Unbounded_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreRequest_ clone() =>
      SortedSetLengthByScoreRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreRequest_ copyWith(
          void Function(SortedSetLengthByScoreRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetLengthByScoreRequest_))
          as SortedSetLengthByScoreRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreRequest_ create() =>
      SortedSetLengthByScoreRequest_._();
  SortedSetLengthByScoreRequest_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthByScoreRequest_> createRepeated() =>
      $pb.PbList<SortedSetLengthByScoreRequest_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetLengthByScoreRequest_>(create);
  static SortedSetLengthByScoreRequest_? _defaultInstance;

  SortedSetLengthByScoreRequest__Min whichMin() =>
      _SortedSetLengthByScoreRequest__MinByTag[$_whichOneof(0)]!;
  void clearMin() => clearField($_whichOneof(0));

  SortedSetLengthByScoreRequest__Max whichMax() =>
      _SortedSetLengthByScoreRequest__MaxByTag[$_whichOneof(1)]!;
  void clearMax() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $core.List<$core.int> get setName => $_getN(0);
  @$pb.TagNumber(1)
  set setName($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get inclusiveMin => $_getN(1);
  @$pb.TagNumber(2)
  set inclusiveMin($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInclusiveMin() => $_has(1);
  @$pb.TagNumber(2)
  void clearInclusiveMin() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get exclusiveMin => $_getN(2);
  @$pb.TagNumber(3)
  set exclusiveMin($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasExclusiveMin() => $_has(2);
  @$pb.TagNumber(3)
  void clearExclusiveMin() => clearField(3);

  @$pb.TagNumber(4)
  $3.Unbounded_ get unboundedMin => $_getN(3);
  @$pb.TagNumber(4)
  set unboundedMin($3.Unbounded_ v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUnboundedMin() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnboundedMin() => clearField(4);
  @$pb.TagNumber(4)
  $3.Unbounded_ ensureUnboundedMin() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get inclusiveMax => $_getN(4);
  @$pb.TagNumber(5)
  set inclusiveMax($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasInclusiveMax() => $_has(4);
  @$pb.TagNumber(5)
  void clearInclusiveMax() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get exclusiveMax => $_getN(5);
  @$pb.TagNumber(6)
  set exclusiveMax($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasExclusiveMax() => $_has(5);
  @$pb.TagNumber(6)
  void clearExclusiveMax() => clearField(6);

  @$pb.TagNumber(7)
  $3.Unbounded_ get unboundedMax => $_getN(6);
  @$pb.TagNumber(7)
  set unboundedMax($3.Unbounded_ v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUnboundedMax() => $_has(6);
  @$pb.TagNumber(7)
  void clearUnboundedMax() => clearField(7);
  @$pb.TagNumber(7)
  $3.Unbounded_ ensureUnboundedMax() => $_ensure(6);
}

class SortedSetLengthByScoreResponse___Found extends $pb.GeneratedMessage {
  factory SortedSetLengthByScoreResponse___Found({
    $core.int? length,
  }) {
    final $result = create();
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  SortedSetLengthByScoreResponse___Found._() : super();
  factory SortedSetLengthByScoreResponse___Found.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthByScoreResponse___Found.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthByScoreResponse._Found',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreResponse___Found clone() =>
      SortedSetLengthByScoreResponse___Found()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreResponse___Found copyWith(
          void Function(SortedSetLengthByScoreResponse___Found) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetLengthByScoreResponse___Found))
          as SortedSetLengthByScoreResponse___Found;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreResponse___Found create() =>
      SortedSetLengthByScoreResponse___Found._();
  SortedSetLengthByScoreResponse___Found createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthByScoreResponse___Found> createRepeated() =>
      $pb.PbList<SortedSetLengthByScoreResponse___Found>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreResponse___Found getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetLengthByScoreResponse___Found>(create);
  static SortedSetLengthByScoreResponse___Found? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get length => $_getIZ(0);
  @$pb.TagNumber(1)
  set length($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearLength() => clearField(1);
}

class SortedSetLengthByScoreResponse___Missing extends $pb.GeneratedMessage {
  factory SortedSetLengthByScoreResponse___Missing() => create();
  SortedSetLengthByScoreResponse___Missing._() : super();
  factory SortedSetLengthByScoreResponse___Missing.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthByScoreResponse___Missing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthByScoreResponse._Missing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreResponse___Missing clone() =>
      SortedSetLengthByScoreResponse___Missing()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreResponse___Missing copyWith(
          void Function(SortedSetLengthByScoreResponse___Missing) updates) =>
      super.copyWith((message) =>
              updates(message as SortedSetLengthByScoreResponse___Missing))
          as SortedSetLengthByScoreResponse___Missing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreResponse___Missing create() =>
      SortedSetLengthByScoreResponse___Missing._();
  SortedSetLengthByScoreResponse___Missing createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthByScoreResponse___Missing>
      createRepeated() =>
          $pb.PbList<SortedSetLengthByScoreResponse___Missing>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreResponse___Missing getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SortedSetLengthByScoreResponse___Missing>(create);
  static SortedSetLengthByScoreResponse___Missing? _defaultInstance;
}

enum SortedSetLengthByScoreResponse__SortedSet { found, missing, notSet }

class SortedSetLengthByScoreResponse_ extends $pb.GeneratedMessage {
  factory SortedSetLengthByScoreResponse_({
    SortedSetLengthByScoreResponse___Found? found,
    SortedSetLengthByScoreResponse___Missing? missing,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    return $result;
  }
  SortedSetLengthByScoreResponse_._() : super();
  factory SortedSetLengthByScoreResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SortedSetLengthByScoreResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SortedSetLengthByScoreResponse__SortedSet>
      _SortedSetLengthByScoreResponse__SortedSetByTag = {
    1: SortedSetLengthByScoreResponse__SortedSet.found,
    2: SortedSetLengthByScoreResponse__SortedSet.missing,
    0: SortedSetLengthByScoreResponse__SortedSet.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SortedSetLengthByScoreResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SortedSetLengthByScoreResponse___Found>(
        1, _omitFieldNames ? '' : 'found',
        subBuilder: SortedSetLengthByScoreResponse___Found.create)
    ..aOM<SortedSetLengthByScoreResponse___Missing>(
        2, _omitFieldNames ? '' : 'missing',
        subBuilder: SortedSetLengthByScoreResponse___Missing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreResponse_ clone() =>
      SortedSetLengthByScoreResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SortedSetLengthByScoreResponse_ copyWith(
          void Function(SortedSetLengthByScoreResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as SortedSetLengthByScoreResponse_))
          as SortedSetLengthByScoreResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreResponse_ create() =>
      SortedSetLengthByScoreResponse_._();
  SortedSetLengthByScoreResponse_ createEmptyInstance() => create();
  static $pb.PbList<SortedSetLengthByScoreResponse_> createRepeated() =>
      $pb.PbList<SortedSetLengthByScoreResponse_>();
  @$core.pragma('dart2js:noInline')
  static SortedSetLengthByScoreResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SortedSetLengthByScoreResponse_>(
          create);
  static SortedSetLengthByScoreResponse_? _defaultInstance;

  SortedSetLengthByScoreResponse__SortedSet whichSortedSet() =>
      _SortedSetLengthByScoreResponse__SortedSetByTag[$_whichOneof(0)]!;
  void clearSortedSet() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SortedSetLengthByScoreResponse___Found get found => $_getN(0);
  @$pb.TagNumber(1)
  set found(SortedSetLengthByScoreResponse___Found v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  SortedSetLengthByScoreResponse___Found ensureFound() => $_ensure(0);

  @$pb.TagNumber(2)
  SortedSetLengthByScoreResponse___Missing get missing => $_getN(1);
  @$pb.TagNumber(2)
  set missing(SortedSetLengthByScoreResponse___Missing v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);
  @$pb.TagNumber(2)
  SortedSetLengthByScoreResponse___Missing ensureMissing() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
