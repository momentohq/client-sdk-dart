//
//  Generated code. Do not modify.
//  source: token.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'permissionmessages.pb.dart' as $9;

/// generate a token that has an expiry
class GenerateDisposableTokenRequest__Expires extends $pb.GeneratedMessage {
  factory GenerateDisposableTokenRequest__Expires({
    $core.int? validForSeconds,
  }) {
    final $result = create();
    if (validForSeconds != null) {
      $result.validForSeconds = validForSeconds;
    }
    return $result;
  }
  GenerateDisposableTokenRequest__Expires._() : super();
  factory GenerateDisposableTokenRequest__Expires.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateDisposableTokenRequest__Expires.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GenerateDisposableTokenRequest.Expires', package: const $pb.PackageName(_omitMessageNames ? '' : 'token'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'validForSeconds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateDisposableTokenRequest__Expires clone() => GenerateDisposableTokenRequest__Expires()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateDisposableTokenRequest__Expires copyWith(void Function(GenerateDisposableTokenRequest__Expires) updates) => super.copyWith((message) => updates(message as GenerateDisposableTokenRequest__Expires)) as GenerateDisposableTokenRequest__Expires;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateDisposableTokenRequest__Expires create() => GenerateDisposableTokenRequest__Expires._();
  GenerateDisposableTokenRequest__Expires createEmptyInstance() => create();
  static $pb.PbList<GenerateDisposableTokenRequest__Expires> createRepeated() => $pb.PbList<GenerateDisposableTokenRequest__Expires>();
  @$core.pragma('dart2js:noInline')
  static GenerateDisposableTokenRequest__Expires getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateDisposableTokenRequest__Expires>(create);
  static GenerateDisposableTokenRequest__Expires? _defaultInstance;

  /// how many seconds do you want the api token to be valid for?
  @$pb.TagNumber(1)
  $core.int get validForSeconds => $_getIZ(0);
  @$pb.TagNumber(1)
  set validForSeconds($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValidForSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidForSeconds() => clearField(1);
}

class GenerateDisposableTokenRequest_ extends $pb.GeneratedMessage {
  factory GenerateDisposableTokenRequest_({
    GenerateDisposableTokenRequest__Expires? expires,
    $core.String? authToken,
    $9.Permissions? permissions,
    $core.String? tokenId,
  }) {
    final $result = create();
    if (expires != null) {
      $result.expires = expires;
    }
    if (authToken != null) {
      $result.authToken = authToken;
    }
    if (permissions != null) {
      $result.permissions = permissions;
    }
    if (tokenId != null) {
      $result.tokenId = tokenId;
    }
    return $result;
  }
  GenerateDisposableTokenRequest_._() : super();
  factory GenerateDisposableTokenRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateDisposableTokenRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GenerateDisposableTokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'token'), createEmptyInstance: create)
    ..aOM<GenerateDisposableTokenRequest__Expires>(1, _omitFieldNames ? '' : 'expires', subBuilder: GenerateDisposableTokenRequest__Expires.create)
    ..aOS(2, _omitFieldNames ? '' : 'authToken')
    ..aOM<$9.Permissions>(3, _omitFieldNames ? '' : 'permissions', subBuilder: $9.Permissions.create)
    ..aOS(4, _omitFieldNames ? '' : 'tokenId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateDisposableTokenRequest_ clone() => GenerateDisposableTokenRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateDisposableTokenRequest_ copyWith(void Function(GenerateDisposableTokenRequest_) updates) => super.copyWith((message) => updates(message as GenerateDisposableTokenRequest_)) as GenerateDisposableTokenRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateDisposableTokenRequest_ create() => GenerateDisposableTokenRequest_._();
  GenerateDisposableTokenRequest_ createEmptyInstance() => create();
  static $pb.PbList<GenerateDisposableTokenRequest_> createRepeated() => $pb.PbList<GenerateDisposableTokenRequest_>();
  @$core.pragma('dart2js:noInline')
  static GenerateDisposableTokenRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateDisposableTokenRequest_>(create);
  static GenerateDisposableTokenRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  GenerateDisposableTokenRequest__Expires get expires => $_getN(0);
  @$pb.TagNumber(1)
  set expires(GenerateDisposableTokenRequest__Expires v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpires() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpires() => clearField(1);
  @$pb.TagNumber(1)
  GenerateDisposableTokenRequest__Expires ensureExpires() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get authToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set authToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthToken() => clearField(2);

  @$pb.TagNumber(3)
  $9.Permissions get permissions => $_getN(2);
  @$pb.TagNumber(3)
  set permissions($9.Permissions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPermissions() => $_has(2);
  @$pb.TagNumber(3)
  void clearPermissions() => clearField(3);
  @$pb.TagNumber(3)
  $9.Permissions ensurePermissions() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get tokenId => $_getSZ(3);
  @$pb.TagNumber(4)
  set tokenId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTokenId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTokenId() => clearField(4);
}

class GenerateDisposableTokenResponse_ extends $pb.GeneratedMessage {
  factory GenerateDisposableTokenResponse_({
    $core.String? apiKey,
    $core.String? endpoint,
    $fixnum.Int64? validUntil,
  }) {
    final $result = create();
    if (apiKey != null) {
      $result.apiKey = apiKey;
    }
    if (endpoint != null) {
      $result.endpoint = endpoint;
    }
    if (validUntil != null) {
      $result.validUntil = validUntil;
    }
    return $result;
  }
  GenerateDisposableTokenResponse_._() : super();
  factory GenerateDisposableTokenResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateDisposableTokenResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GenerateDisposableTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'token'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiKey')
    ..aOS(2, _omitFieldNames ? '' : 'endpoint')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'validUntil', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateDisposableTokenResponse_ clone() => GenerateDisposableTokenResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateDisposableTokenResponse_ copyWith(void Function(GenerateDisposableTokenResponse_) updates) => super.copyWith((message) => updates(message as GenerateDisposableTokenResponse_)) as GenerateDisposableTokenResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateDisposableTokenResponse_ create() => GenerateDisposableTokenResponse_._();
  GenerateDisposableTokenResponse_ createEmptyInstance() => create();
  static $pb.PbList<GenerateDisposableTokenResponse_> createRepeated() => $pb.PbList<GenerateDisposableTokenResponse_>();
  @$core.pragma('dart2js:noInline')
  static GenerateDisposableTokenResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateDisposableTokenResponse_>(create);
  static GenerateDisposableTokenResponse_? _defaultInstance;

  /// the new api key used for authentication against Momento backend
  @$pb.TagNumber(1)
  $core.String get apiKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiKey() => clearField(1);

  /// the Momento endpoint that this token is allowed to make requests against
  @$pb.TagNumber(2)
  $core.String get endpoint => $_getSZ(1);
  @$pb.TagNumber(2)
  set endpoint($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndpoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndpoint() => clearField(2);

  /// epoch seconds when the api token expires
  @$pb.TagNumber(3)
  $fixnum.Int64 get validUntil => $_getI64(2);
  @$pb.TagNumber(3)
  set validUntil($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidUntil() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidUntil() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
