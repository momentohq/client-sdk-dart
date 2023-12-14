//
//  Generated code. Do not modify.
//  source: cacheping.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PingRequest_ extends $pb.GeneratedMessage {
  factory PingRequest_() => create();
  PingRequest_._() : super();
  factory PingRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_PingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingRequest_ clone() => PingRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingRequest_ copyWith(void Function(PingRequest_) updates) => super.copyWith((message) => updates(message as PingRequest_)) as PingRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingRequest_ create() => PingRequest_._();
  PingRequest_ createEmptyInstance() => create();
  static $pb.PbList<PingRequest_> createRepeated() => $pb.PbList<PingRequest_>();
  @$core.pragma('dart2js:noInline')
  static PingRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingRequest_>(create);
  static PingRequest_? _defaultInstance;
}

class PingResponse_ extends $pb.GeneratedMessage {
  factory PingResponse_() => create();
  PingResponse_._() : super();
  factory PingResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_PingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'cache_client'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingResponse_ clone() => PingResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingResponse_ copyWith(void Function(PingResponse_) updates) => super.copyWith((message) => updates(message as PingResponse_)) as PingResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingResponse_ create() => PingResponse_._();
  PingResponse_ createEmptyInstance() => create();
  static $pb.PbList<PingResponse_> createRepeated() => $pb.PbList<PingResponse_>();
  @$core.pragma('dart2js:noInline')
  static PingResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingResponse_>(create);
  static PingResponse_? _defaultInstance;
}


const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
