//
//  Generated code. Do not modify.
//  source: auth.proto
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

class LoginRequest_ extends $pb.GeneratedMessage {
  factory LoginRequest_() => create();
  LoginRequest_._() : super();
  factory LoginRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_LoginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest_ clone() => LoginRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest_ copyWith(void Function(LoginRequest_) updates) => super.copyWith((message) => updates(message as LoginRequest_)) as LoginRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest_ create() => LoginRequest_._();
  LoginRequest_ createEmptyInstance() => create();
  static $pb.PbList<LoginRequest_> createRepeated() => $pb.PbList<LoginRequest_>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest_>(create);
  static LoginRequest_? _defaultInstance;
}

/// Terminal state, login success
class LoginResponse__LoggedIn extends $pb.GeneratedMessage {
  factory LoginResponse__LoggedIn({
    $core.String? sessionToken,
    $core.int? validForSeconds,
  }) {
    final $result = create();
    if (sessionToken != null) {
      $result.sessionToken = sessionToken;
    }
    if (validForSeconds != null) {
      $result.validForSeconds = validForSeconds;
    }
    return $result;
  }
  LoginResponse__LoggedIn._() : super();
  factory LoginResponse__LoggedIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse__LoggedIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_LoginResponse.LoggedIn', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionToken')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'validForSeconds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse__LoggedIn clone() => LoginResponse__LoggedIn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse__LoggedIn copyWith(void Function(LoginResponse__LoggedIn) updates) => super.copyWith((message) => updates(message as LoginResponse__LoggedIn)) as LoginResponse__LoggedIn;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse__LoggedIn create() => LoginResponse__LoggedIn._();
  LoginResponse__LoggedIn createEmptyInstance() => create();
  static $pb.PbList<LoginResponse__LoggedIn> createRepeated() => $pb.PbList<LoginResponse__LoggedIn>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse__LoggedIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse__LoggedIn>(create);
  static LoginResponse__LoggedIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionToken() => clearField(1);

  /// How many seconds the token was valid for when issued.
  /// Will vary slightly from reality upon receipt, as
  /// time has passed since the token was minted.
  /// You might expect to see this true to within 10
  /// seconds of client-side timekeeping but as is
  /// ever the case, there are no guarantees with
  /// public network timing.
  @$pb.TagNumber(2)
  $core.int get validForSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set validForSeconds($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValidForSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidForSeconds() => clearField(2);
}

/// Terminal state, login error
class LoginResponse__Error extends $pb.GeneratedMessage {
  factory LoginResponse__Error({
    $core.String? description,
  }) {
    final $result = create();
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  LoginResponse__Error._() : super();
  factory LoginResponse__Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse__Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_LoginResponse.Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse__Error clone() => LoginResponse__Error()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse__Error copyWith(void Function(LoginResponse__Error) updates) => super.copyWith((message) => updates(message as LoginResponse__Error)) as LoginResponse__Error;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse__Error create() => LoginResponse__Error._();
  LoginResponse__Error createEmptyInstance() => create();
  static $pb.PbList<LoginResponse__Error> createRepeated() => $pb.PbList<LoginResponse__Error>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse__Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse__Error>(create);
  static LoginResponse__Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);
}

/// Open a browser to a url, for interactive login
class LoginResponse__DirectBrowser extends $pb.GeneratedMessage {
  factory LoginResponse__DirectBrowser({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  LoginResponse__DirectBrowser._() : super();
  factory LoginResponse__DirectBrowser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse__DirectBrowser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_LoginResponse.DirectBrowser', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse__DirectBrowser clone() => LoginResponse__DirectBrowser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse__DirectBrowser copyWith(void Function(LoginResponse__DirectBrowser) updates) => super.copyWith((message) => updates(message as LoginResponse__DirectBrowser)) as LoginResponse__DirectBrowser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse__DirectBrowser create() => LoginResponse__DirectBrowser._();
  LoginResponse__DirectBrowser createEmptyInstance() => create();
  static $pb.PbList<LoginResponse__DirectBrowser> createRepeated() => $pb.PbList<LoginResponse__DirectBrowser>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse__DirectBrowser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse__DirectBrowser>(create);
  static LoginResponse__DirectBrowser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

/// Logging info about the login process
class LoginResponse__Message extends $pb.GeneratedMessage {
  factory LoginResponse__Message({
    $core.String? text,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  LoginResponse__Message._() : super();
  factory LoginResponse__Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse__Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_LoginResponse.Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse__Message clone() => LoginResponse__Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse__Message copyWith(void Function(LoginResponse__Message) updates) => super.copyWith((message) => updates(message as LoginResponse__Message)) as LoginResponse__Message;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse__Message create() => LoginResponse__Message._();
  LoginResponse__Message createEmptyInstance() => create();
  static $pb.PbList<LoginResponse__Message> createRepeated() => $pb.PbList<LoginResponse__Message>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse__Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse__Message>(create);
  static LoginResponse__Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

enum LoginResponse__State {
  directBrowser, 
  loggedIn, 
  message, 
  error, 
  notSet
}

class LoginResponse_ extends $pb.GeneratedMessage {
  factory LoginResponse_({
    LoginResponse__DirectBrowser? directBrowser,
    LoginResponse__LoggedIn? loggedIn,
    LoginResponse__Message? message,
    LoginResponse__Error? error,
  }) {
    final $result = create();
    if (directBrowser != null) {
      $result.directBrowser = directBrowser;
    }
    if (loggedIn != null) {
      $result.loggedIn = loggedIn;
    }
    if (message != null) {
      $result.message = message;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  LoginResponse_._() : super();
  factory LoginResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, LoginResponse__State> _LoginResponse__StateByTag = {
    1 : LoginResponse__State.directBrowser,
    2 : LoginResponse__State.loggedIn,
    3 : LoginResponse__State.message,
    4 : LoginResponse__State.error,
    0 : LoginResponse__State.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_LoginResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<LoginResponse__DirectBrowser>(1, _omitFieldNames ? '' : 'directBrowser', subBuilder: LoginResponse__DirectBrowser.create)
    ..aOM<LoginResponse__LoggedIn>(2, _omitFieldNames ? '' : 'loggedIn', subBuilder: LoginResponse__LoggedIn.create)
    ..aOM<LoginResponse__Message>(3, _omitFieldNames ? '' : 'message', subBuilder: LoginResponse__Message.create)
    ..aOM<LoginResponse__Error>(4, _omitFieldNames ? '' : 'error', subBuilder: LoginResponse__Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse_ clone() => LoginResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse_ copyWith(void Function(LoginResponse_) updates) => super.copyWith((message) => updates(message as LoginResponse_)) as LoginResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse_ create() => LoginResponse_._();
  LoginResponse_ createEmptyInstance() => create();
  static $pb.PbList<LoginResponse_> createRepeated() => $pb.PbList<LoginResponse_>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse_>(create);
  static LoginResponse_? _defaultInstance;

  LoginResponse__State whichState() => _LoginResponse__StateByTag[$_whichOneof(0)]!;
  void clearState() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LoginResponse__DirectBrowser get directBrowser => $_getN(0);
  @$pb.TagNumber(1)
  set directBrowser(LoginResponse__DirectBrowser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirectBrowser() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirectBrowser() => clearField(1);
  @$pb.TagNumber(1)
  LoginResponse__DirectBrowser ensureDirectBrowser() => $_ensure(0);

  @$pb.TagNumber(2)
  LoginResponse__LoggedIn get loggedIn => $_getN(1);
  @$pb.TagNumber(2)
  set loggedIn(LoginResponse__LoggedIn v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoggedIn() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoggedIn() => clearField(2);
  @$pb.TagNumber(2)
  LoginResponse__LoggedIn ensureLoggedIn() => $_ensure(1);

  @$pb.TagNumber(3)
  LoginResponse__Message get message => $_getN(2);
  @$pb.TagNumber(3)
  set message(LoginResponse__Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  LoginResponse__Message ensureMessage() => $_ensure(2);

  @$pb.TagNumber(4)
  LoginResponse__Error get error => $_getN(3);
  @$pb.TagNumber(4)
  set error(LoginResponse__Error v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);
  @$pb.TagNumber(4)
  LoginResponse__Error ensureError() => $_ensure(3);
}

/// generate a token that will never expire
class GenerateApiTokenRequest__Never extends $pb.GeneratedMessage {
  factory GenerateApiTokenRequest__Never() => create();
  GenerateApiTokenRequest__Never._() : super();
  factory GenerateApiTokenRequest__Never.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateApiTokenRequest__Never.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GenerateApiTokenRequest.Never', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateApiTokenRequest__Never clone() => GenerateApiTokenRequest__Never()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateApiTokenRequest__Never copyWith(void Function(GenerateApiTokenRequest__Never) updates) => super.copyWith((message) => updates(message as GenerateApiTokenRequest__Never)) as GenerateApiTokenRequest__Never;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenRequest__Never create() => GenerateApiTokenRequest__Never._();
  GenerateApiTokenRequest__Never createEmptyInstance() => create();
  static $pb.PbList<GenerateApiTokenRequest__Never> createRepeated() => $pb.PbList<GenerateApiTokenRequest__Never>();
  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenRequest__Never getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateApiTokenRequest__Never>(create);
  static GenerateApiTokenRequest__Never? _defaultInstance;
}

/// generate a token that has an expiry
class GenerateApiTokenRequest__Expires extends $pb.GeneratedMessage {
  factory GenerateApiTokenRequest__Expires({
    $core.int? validForSeconds,
  }) {
    final $result = create();
    if (validForSeconds != null) {
      $result.validForSeconds = validForSeconds;
    }
    return $result;
  }
  GenerateApiTokenRequest__Expires._() : super();
  factory GenerateApiTokenRequest__Expires.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateApiTokenRequest__Expires.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GenerateApiTokenRequest.Expires', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'validForSeconds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateApiTokenRequest__Expires clone() => GenerateApiTokenRequest__Expires()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateApiTokenRequest__Expires copyWith(void Function(GenerateApiTokenRequest__Expires) updates) => super.copyWith((message) => updates(message as GenerateApiTokenRequest__Expires)) as GenerateApiTokenRequest__Expires;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenRequest__Expires create() => GenerateApiTokenRequest__Expires._();
  GenerateApiTokenRequest__Expires createEmptyInstance() => create();
  static $pb.PbList<GenerateApiTokenRequest__Expires> createRepeated() => $pb.PbList<GenerateApiTokenRequest__Expires>();
  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenRequest__Expires getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateApiTokenRequest__Expires>(create);
  static GenerateApiTokenRequest__Expires? _defaultInstance;

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

enum GenerateApiTokenRequest__Expiry {
  never, 
  expires, 
  notSet
}

class GenerateApiTokenRequest_ extends $pb.GeneratedMessage {
  factory GenerateApiTokenRequest_({
    GenerateApiTokenRequest__Never? never,
    GenerateApiTokenRequest__Expires? expires,
    $core.String? authToken,
    $9.Permissions? permissions,
    $core.String? tokenId,
  }) {
    final $result = create();
    if (never != null) {
      $result.never = never;
    }
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
  GenerateApiTokenRequest_._() : super();
  factory GenerateApiTokenRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateApiTokenRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GenerateApiTokenRequest__Expiry> _GenerateApiTokenRequest__ExpiryByTag = {
    1 : GenerateApiTokenRequest__Expiry.never,
    2 : GenerateApiTokenRequest__Expiry.expires,
    0 : GenerateApiTokenRequest__Expiry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GenerateApiTokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<GenerateApiTokenRequest__Never>(1, _omitFieldNames ? '' : 'never', subBuilder: GenerateApiTokenRequest__Never.create)
    ..aOM<GenerateApiTokenRequest__Expires>(2, _omitFieldNames ? '' : 'expires', subBuilder: GenerateApiTokenRequest__Expires.create)
    ..aOS(3, _omitFieldNames ? '' : 'authToken')
    ..aOM<$9.Permissions>(4, _omitFieldNames ? '' : 'permissions', subBuilder: $9.Permissions.create)
    ..aOS(5, _omitFieldNames ? '' : 'tokenId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateApiTokenRequest_ clone() => GenerateApiTokenRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateApiTokenRequest_ copyWith(void Function(GenerateApiTokenRequest_) updates) => super.copyWith((message) => updates(message as GenerateApiTokenRequest_)) as GenerateApiTokenRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenRequest_ create() => GenerateApiTokenRequest_._();
  GenerateApiTokenRequest_ createEmptyInstance() => create();
  static $pb.PbList<GenerateApiTokenRequest_> createRepeated() => $pb.PbList<GenerateApiTokenRequest_>();
  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateApiTokenRequest_>(create);
  static GenerateApiTokenRequest_? _defaultInstance;

  GenerateApiTokenRequest__Expiry whichExpiry() => _GenerateApiTokenRequest__ExpiryByTag[$_whichOneof(0)]!;
  void clearExpiry() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GenerateApiTokenRequest__Never get never => $_getN(0);
  @$pb.TagNumber(1)
  set never(GenerateApiTokenRequest__Never v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNever() => $_has(0);
  @$pb.TagNumber(1)
  void clearNever() => clearField(1);
  @$pb.TagNumber(1)
  GenerateApiTokenRequest__Never ensureNever() => $_ensure(0);

  @$pb.TagNumber(2)
  GenerateApiTokenRequest__Expires get expires => $_getN(1);
  @$pb.TagNumber(2)
  set expires(GenerateApiTokenRequest__Expires v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpires() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpires() => clearField(2);
  @$pb.TagNumber(2)
  GenerateApiTokenRequest__Expires ensureExpires() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get authToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set authToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthToken() => clearField(3);

  @$pb.TagNumber(4)
  $9.Permissions get permissions => $_getN(3);
  @$pb.TagNumber(4)
  set permissions($9.Permissions v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPermissions() => $_has(3);
  @$pb.TagNumber(4)
  void clearPermissions() => clearField(4);
  @$pb.TagNumber(4)
  $9.Permissions ensurePermissions() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get tokenId => $_getSZ(4);
  @$pb.TagNumber(5)
  set tokenId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTokenId() => $_has(4);
  @$pb.TagNumber(5)
  void clearTokenId() => clearField(5);
}

class GenerateApiTokenResponse_ extends $pb.GeneratedMessage {
  factory GenerateApiTokenResponse_({
    $core.String? apiKey,
    $core.String? refreshToken,
    $core.String? endpoint,
    $fixnum.Int64? validUntil,
  }) {
    final $result = create();
    if (apiKey != null) {
      $result.apiKey = apiKey;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (endpoint != null) {
      $result.endpoint = endpoint;
    }
    if (validUntil != null) {
      $result.validUntil = validUntil;
    }
    return $result;
  }
  GenerateApiTokenResponse_._() : super();
  factory GenerateApiTokenResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateApiTokenResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_GenerateApiTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiKey')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..aOS(3, _omitFieldNames ? '' : 'endpoint')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'validUntil', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateApiTokenResponse_ clone() => GenerateApiTokenResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateApiTokenResponse_ copyWith(void Function(GenerateApiTokenResponse_) updates) => super.copyWith((message) => updates(message as GenerateApiTokenResponse_)) as GenerateApiTokenResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenResponse_ create() => GenerateApiTokenResponse_._();
  GenerateApiTokenResponse_ createEmptyInstance() => create();
  static $pb.PbList<GenerateApiTokenResponse_> createRepeated() => $pb.PbList<GenerateApiTokenResponse_>();
  @$core.pragma('dart2js:noInline')
  static GenerateApiTokenResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateApiTokenResponse_>(create);
  static GenerateApiTokenResponse_? _defaultInstance;

  /// the api key used for authentication against Momento backend
  @$pb.TagNumber(1)
  $core.String get apiKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiKey() => clearField(1);

  /// the token that will allow the api token to be refreshed, which will
  /// give you back a new refresh and api token
  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  /// the Momento endpoint that this token is allowed to make requests against
  @$pb.TagNumber(3)
  $core.String get endpoint => $_getSZ(2);
  @$pb.TagNumber(3)
  set endpoint($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndpoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpoint() => clearField(3);

  /// epoch seconds when the api token expires
  @$pb.TagNumber(4)
  $fixnum.Int64 get validUntil => $_getI64(3);
  @$pb.TagNumber(4)
  set validUntil($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidUntil() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidUntil() => clearField(4);
}

class RefreshApiTokenRequest_ extends $pb.GeneratedMessage {
  factory RefreshApiTokenRequest_({
    $core.String? apiKey,
    $core.String? refreshToken,
  }) {
    final $result = create();
    if (apiKey != null) {
      $result.apiKey = apiKey;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    return $result;
  }
  RefreshApiTokenRequest_._() : super();
  factory RefreshApiTokenRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshApiTokenRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_RefreshApiTokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiKey')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshApiTokenRequest_ clone() => RefreshApiTokenRequest_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshApiTokenRequest_ copyWith(void Function(RefreshApiTokenRequest_) updates) => super.copyWith((message) => updates(message as RefreshApiTokenRequest_)) as RefreshApiTokenRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshApiTokenRequest_ create() => RefreshApiTokenRequest_._();
  RefreshApiTokenRequest_ createEmptyInstance() => create();
  static $pb.PbList<RefreshApiTokenRequest_> createRepeated() => $pb.PbList<RefreshApiTokenRequest_>();
  @$core.pragma('dart2js:noInline')
  static RefreshApiTokenRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshApiTokenRequest_>(create);
  static RefreshApiTokenRequest_? _defaultInstance;

  /// the existing api token to be refreshed
  @$pb.TagNumber(1)
  $core.String get apiKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiKey() => clearField(1);

  /// the refresh token that was generated with that api token
  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
}

class RefreshApiTokenResponse_ extends $pb.GeneratedMessage {
  factory RefreshApiTokenResponse_({
    $core.String? apiKey,
    $core.String? refreshToken,
    $core.String? endpoint,
    $fixnum.Int64? validUntil,
  }) {
    final $result = create();
    if (apiKey != null) {
      $result.apiKey = apiKey;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (endpoint != null) {
      $result.endpoint = endpoint;
    }
    if (validUntil != null) {
      $result.validUntil = validUntil;
    }
    return $result;
  }
  RefreshApiTokenResponse_._() : super();
  factory RefreshApiTokenResponse_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshApiTokenResponse_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : '_RefreshApiTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiKey')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..aOS(3, _omitFieldNames ? '' : 'endpoint')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'validUntil', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshApiTokenResponse_ clone() => RefreshApiTokenResponse_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshApiTokenResponse_ copyWith(void Function(RefreshApiTokenResponse_) updates) => super.copyWith((message) => updates(message as RefreshApiTokenResponse_)) as RefreshApiTokenResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshApiTokenResponse_ create() => RefreshApiTokenResponse_._();
  RefreshApiTokenResponse_ createEmptyInstance() => create();
  static $pb.PbList<RefreshApiTokenResponse_> createRepeated() => $pb.PbList<RefreshApiTokenResponse_>();
  @$core.pragma('dart2js:noInline')
  static RefreshApiTokenResponse_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshApiTokenResponse_>(create);
  static RefreshApiTokenResponse_? _defaultInstance;

  /// the new api key used for authentication against Momento backend
  @$pb.TagNumber(1)
  $core.String get apiKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiKey() => clearField(1);

  /// the token that will allow the api token to be refreshed, which will
  /// give you back a new refresh and api token
  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  /// the Momento endpoint that this token is allowed to make requests against
  @$pb.TagNumber(3)
  $core.String get endpoint => $_getSZ(2);
  @$pb.TagNumber(3)
  set endpoint($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndpoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpoint() => clearField(3);

  /// epoch seconds when the api token expires
  @$pb.TagNumber(4)
  $fixnum.Int64 get validUntil => $_getI64(3);
  @$pb.TagNumber(4)
  set validUntil($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidUntil() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidUntil() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
