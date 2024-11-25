//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Present extends $pb.GeneratedMessage {
  factory Present() => create();
  Present._() : super();
  factory Present.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Present.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Present',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Present clone() => Present()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Present copyWith(void Function(Present) updates) =>
      super.copyWith((message) => updates(message as Present)) as Present;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Present create() => Present._();
  Present createEmptyInstance() => create();
  static $pb.PbList<Present> createRepeated() => $pb.PbList<Present>();
  @$core.pragma('dart2js:noInline')
  static Present getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Present>(create);
  static Present? _defaultInstance;
}

class PresentAndNotEqual extends $pb.GeneratedMessage {
  factory PresentAndNotEqual({
    $core.List<$core.int>? valueToCheck,
  }) {
    final $result = create();
    if (valueToCheck != null) {
      $result.valueToCheck = valueToCheck;
    }
    return $result;
  }
  PresentAndNotEqual._() : super();
  factory PresentAndNotEqual.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PresentAndNotEqual.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PresentAndNotEqual',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'valueToCheck', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PresentAndNotEqual clone() => PresentAndNotEqual()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PresentAndNotEqual copyWith(void Function(PresentAndNotEqual) updates) =>
      super.copyWith((message) => updates(message as PresentAndNotEqual))
          as PresentAndNotEqual;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PresentAndNotEqual create() => PresentAndNotEqual._();
  PresentAndNotEqual createEmptyInstance() => create();
  static $pb.PbList<PresentAndNotEqual> createRepeated() =>
      $pb.PbList<PresentAndNotEqual>();
  @$core.pragma('dart2js:noInline')
  static PresentAndNotEqual getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PresentAndNotEqual>(create);
  static PresentAndNotEqual? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get valueToCheck => $_getN(0);
  @$pb.TagNumber(1)
  set valueToCheck($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValueToCheck() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueToCheck() => clearField(1);
}

class Absent extends $pb.GeneratedMessage {
  factory Absent() => create();
  Absent._() : super();
  factory Absent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Absent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Absent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Absent clone() => Absent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Absent copyWith(void Function(Absent) updates) =>
      super.copyWith((message) => updates(message as Absent)) as Absent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Absent create() => Absent._();
  Absent createEmptyInstance() => create();
  static $pb.PbList<Absent> createRepeated() => $pb.PbList<Absent>();
  @$core.pragma('dart2js:noInline')
  static Absent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Absent>(create);
  static Absent? _defaultInstance;
}

class Equal extends $pb.GeneratedMessage {
  factory Equal({
    $core.List<$core.int>? valueToCheck,
  }) {
    final $result = create();
    if (valueToCheck != null) {
      $result.valueToCheck = valueToCheck;
    }
    return $result;
  }
  Equal._() : super();
  factory Equal.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Equal.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Equal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'valueToCheck', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Equal clone() => Equal()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Equal copyWith(void Function(Equal) updates) =>
      super.copyWith((message) => updates(message as Equal)) as Equal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Equal create() => Equal._();
  Equal createEmptyInstance() => create();
  static $pb.PbList<Equal> createRepeated() => $pb.PbList<Equal>();
  @$core.pragma('dart2js:noInline')
  static Equal getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Equal>(create);
  static Equal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get valueToCheck => $_getN(0);
  @$pb.TagNumber(1)
  set valueToCheck($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValueToCheck() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueToCheck() => clearField(1);
}

class AbsentOrEqual extends $pb.GeneratedMessage {
  factory AbsentOrEqual({
    $core.List<$core.int>? valueToCheck,
  }) {
    final $result = create();
    if (valueToCheck != null) {
      $result.valueToCheck = valueToCheck;
    }
    return $result;
  }
  AbsentOrEqual._() : super();
  factory AbsentOrEqual.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AbsentOrEqual.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AbsentOrEqual',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'valueToCheck', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AbsentOrEqual clone() => AbsentOrEqual()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AbsentOrEqual copyWith(void Function(AbsentOrEqual) updates) =>
      super.copyWith((message) => updates(message as AbsentOrEqual))
          as AbsentOrEqual;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AbsentOrEqual create() => AbsentOrEqual._();
  AbsentOrEqual createEmptyInstance() => create();
  static $pb.PbList<AbsentOrEqual> createRepeated() =>
      $pb.PbList<AbsentOrEqual>();
  @$core.pragma('dart2js:noInline')
  static AbsentOrEqual getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AbsentOrEqual>(create);
  static AbsentOrEqual? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get valueToCheck => $_getN(0);
  @$pb.TagNumber(1)
  set valueToCheck($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValueToCheck() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueToCheck() => clearField(1);
}

class NotEqual extends $pb.GeneratedMessage {
  factory NotEqual({
    $core.List<$core.int>? valueToCheck,
  }) {
    final $result = create();
    if (valueToCheck != null) {
      $result.valueToCheck = valueToCheck;
    }
    return $result;
  }
  NotEqual._() : super();
  factory NotEqual.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotEqual.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NotEqual',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'valueToCheck', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotEqual clone() => NotEqual()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotEqual copyWith(void Function(NotEqual) updates) =>
      super.copyWith((message) => updates(message as NotEqual)) as NotEqual;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotEqual create() => NotEqual._();
  NotEqual createEmptyInstance() => create();
  static $pb.PbList<NotEqual> createRepeated() => $pb.PbList<NotEqual>();
  @$core.pragma('dart2js:noInline')
  static NotEqual getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotEqual>(create);
  static NotEqual? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get valueToCheck => $_getN(0);
  @$pb.TagNumber(1)
  set valueToCheck($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValueToCheck() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueToCheck() => clearField(1);
}

class Unbounded_ extends $pb.GeneratedMessage {
  factory Unbounded_() => create();
  Unbounded_._() : super();
  factory Unbounded_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Unbounded_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Unbounded',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Unbounded_ clone() => Unbounded_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Unbounded_ copyWith(void Function(Unbounded_) updates) =>
      super.copyWith((message) => updates(message as Unbounded_)) as Unbounded_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Unbounded_ create() => Unbounded_._();
  Unbounded_ createEmptyInstance() => create();
  static $pb.PbList<Unbounded_> createRepeated() => $pb.PbList<Unbounded_>();
  @$core.pragma('dart2js:noInline')
  static Unbounded_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Unbounded_>(create);
  static Unbounded_? _defaultInstance;
}

class Empty_ extends $pb.GeneratedMessage {
  factory Empty_() => create();
  Empty_._() : super();
  factory Empty_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Empty_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Empty',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Empty_ clone() => Empty_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Empty_ copyWith(void Function(Empty_) updates) =>
      super.copyWith((message) => updates(message as Empty_)) as Empty_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty_ create() => Empty_._();
  Empty_ createEmptyInstance() => create();
  static $pb.PbList<Empty_> createRepeated() => $pb.PbList<Empty_>();
  @$core.pragma('dart2js:noInline')
  static Empty_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty_>(create);
  static Empty_? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
