//
//  Generated code. Do not modify.
//  source: cachepubsub.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
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

/// A value to publish through a topic.
class PublishRequest_ extends $pb.GeneratedMessage {
  factory PublishRequest_({
    $core.String? cacheName,
    $core.String? topic,
    TopicValue_? value,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PublishRequest_._() : super();
  factory PublishRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PublishRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_PublishRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'topic')
    ..aOM<TopicValue_>(3, _omitFieldNames ? '' : 'value',
        subBuilder: TopicValue_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PublishRequest_ clone() => PublishRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PublishRequest_ copyWith(void Function(PublishRequest_) updates) =>
      super.copyWith((message) => updates(message as PublishRequest_))
          as PublishRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublishRequest_ create() => PublishRequest_._();
  PublishRequest_ createEmptyInstance() => create();
  static $pb.PbList<PublishRequest_> createRepeated() =>
      $pb.PbList<PublishRequest_>();
  @$core.pragma('dart2js:noInline')
  static PublishRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublishRequest_>(create);
  static PublishRequest_? _defaultInstance;

  /// Cache namespace for the topic to which you want to send the value.
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

  /// The literal topic name to which you want to send the value.
  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);

  /// The value you want to send to the topic. All current subscribers will receive
  /// this, should the whims of the Internet prove merciful.
  @$pb.TagNumber(3)
  TopicValue_ get value => $_getN(2);
  @$pb.TagNumber(3)
  set value(TopicValue_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  TopicValue_ ensureValue() => $_ensure(2);
}

/// A description of how you want to subscribe to a topic.
class SubscriptionRequest_ extends $pb.GeneratedMessage {
  factory SubscriptionRequest_({
    $core.String? cacheName,
    $core.String? topic,
    $fixnum.Int64? resumeAtTopicSequenceNumber,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (resumeAtTopicSequenceNumber != null) {
      $result.resumeAtTopicSequenceNumber = resumeAtTopicSequenceNumber;
    }
    return $result;
  }
  SubscriptionRequest_._() : super();
  factory SubscriptionRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubscriptionRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SubscriptionRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOS(2, _omitFieldNames ? '' : 'topic')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'resumeAtTopicSequenceNumber',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubscriptionRequest_ clone() =>
      SubscriptionRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubscriptionRequest_ copyWith(void Function(SubscriptionRequest_) updates) =>
      super.copyWith((message) => updates(message as SubscriptionRequest_))
          as SubscriptionRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriptionRequest_ create() => SubscriptionRequest_._();
  SubscriptionRequest_ createEmptyInstance() => create();
  static $pb.PbList<SubscriptionRequest_> createRepeated() =>
      $pb.PbList<SubscriptionRequest_>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscriptionRequest_>(create);
  static SubscriptionRequest_? _defaultInstance;

  /// Cache namespace for the topic to which you want to subscribe.
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

  /// The literal topic name to which you want to subscribe.
  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);

  ///  --> Providing this is not required. <--
  ///
  ///  If provided, attempt to reconnect to the topic and replay messages starting from
  ///  the provided sequence number. You may get a discontinuity if some (or all) of the
  ///  messages are not available.
  ///  If not provided (or 0), the subscription will begin with the latest messages.
  @$pb.TagNumber(3)
  $fixnum.Int64 get resumeAtTopicSequenceNumber => $_getI64(2);
  @$pb.TagNumber(3)
  set resumeAtTopicSequenceNumber($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasResumeAtTopicSequenceNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearResumeAtTopicSequenceNumber() => clearField(3);
}

enum SubscriptionItem__Kind { item, discontinuity, heartbeat, notSet }

/// Possible message kinds from a topic. They can be items when they're from you, or
/// other kinds when we have something we think you might need to know about the
/// subscription's status.
class SubscriptionItem_ extends $pb.GeneratedMessage {
  factory SubscriptionItem_({
    TopicItem_? item,
    Discontinuity_? discontinuity,
    Heartbeat_? heartbeat,
  }) {
    final $result = create();
    if (item != null) {
      $result.item = item;
    }
    if (discontinuity != null) {
      $result.discontinuity = discontinuity;
    }
    if (heartbeat != null) {
      $result.heartbeat = heartbeat;
    }
    return $result;
  }
  SubscriptionItem_._() : super();
  factory SubscriptionItem_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubscriptionItem_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SubscriptionItem__Kind>
      _SubscriptionItem__KindByTag = {
    1: SubscriptionItem__Kind.item,
    2: SubscriptionItem__Kind.discontinuity,
    3: SubscriptionItem__Kind.heartbeat,
    0: SubscriptionItem__Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SubscriptionItem',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<TopicItem_>(1, _omitFieldNames ? '' : 'item',
        subBuilder: TopicItem_.create)
    ..aOM<Discontinuity_>(2, _omitFieldNames ? '' : 'discontinuity',
        subBuilder: Discontinuity_.create)
    ..aOM<Heartbeat_>(3, _omitFieldNames ? '' : 'heartbeat',
        subBuilder: Heartbeat_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubscriptionItem_ clone() => SubscriptionItem_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubscriptionItem_ copyWith(void Function(SubscriptionItem_) updates) =>
      super.copyWith((message) => updates(message as SubscriptionItem_))
          as SubscriptionItem_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriptionItem_ create() => SubscriptionItem_._();
  SubscriptionItem_ createEmptyInstance() => create();
  static $pb.PbList<SubscriptionItem_> createRepeated() =>
      $pb.PbList<SubscriptionItem_>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionItem_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscriptionItem_>(create);
  static SubscriptionItem_? _defaultInstance;

  SubscriptionItem__Kind whichKind() =>
      _SubscriptionItem__KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  /// The subscription has yielded an item you previously published.
  @$pb.TagNumber(1)
  TopicItem_ get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(TopicItem_ v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  TopicItem_ ensureItem() => $_ensure(0);

  ///  Momento wants to let you know we detected some possible inconsistency at this
  ///  point in the subscription stream.
  ///
  ///  A lack of a discontinuity does not mean the subscription is guaranteed to be
  ///  strictly perfect, but the presence of a discontinuity is very likely to
  @$pb.TagNumber(2)
  Discontinuity_ get discontinuity => $_getN(1);
  @$pb.TagNumber(2)
  set discontinuity(Discontinuity_ v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDiscontinuity() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiscontinuity() => clearField(2);
  @$pb.TagNumber(2)
  Discontinuity_ ensureDiscontinuity() => $_ensure(1);

  /// The stream is still working, there's nothing to see here.
  @$pb.TagNumber(3)
  Heartbeat_ get heartbeat => $_getN(2);
  @$pb.TagNumber(3)
  set heartbeat(Heartbeat_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHeartbeat() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeartbeat() => clearField(3);
  @$pb.TagNumber(3)
  Heartbeat_ ensureHeartbeat() => $_ensure(2);
}

/// Your subscription has yielded an item you previously published. Here it is!
class TopicItem_ extends $pb.GeneratedMessage {
  factory TopicItem_({
    $fixnum.Int64? topicSequenceNumber,
    TopicValue_? value,
    $core.String? publisherId,
  }) {
    final $result = create();
    if (topicSequenceNumber != null) {
      $result.topicSequenceNumber = topicSequenceNumber;
    }
    if (value != null) {
      $result.value = value;
    }
    if (publisherId != null) {
      $result.publisherId = publisherId;
    }
    return $result;
  }
  TopicItem_._() : super();
  factory TopicItem_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicItem_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_TopicItem',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'topicSequenceNumber', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<TopicValue_>(2, _omitFieldNames ? '' : 'value',
        subBuilder: TopicValue_.create)
    ..aOS(3, _omitFieldNames ? '' : 'publisherId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicItem_ clone() => TopicItem_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicItem_ copyWith(void Function(TopicItem_) updates) =>
      super.copyWith((message) => updates(message as TopicItem_)) as TopicItem_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicItem_ create() => TopicItem_._();
  TopicItem_ createEmptyInstance() => create();
  static $pb.PbList<TopicItem_> createRepeated() => $pb.PbList<TopicItem_>();
  @$core.pragma('dart2js:noInline')
  static TopicItem_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicItem_>(create);
  static TopicItem_? _defaultInstance;

  /// Topic sequence numbers are **best-effort** and **informational**.
  /// They are not transactional.
  /// They exist:
  /// * to help reconnect to an existing topic while trying to avoid missing items.
  /// * to facilitate richer monitoring and logging.
  /// * to provide a best-effort awareness of stream contiguity, or lack thereof,
  ///   in case you need to know.
  /// You can safely ignore them if none of that matters to you!
  @$pb.TagNumber(1)
  $fixnum.Int64 get topicSequenceNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set topicSequenceNumber($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTopicSequenceNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicSequenceNumber() => clearField(1);

  /// The value you previously published to this topic.
  @$pb.TagNumber(2)
  TopicValue_ get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(TopicValue_ v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  TopicValue_ ensureValue() => $_ensure(1);

  /// Authenticated id from Publisher's disposable token
  @$pb.TagNumber(3)
  $core.String get publisherId => $_getSZ(2);
  @$pb.TagNumber(3)
  set publisherId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPublisherId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublisherId() => clearField(3);
}

enum TopicValue__Kind { text, binary, notSet }

/// A value in a topic - published, duplicated and received in a subscription.
class TopicValue_ extends $pb.GeneratedMessage {
  factory TopicValue_({
    $core.String? text,
    $core.List<$core.int>? binary,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (binary != null) {
      $result.binary = binary;
    }
    return $result;
  }
  TopicValue_._() : super();
  factory TopicValue_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicValue_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TopicValue__Kind> _TopicValue__KindByTag = {
    1: TopicValue__Kind.text,
    2: TopicValue__Kind.binary,
    0: TopicValue__Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_TopicValue',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'binary', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicValue_ clone() => TopicValue_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicValue_ copyWith(void Function(TopicValue_) updates) =>
      super.copyWith((message) => updates(message as TopicValue_))
          as TopicValue_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicValue_ create() => TopicValue_._();
  TopicValue_ createEmptyInstance() => create();
  static $pb.PbList<TopicValue_> createRepeated() => $pb.PbList<TopicValue_>();
  @$core.pragma('dart2js:noInline')
  static TopicValue_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicValue_>(create);
  static TopicValue_? _defaultInstance;

  TopicValue__Kind whichKind() => _TopicValue__KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get binary => $_getN(1);
  @$pb.TagNumber(2)
  set binary($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBinary() => $_has(1);
  @$pb.TagNumber(2)
  void clearBinary() => clearField(2);
}

/// A message from Momento when we know a subscription to have skipped some messages.
/// We don't terminate your subscription in that case, but just in case you care, we
/// do our best to let you know about it.
class Discontinuity_ extends $pb.GeneratedMessage {
  factory Discontinuity_({
    $fixnum.Int64? lastTopicSequence,
    $fixnum.Int64? newTopicSequence,
  }) {
    final $result = create();
    if (lastTopicSequence != null) {
      $result.lastTopicSequence = lastTopicSequence;
    }
    if (newTopicSequence != null) {
      $result.newTopicSequence = newTopicSequence;
    }
    return $result;
  }
  Discontinuity_._() : super();
  factory Discontinuity_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Discontinuity_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Discontinuity',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'lastTopicSequence', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'newTopicSequence', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Discontinuity_ clone() => Discontinuity_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Discontinuity_ copyWith(void Function(Discontinuity_) updates) =>
      super.copyWith((message) => updates(message as Discontinuity_))
          as Discontinuity_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Discontinuity_ create() => Discontinuity_._();
  Discontinuity_ createEmptyInstance() => create();
  static $pb.PbList<Discontinuity_> createRepeated() =>
      $pb.PbList<Discontinuity_>();
  @$core.pragma('dart2js:noInline')
  static Discontinuity_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Discontinuity_>(create);
  static Discontinuity_? _defaultInstance;

  /// The last topic value sequence number known to have been attempted (if known, 0 otherwise).
  @$pb.TagNumber(1)
  $fixnum.Int64 get lastTopicSequence => $_getI64(0);
  @$pb.TagNumber(1)
  set lastTopicSequence($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLastTopicSequence() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastTopicSequence() => clearField(1);

  /// The new topic sequence number after which TopicItems will ostensibly resume.
  @$pb.TagNumber(2)
  $fixnum.Int64 get newTopicSequence => $_getI64(1);
  @$pb.TagNumber(2)
  set newTopicSequence($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNewTopicSequence() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewTopicSequence() => clearField(2);
}

/// A message from Momento for when we want to reassure clients or frameworks that a
/// Subscription is still healthy.
/// These are synthetic meta-events and do not increase the topic sequence count.
/// Different subscribers may receive a different cadence of heartbeat, and no guarantee
/// is made about the cadence or even presence or absence of heartbeats in a stream.
/// They are a tool for helping ensure that socket timeouts and the like don't impact
/// subscriptions you may care about, but that aren't receiving a substantial publish rate.
class Heartbeat_ extends $pb.GeneratedMessage {
  factory Heartbeat_() => create();
  Heartbeat_._() : super();
  factory Heartbeat_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Heartbeat_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Heartbeat',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'cache_client.pubsub'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Heartbeat_ clone() => Heartbeat_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Heartbeat_ copyWith(void Function(Heartbeat_) updates) =>
      super.copyWith((message) => updates(message as Heartbeat_)) as Heartbeat_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Heartbeat_ create() => Heartbeat_._();
  Heartbeat_ createEmptyInstance() => create();
  static $pb.PbList<Heartbeat_> createRepeated() => $pb.PbList<Heartbeat_>();
  @$core.pragma('dart2js:noInline')
  static Heartbeat_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Heartbeat_>(create);
  static Heartbeat_? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
