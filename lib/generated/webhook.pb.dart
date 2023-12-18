//
//  Generated code. Do not modify.
//  source: webhook.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WebhookId_ extends $pb.GeneratedMessage {
  factory WebhookId_({
    $core.String? cacheName,
    $core.String? webhookName,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (webhookName != null) {
      $result.webhookName = webhookName;
    }
    return $result;
  }
  WebhookId_._() : super();
  factory WebhookId_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebhookId_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_WebhookId',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'webhookName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebhookId_ clone() => WebhookId_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebhookId_ copyWith(void Function(WebhookId_) updates) =>
      super.copyWith((message) => updates(message as WebhookId_)) as WebhookId_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebhookId_ create() => WebhookId_._();
  WebhookId_ createEmptyInstance() => create();
  static $pb.PbList<WebhookId_> createRepeated() => $pb.PbList<WebhookId_>();
  @$core.pragma('dart2js:noInline')
  static WebhookId_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebhookId_>(create);
  static WebhookId_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  /// This is limited to 128 chars.
  @$pb.TagNumber(2)
  $core.String get webhookName => $_getSZ(1);
  @$pb.TagNumber(2)
  set webhookName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWebhookName() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebhookName() => clearField(2);
}

class Webhook_ extends $pb.GeneratedMessage {
  factory Webhook_({
    WebhookId_? webhookId,
    $core.String? topicName,
    WebhookDestination_? destination,
  }) {
    final $result = create();
    if (webhookId != null) {
      $result.webhookId = webhookId;
    }
    if (topicName != null) {
      $result.topicName = topicName;
    }
    if (destination != null) {
      $result.destination = destination;
    }
    return $result;
  }
  Webhook_._() : super();
  factory Webhook_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Webhook_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Webhook',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOM<WebhookId_>(1, _omitFieldNames ? '' : 'webhookId',
        subBuilder: WebhookId_.create)
    ..aOS(2, _omitFieldNames ? '' : 'topicName')
    ..aOM<WebhookDestination_>(3, _omitFieldNames ? '' : 'destination',
        subBuilder: WebhookDestination_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Webhook_ clone() => Webhook_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Webhook_ copyWith(void Function(Webhook_) updates) =>
      super.copyWith((message) => updates(message as Webhook_)) as Webhook_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Webhook_ create() => Webhook_._();
  Webhook_ createEmptyInstance() => create();
  static $pb.PbList<Webhook_> createRepeated() => $pb.PbList<Webhook_>();
  @$core.pragma('dart2js:noInline')
  static Webhook_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Webhook_>(create);
  static Webhook_? _defaultInstance;

  @$pb.TagNumber(1)
  WebhookId_ get webhookId => $_getN(0);
  @$pb.TagNumber(1)
  set webhookId(WebhookId_ v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWebhookId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWebhookId() => clearField(1);
  @$pb.TagNumber(1)
  WebhookId_ ensureWebhookId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get topicName => $_getSZ(1);
  @$pb.TagNumber(2)
  set topicName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopicName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicName() => clearField(2);

  @$pb.TagNumber(3)
  WebhookDestination_ get destination => $_getN(2);
  @$pb.TagNumber(3)
  set destination(WebhookDestination_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDestination() => $_has(2);
  @$pb.TagNumber(3)
  void clearDestination() => clearField(3);
  @$pb.TagNumber(3)
  WebhookDestination_ ensureDestination() => $_ensure(2);
}

class PutWebhookRequest_ extends $pb.GeneratedMessage {
  factory PutWebhookRequest_({
    Webhook_? webhook,
  }) {
    final $result = create();
    if (webhook != null) {
      $result.webhook = webhook;
    }
    return $result;
  }
  PutWebhookRequest_._() : super();
  factory PutWebhookRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PutWebhookRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_PutWebhookRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOM<Webhook_>(1, _omitFieldNames ? '' : 'webhook',
        subBuilder: Webhook_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PutWebhookRequest_ clone() => PutWebhookRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PutWebhookRequest_ copyWith(void Function(PutWebhookRequest_) updates) =>
      super.copyWith((message) => updates(message as PutWebhookRequest_))
          as PutWebhookRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutWebhookRequest_ create() => PutWebhookRequest_._();
  PutWebhookRequest_ createEmptyInstance() => create();
  static $pb.PbList<PutWebhookRequest_> createRepeated() =>
      $pb.PbList<PutWebhookRequest_>();
  @$core.pragma('dart2js:noInline')
  static PutWebhookRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutWebhookRequest_>(create);
  static PutWebhookRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  Webhook_ get webhook => $_getN(0);
  @$pb.TagNumber(1)
  set webhook(Webhook_ v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWebhook() => $_has(0);
  @$pb.TagNumber(1)
  void clearWebhook() => clearField(1);
  @$pb.TagNumber(1)
  Webhook_ ensureWebhook() => $_ensure(0);
}

class PutWebhookResponse_ extends $pb.GeneratedMessage {
  factory PutWebhookResponse_({
    $core.String? secretString,
  }) {
    final $result = create();
    if (secretString != null) {
      $result.secretString = secretString;
    }
    return $result;
  }
  PutWebhookResponse_._() : super();
  factory PutWebhookResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PutWebhookResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_PutWebhookResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secretString')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PutWebhookResponse_ clone() => PutWebhookResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PutWebhookResponse_ copyWith(void Function(PutWebhookResponse_) updates) =>
      super.copyWith((message) => updates(message as PutWebhookResponse_))
          as PutWebhookResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutWebhookResponse_ create() => PutWebhookResponse_._();
  PutWebhookResponse_ createEmptyInstance() => create();
  static $pb.PbList<PutWebhookResponse_> createRepeated() =>
      $pb.PbList<PutWebhookResponse_>();
  @$core.pragma('dart2js:noInline')
  static PutWebhookResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutWebhookResponse_>(create);
  static PutWebhookResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secretString => $_getSZ(0);
  @$pb.TagNumber(1)
  set secretString($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSecretString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretString() => clearField(1);
}

class DeleteWebhookRequest_ extends $pb.GeneratedMessage {
  factory DeleteWebhookRequest_({
    WebhookId_? webhookId,
  }) {
    final $result = create();
    if (webhookId != null) {
      $result.webhookId = webhookId;
    }
    return $result;
  }
  DeleteWebhookRequest_._() : super();
  factory DeleteWebhookRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteWebhookRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteWebhookRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOM<WebhookId_>(1, _omitFieldNames ? '' : 'webhookId',
        subBuilder: WebhookId_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteWebhookRequest_ clone() =>
      DeleteWebhookRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteWebhookRequest_ copyWith(
          void Function(DeleteWebhookRequest_) updates) =>
      super.copyWith((message) => updates(message as DeleteWebhookRequest_))
          as DeleteWebhookRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteWebhookRequest_ create() => DeleteWebhookRequest_._();
  DeleteWebhookRequest_ createEmptyInstance() => create();
  static $pb.PbList<DeleteWebhookRequest_> createRepeated() =>
      $pb.PbList<DeleteWebhookRequest_>();
  @$core.pragma('dart2js:noInline')
  static DeleteWebhookRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteWebhookRequest_>(create);
  static DeleteWebhookRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  WebhookId_ get webhookId => $_getN(0);
  @$pb.TagNumber(1)
  set webhookId(WebhookId_ v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWebhookId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWebhookId() => clearField(1);
  @$pb.TagNumber(1)
  WebhookId_ ensureWebhookId() => $_ensure(0);
}

class DeleteWebhookResponse_ extends $pb.GeneratedMessage {
  factory DeleteWebhookResponse_() => create();
  DeleteWebhookResponse_._() : super();
  factory DeleteWebhookResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteWebhookResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteWebhookResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteWebhookResponse_ clone() =>
      DeleteWebhookResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteWebhookResponse_ copyWith(
          void Function(DeleteWebhookResponse_) updates) =>
      super.copyWith((message) => updates(message as DeleteWebhookResponse_))
          as DeleteWebhookResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteWebhookResponse_ create() => DeleteWebhookResponse_._();
  DeleteWebhookResponse_ createEmptyInstance() => create();
  static $pb.PbList<DeleteWebhookResponse_> createRepeated() =>
      $pb.PbList<DeleteWebhookResponse_>();
  @$core.pragma('dart2js:noInline')
  static DeleteWebhookResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteWebhookResponse_>(create);
  static DeleteWebhookResponse_? _defaultInstance;
}

class ListWebhookRequest_ extends $pb.GeneratedMessage {
  factory ListWebhookRequest_({
    $core.String? cacheName,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    return $result;
  }
  ListWebhookRequest_._() : super();
  factory ListWebhookRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListWebhookRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListWebhookRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListWebhookRequest_ clone() => ListWebhookRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListWebhookRequest_ copyWith(void Function(ListWebhookRequest_) updates) =>
      super.copyWith((message) => updates(message as ListWebhookRequest_))
          as ListWebhookRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWebhookRequest_ create() => ListWebhookRequest_._();
  ListWebhookRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListWebhookRequest_> createRepeated() =>
      $pb.PbList<ListWebhookRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListWebhookRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWebhookRequest_>(create);
  static ListWebhookRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);
}

class ListWebhooksResponse_ extends $pb.GeneratedMessage {
  factory ListWebhooksResponse_({
    $core.Iterable<Webhook_>? webhook,
  }) {
    final $result = create();
    if (webhook != null) {
      $result.webhook.addAll(webhook);
    }
    return $result;
  }
  ListWebhooksResponse_._() : super();
  factory ListWebhooksResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListWebhooksResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListWebhooksResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..pc<Webhook_>(1, _omitFieldNames ? '' : 'webhook', $pb.PbFieldType.PM,
        subBuilder: Webhook_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListWebhooksResponse_ clone() =>
      ListWebhooksResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListWebhooksResponse_ copyWith(
          void Function(ListWebhooksResponse_) updates) =>
      super.copyWith((message) => updates(message as ListWebhooksResponse_))
          as ListWebhooksResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWebhooksResponse_ create() => ListWebhooksResponse_._();
  ListWebhooksResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListWebhooksResponse_> createRepeated() =>
      $pb.PbList<ListWebhooksResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListWebhooksResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWebhooksResponse_>(create);
  static ListWebhooksResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Webhook_> get webhook => $_getList(0);
}

class GetWebhookSecretRequest_ extends $pb.GeneratedMessage {
  factory GetWebhookSecretRequest_({
    $core.String? cacheName,
    $core.String? webhookName,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (webhookName != null) {
      $result.webhookName = webhookName;
    }
    return $result;
  }
  GetWebhookSecretRequest_._() : super();
  factory GetWebhookSecretRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetWebhookSecretRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetWebhookSecretRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'webhookName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetWebhookSecretRequest_ clone() =>
      GetWebhookSecretRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetWebhookSecretRequest_ copyWith(
          void Function(GetWebhookSecretRequest_) updates) =>
      super.copyWith((message) => updates(message as GetWebhookSecretRequest_))
          as GetWebhookSecretRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWebhookSecretRequest_ create() => GetWebhookSecretRequest_._();
  GetWebhookSecretRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetWebhookSecretRequest_> createRepeated() =>
      $pb.PbList<GetWebhookSecretRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetWebhookSecretRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWebhookSecretRequest_>(create);
  static GetWebhookSecretRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get webhookName => $_getSZ(1);
  @$pb.TagNumber(2)
  set webhookName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWebhookName() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebhookName() => clearField(2);
}

class GetWebhookSecretResponse_ extends $pb.GeneratedMessage {
  factory GetWebhookSecretResponse_({
    $core.String? cacheName,
    $core.String? webhookName,
    $core.String? secretString,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (webhookName != null) {
      $result.webhookName = webhookName;
    }
    if (secretString != null) {
      $result.secretString = secretString;
    }
    return $result;
  }
  GetWebhookSecretResponse_._() : super();
  factory GetWebhookSecretResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetWebhookSecretResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetWebhookSecretResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'webhookName')
    ..aOS(3, _omitFieldNames ? '' : 'secretString')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetWebhookSecretResponse_ clone() =>
      GetWebhookSecretResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetWebhookSecretResponse_ copyWith(
          void Function(GetWebhookSecretResponse_) updates) =>
      super.copyWith((message) => updates(message as GetWebhookSecretResponse_))
          as GetWebhookSecretResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWebhookSecretResponse_ create() => GetWebhookSecretResponse_._();
  GetWebhookSecretResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetWebhookSecretResponse_> createRepeated() =>
      $pb.PbList<GetWebhookSecretResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetWebhookSecretResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWebhookSecretResponse_>(create);
  static GetWebhookSecretResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get webhookName => $_getSZ(1);
  @$pb.TagNumber(2)
  set webhookName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWebhookName() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebhookName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get secretString => $_getSZ(2);
  @$pb.TagNumber(3)
  set secretString($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSecretString() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecretString() => clearField(3);
}

enum WebhookDestination__Kind { postUrl, notSet }

class WebhookDestination_ extends $pb.GeneratedMessage {
  factory WebhookDestination_({
    $core.String? postUrl,
  }) {
    final $result = create();
    if (postUrl != null) {
      $result.postUrl = postUrl;
    }
    return $result;
  }
  WebhookDestination_._() : super();
  factory WebhookDestination_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebhookDestination_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WebhookDestination__Kind>
      _WebhookDestination__KindByTag = {
    1: WebhookDestination__Kind.postUrl,
    0: WebhookDestination__Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_WebhookDestination',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'postUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebhookDestination_ clone() => WebhookDestination_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebhookDestination_ copyWith(void Function(WebhookDestination_) updates) =>
      super.copyWith((message) => updates(message as WebhookDestination_))
          as WebhookDestination_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebhookDestination_ create() => WebhookDestination_._();
  WebhookDestination_ createEmptyInstance() => create();
  static $pb.PbList<WebhookDestination_> createRepeated() =>
      $pb.PbList<WebhookDestination_>();
  @$core.pragma('dart2js:noInline')
  static WebhookDestination_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebhookDestination_>(create);
  static WebhookDestination_? _defaultInstance;

  WebhookDestination__Kind whichKind() =>
      _WebhookDestination__KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get postUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set postUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostUrl() => clearField(1);
}

class RotateWebhookSecretRequest_ extends $pb.GeneratedMessage {
  factory RotateWebhookSecretRequest_({
    WebhookId_? webhookId,
  }) {
    final $result = create();
    if (webhookId != null) {
      $result.webhookId = webhookId;
    }
    return $result;
  }
  RotateWebhookSecretRequest_._() : super();
  factory RotateWebhookSecretRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RotateWebhookSecretRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_RotateWebhookSecretRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOM<WebhookId_>(1, _omitFieldNames ? '' : 'webhookId',
        subBuilder: WebhookId_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RotateWebhookSecretRequest_ clone() =>
      RotateWebhookSecretRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RotateWebhookSecretRequest_ copyWith(
          void Function(RotateWebhookSecretRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as RotateWebhookSecretRequest_))
          as RotateWebhookSecretRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RotateWebhookSecretRequest_ create() =>
      RotateWebhookSecretRequest_._();
  RotateWebhookSecretRequest_ createEmptyInstance() => create();
  static $pb.PbList<RotateWebhookSecretRequest_> createRepeated() =>
      $pb.PbList<RotateWebhookSecretRequest_>();
  @$core.pragma('dart2js:noInline')
  static RotateWebhookSecretRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RotateWebhookSecretRequest_>(create);
  static RotateWebhookSecretRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  WebhookId_ get webhookId => $_getN(0);
  @$pb.TagNumber(1)
  set webhookId(WebhookId_ v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWebhookId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWebhookId() => clearField(1);
  @$pb.TagNumber(1)
  WebhookId_ ensureWebhookId() => $_ensure(0);
}

class RotateWebhookSecretResponse_ extends $pb.GeneratedMessage {
  factory RotateWebhookSecretResponse_({
    $core.String? secretString,
  }) {
    final $result = create();
    if (secretString != null) {
      $result.secretString = secretString;
    }
    return $result;
  }
  RotateWebhookSecretResponse_._() : super();
  factory RotateWebhookSecretResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RotateWebhookSecretResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_RotateWebhookSecretResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'webhook'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secretString')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RotateWebhookSecretResponse_ clone() =>
      RotateWebhookSecretResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RotateWebhookSecretResponse_ copyWith(
          void Function(RotateWebhookSecretResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as RotateWebhookSecretResponse_))
          as RotateWebhookSecretResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RotateWebhookSecretResponse_ create() =>
      RotateWebhookSecretResponse_._();
  RotateWebhookSecretResponse_ createEmptyInstance() => create();
  static $pb.PbList<RotateWebhookSecretResponse_> createRepeated() =>
      $pb.PbList<RotateWebhookSecretResponse_>();
  @$core.pragma('dart2js:noInline')
  static RotateWebhookSecretResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RotateWebhookSecretResponse_>(create);
  static RotateWebhookSecretResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secretString => $_getSZ(0);
  @$pb.TagNumber(1)
  set secretString($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSecretString() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretString() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
