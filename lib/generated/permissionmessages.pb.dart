//
//  Generated code. Do not modify.
//  source: permissionmessages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'permissionmessages.pbenum.dart';

export 'permissionmessages.pbenum.dart';

enum Permissions_Kind { superUser, explicit, notSet }

class Permissions extends $pb.GeneratedMessage {
  factory Permissions({
    SuperUserPermissions? superUser,
    ExplicitPermissions? explicit,
  }) {
    final $result = create();
    if (superUser != null) {
      $result.superUser = superUser;
    }
    if (explicit != null) {
      $result.explicit = explicit;
    }
    return $result;
  }
  Permissions._() : super();
  factory Permissions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Permissions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Permissions_Kind> _Permissions_KindByTag = {
    1: Permissions_Kind.superUser,
    2: Permissions_Kind.explicit,
    0: Permissions_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Permissions',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<SuperUserPermissions>(
        1, _omitFieldNames ? '' : 'superUser', $pb.PbFieldType.OE,
        defaultOrMaker: SuperUserPermissions.SuperUser,
        valueOf: SuperUserPermissions.valueOf,
        enumValues: SuperUserPermissions.values)
    ..aOM<ExplicitPermissions>(2, _omitFieldNames ? '' : 'explicit',
        subBuilder: ExplicitPermissions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Permissions clone() => Permissions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Permissions copyWith(void Function(Permissions) updates) =>
      super.copyWith((message) => updates(message as Permissions))
          as Permissions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Permissions create() => Permissions._();
  Permissions createEmptyInstance() => create();
  static $pb.PbList<Permissions> createRepeated() => $pb.PbList<Permissions>();
  @$core.pragma('dart2js:noInline')
  static Permissions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Permissions>(create);
  static Permissions? _defaultInstance;

  Permissions_Kind whichKind() => _Permissions_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SuperUserPermissions get superUser => $_getN(0);
  @$pb.TagNumber(1)
  set superUser(SuperUserPermissions v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuperUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuperUser() => clearField(1);

  @$pb.TagNumber(2)
  ExplicitPermissions get explicit => $_getN(1);
  @$pb.TagNumber(2)
  set explicit(ExplicitPermissions v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExplicit() => $_has(1);
  @$pb.TagNumber(2)
  void clearExplicit() => clearField(2);
  @$pb.TagNumber(2)
  ExplicitPermissions ensureExplicit() => $_ensure(1);
}

class ExplicitPermissions extends $pb.GeneratedMessage {
  factory ExplicitPermissions({
    $core.Iterable<PermissionsType>? permissions,
  }) {
    final $result = create();
    if (permissions != null) {
      $result.permissions.addAll(permissions);
    }
    return $result;
  }
  ExplicitPermissions._() : super();
  factory ExplicitPermissions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExplicitPermissions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExplicitPermissions',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..pc<PermissionsType>(
        1, _omitFieldNames ? '' : 'permissions', $pb.PbFieldType.PM,
        subBuilder: PermissionsType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExplicitPermissions clone() => ExplicitPermissions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExplicitPermissions copyWith(void Function(ExplicitPermissions) updates) =>
      super.copyWith((message) => updates(message as ExplicitPermissions))
          as ExplicitPermissions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExplicitPermissions create() => ExplicitPermissions._();
  ExplicitPermissions createEmptyInstance() => create();
  static $pb.PbList<ExplicitPermissions> createRepeated() =>
      $pb.PbList<ExplicitPermissions>();
  @$core.pragma('dart2js:noInline')
  static ExplicitPermissions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExplicitPermissions>(create);
  static ExplicitPermissions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PermissionsType> get permissions => $_getList(0);
}

class PermissionsType_All extends $pb.GeneratedMessage {
  factory PermissionsType_All() => create();
  PermissionsType_All._() : super();
  factory PermissionsType_All.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PermissionsType_All.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsType.All',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PermissionsType_All clone() => PermissionsType_All()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PermissionsType_All copyWith(void Function(PermissionsType_All) updates) =>
      super.copyWith((message) => updates(message as PermissionsType_All))
          as PermissionsType_All;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsType_All create() => PermissionsType_All._();
  PermissionsType_All createEmptyInstance() => create();
  static $pb.PbList<PermissionsType_All> createRepeated() =>
      $pb.PbList<PermissionsType_All>();
  @$core.pragma('dart2js:noInline')
  static PermissionsType_All getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsType_All>(create);
  static PermissionsType_All? _defaultInstance;
}

enum PermissionsType_CacheSelector_Kind { cacheName, notSet }

class PermissionsType_CacheSelector extends $pb.GeneratedMessage {
  factory PermissionsType_CacheSelector({
    $core.String? cacheName,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    return $result;
  }
  PermissionsType_CacheSelector._() : super();
  factory PermissionsType_CacheSelector.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PermissionsType_CacheSelector.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PermissionsType_CacheSelector_Kind>
      _PermissionsType_CacheSelector_KindByTag = {
    1: PermissionsType_CacheSelector_Kind.cacheName,
    0: PermissionsType_CacheSelector_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsType.CacheSelector',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PermissionsType_CacheSelector clone() =>
      PermissionsType_CacheSelector()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PermissionsType_CacheSelector copyWith(
          void Function(PermissionsType_CacheSelector) updates) =>
      super.copyWith(
              (message) => updates(message as PermissionsType_CacheSelector))
          as PermissionsType_CacheSelector;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsType_CacheSelector create() =>
      PermissionsType_CacheSelector._();
  PermissionsType_CacheSelector createEmptyInstance() => create();
  static $pb.PbList<PermissionsType_CacheSelector> createRepeated() =>
      $pb.PbList<PermissionsType_CacheSelector>();
  @$core.pragma('dart2js:noInline')
  static PermissionsType_CacheSelector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsType_CacheSelector>(create);
  static PermissionsType_CacheSelector? _defaultInstance;

  PermissionsType_CacheSelector_Kind whichKind() =>
      _PermissionsType_CacheSelector_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

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

enum PermissionsType_CacheItemSelector_Kind { key, keyPrefix, notSet }

class PermissionsType_CacheItemSelector extends $pb.GeneratedMessage {
  factory PermissionsType_CacheItemSelector({
    $core.List<$core.int>? key,
    $core.List<$core.int>? keyPrefix,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (keyPrefix != null) {
      $result.keyPrefix = keyPrefix;
    }
    return $result;
  }
  PermissionsType_CacheItemSelector._() : super();
  factory PermissionsType_CacheItemSelector.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PermissionsType_CacheItemSelector.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PermissionsType_CacheItemSelector_Kind>
      _PermissionsType_CacheItemSelector_KindByTag = {
    1: PermissionsType_CacheItemSelector_Kind.key,
    2: PermissionsType_CacheItemSelector_Kind.keyPrefix,
    0: PermissionsType_CacheItemSelector_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsType.CacheItemSelector',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'keyPrefix', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PermissionsType_CacheItemSelector clone() =>
      PermissionsType_CacheItemSelector()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PermissionsType_CacheItemSelector copyWith(
          void Function(PermissionsType_CacheItemSelector) updates) =>
      super.copyWith((message) =>
              updates(message as PermissionsType_CacheItemSelector))
          as PermissionsType_CacheItemSelector;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsType_CacheItemSelector create() =>
      PermissionsType_CacheItemSelector._();
  PermissionsType_CacheItemSelector createEmptyInstance() => create();
  static $pb.PbList<PermissionsType_CacheItemSelector> createRepeated() =>
      $pb.PbList<PermissionsType_CacheItemSelector>();
  @$core.pragma('dart2js:noInline')
  static PermissionsType_CacheItemSelector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsType_CacheItemSelector>(
          create);
  static PermissionsType_CacheItemSelector? _defaultInstance;

  PermissionsType_CacheItemSelector_Kind whichKind() =>
      _PermissionsType_CacheItemSelector_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get keyPrefix => $_getN(1);
  @$pb.TagNumber(2)
  set keyPrefix($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKeyPrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyPrefix() => clearField(2);
}

enum PermissionsType_CachePermissions_Cache { allCaches, cacheSelector, notSet }

enum PermissionsType_CachePermissions_CacheItem {
  allItems,
  itemSelector,
  notSet
}

class PermissionsType_CachePermissions extends $pb.GeneratedMessage {
  factory PermissionsType_CachePermissions({
    CacheRole? role,
    PermissionsType_All? allCaches,
    PermissionsType_CacheSelector? cacheSelector,
    PermissionsType_All? allItems,
    PermissionsType_CacheItemSelector? itemSelector,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    if (allCaches != null) {
      $result.allCaches = allCaches;
    }
    if (cacheSelector != null) {
      $result.cacheSelector = cacheSelector;
    }
    if (allItems != null) {
      $result.allItems = allItems;
    }
    if (itemSelector != null) {
      $result.itemSelector = itemSelector;
    }
    return $result;
  }
  PermissionsType_CachePermissions._() : super();
  factory PermissionsType_CachePermissions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PermissionsType_CachePermissions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PermissionsType_CachePermissions_Cache>
      _PermissionsType_CachePermissions_CacheByTag = {
    2: PermissionsType_CachePermissions_Cache.allCaches,
    3: PermissionsType_CachePermissions_Cache.cacheSelector,
    0: PermissionsType_CachePermissions_Cache.notSet
  };
  static const $core.Map<$core.int, PermissionsType_CachePermissions_CacheItem>
      _PermissionsType_CachePermissions_CacheItemByTag = {
    4: PermissionsType_CachePermissions_CacheItem.allItems,
    5: PermissionsType_CachePermissions_CacheItem.itemSelector,
    0: PermissionsType_CachePermissions_CacheItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsType.CachePermissions',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..e<CacheRole>(1, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE,
        defaultOrMaker: CacheRole.CachePermitNone,
        valueOf: CacheRole.valueOf,
        enumValues: CacheRole.values)
    ..aOM<PermissionsType_All>(2, _omitFieldNames ? '' : 'allCaches',
        subBuilder: PermissionsType_All.create)
    ..aOM<PermissionsType_CacheSelector>(
        3, _omitFieldNames ? '' : 'cacheSelector',
        subBuilder: PermissionsType_CacheSelector.create)
    ..aOM<PermissionsType_All>(4, _omitFieldNames ? '' : 'allItems',
        subBuilder: PermissionsType_All.create)
    ..aOM<PermissionsType_CacheItemSelector>(
        5, _omitFieldNames ? '' : 'itemSelector',
        subBuilder: PermissionsType_CacheItemSelector.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PermissionsType_CachePermissions clone() =>
      PermissionsType_CachePermissions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PermissionsType_CachePermissions copyWith(
          void Function(PermissionsType_CachePermissions) updates) =>
      super.copyWith(
              (message) => updates(message as PermissionsType_CachePermissions))
          as PermissionsType_CachePermissions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsType_CachePermissions create() =>
      PermissionsType_CachePermissions._();
  PermissionsType_CachePermissions createEmptyInstance() => create();
  static $pb.PbList<PermissionsType_CachePermissions> createRepeated() =>
      $pb.PbList<PermissionsType_CachePermissions>();
  @$core.pragma('dart2js:noInline')
  static PermissionsType_CachePermissions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsType_CachePermissions>(
          create);
  static PermissionsType_CachePermissions? _defaultInstance;

  PermissionsType_CachePermissions_Cache whichCache() =>
      _PermissionsType_CachePermissions_CacheByTag[$_whichOneof(0)]!;
  void clearCache() => clearField($_whichOneof(0));

  PermissionsType_CachePermissions_CacheItem whichCacheItem() =>
      _PermissionsType_CachePermissions_CacheItemByTag[$_whichOneof(1)]!;
  void clearCacheItem() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  CacheRole get role => $_getN(0);
  @$pb.TagNumber(1)
  set role(CacheRole v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  @$pb.TagNumber(2)
  PermissionsType_All get allCaches => $_getN(1);
  @$pb.TagNumber(2)
  set allCaches(PermissionsType_All v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAllCaches() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllCaches() => clearField(2);
  @$pb.TagNumber(2)
  PermissionsType_All ensureAllCaches() => $_ensure(1);

  @$pb.TagNumber(3)
  PermissionsType_CacheSelector get cacheSelector => $_getN(2);
  @$pb.TagNumber(3)
  set cacheSelector(PermissionsType_CacheSelector v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCacheSelector() => $_has(2);
  @$pb.TagNumber(3)
  void clearCacheSelector() => clearField(3);
  @$pb.TagNumber(3)
  PermissionsType_CacheSelector ensureCacheSelector() => $_ensure(2);

  @$pb.TagNumber(4)
  PermissionsType_All get allItems => $_getN(3);
  @$pb.TagNumber(4)
  set allItems(PermissionsType_All v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAllItems() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllItems() => clearField(4);
  @$pb.TagNumber(4)
  PermissionsType_All ensureAllItems() => $_ensure(3);

  @$pb.TagNumber(5)
  PermissionsType_CacheItemSelector get itemSelector => $_getN(4);
  @$pb.TagNumber(5)
  set itemSelector(PermissionsType_CacheItemSelector v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasItemSelector() => $_has(4);
  @$pb.TagNumber(5)
  void clearItemSelector() => clearField(5);
  @$pb.TagNumber(5)
  PermissionsType_CacheItemSelector ensureItemSelector() => $_ensure(4);
}

enum PermissionsType_TopicSelector_Kind { topicName, topicNamePrefix, notSet }

class PermissionsType_TopicSelector extends $pb.GeneratedMessage {
  factory PermissionsType_TopicSelector({
    $core.String? topicName,
    $core.String? topicNamePrefix,
  }) {
    final $result = create();
    if (topicName != null) {
      $result.topicName = topicName;
    }
    if (topicNamePrefix != null) {
      $result.topicNamePrefix = topicNamePrefix;
    }
    return $result;
  }
  PermissionsType_TopicSelector._() : super();
  factory PermissionsType_TopicSelector.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PermissionsType_TopicSelector.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PermissionsType_TopicSelector_Kind>
      _PermissionsType_TopicSelector_KindByTag = {
    1: PermissionsType_TopicSelector_Kind.topicName,
    2: PermissionsType_TopicSelector_Kind.topicNamePrefix,
    0: PermissionsType_TopicSelector_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsType.TopicSelector',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'topicName')
    ..aOS(2, _omitFieldNames ? '' : 'topicNamePrefix')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PermissionsType_TopicSelector clone() =>
      PermissionsType_TopicSelector()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PermissionsType_TopicSelector copyWith(
          void Function(PermissionsType_TopicSelector) updates) =>
      super.copyWith(
              (message) => updates(message as PermissionsType_TopicSelector))
          as PermissionsType_TopicSelector;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsType_TopicSelector create() =>
      PermissionsType_TopicSelector._();
  PermissionsType_TopicSelector createEmptyInstance() => create();
  static $pb.PbList<PermissionsType_TopicSelector> createRepeated() =>
      $pb.PbList<PermissionsType_TopicSelector>();
  @$core.pragma('dart2js:noInline')
  static PermissionsType_TopicSelector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsType_TopicSelector>(create);
  static PermissionsType_TopicSelector? _defaultInstance;

  PermissionsType_TopicSelector_Kind whichKind() =>
      _PermissionsType_TopicSelector_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get topicName => $_getSZ(0);
  @$pb.TagNumber(1)
  set topicName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTopicName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topicNamePrefix => $_getSZ(1);
  @$pb.TagNumber(2)
  set topicNamePrefix($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopicNamePrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicNamePrefix() => clearField(2);
}

enum PermissionsType_TopicPermissions_Cache { allCaches, cacheSelector, notSet }

enum PermissionsType_TopicPermissions_Topic { allTopics, topicSelector, notSet }

class PermissionsType_TopicPermissions extends $pb.GeneratedMessage {
  factory PermissionsType_TopicPermissions({
    TopicRole? role,
    PermissionsType_All? allCaches,
    PermissionsType_CacheSelector? cacheSelector,
    PermissionsType_All? allTopics,
    PermissionsType_TopicSelector? topicSelector,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    if (allCaches != null) {
      $result.allCaches = allCaches;
    }
    if (cacheSelector != null) {
      $result.cacheSelector = cacheSelector;
    }
    if (allTopics != null) {
      $result.allTopics = allTopics;
    }
    if (topicSelector != null) {
      $result.topicSelector = topicSelector;
    }
    return $result;
  }
  PermissionsType_TopicPermissions._() : super();
  factory PermissionsType_TopicPermissions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PermissionsType_TopicPermissions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PermissionsType_TopicPermissions_Cache>
      _PermissionsType_TopicPermissions_CacheByTag = {
    2: PermissionsType_TopicPermissions_Cache.allCaches,
    3: PermissionsType_TopicPermissions_Cache.cacheSelector,
    0: PermissionsType_TopicPermissions_Cache.notSet
  };
  static const $core.Map<$core.int, PermissionsType_TopicPermissions_Topic>
      _PermissionsType_TopicPermissions_TopicByTag = {
    4: PermissionsType_TopicPermissions_Topic.allTopics,
    5: PermissionsType_TopicPermissions_Topic.topicSelector,
    0: PermissionsType_TopicPermissions_Topic.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsType.TopicPermissions',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..e<TopicRole>(1, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE,
        defaultOrMaker: TopicRole.TopicPermitNone,
        valueOf: TopicRole.valueOf,
        enumValues: TopicRole.values)
    ..aOM<PermissionsType_All>(2, _omitFieldNames ? '' : 'allCaches',
        subBuilder: PermissionsType_All.create)
    ..aOM<PermissionsType_CacheSelector>(
        3, _omitFieldNames ? '' : 'cacheSelector',
        subBuilder: PermissionsType_CacheSelector.create)
    ..aOM<PermissionsType_All>(4, _omitFieldNames ? '' : 'allTopics',
        subBuilder: PermissionsType_All.create)
    ..aOM<PermissionsType_TopicSelector>(
        5, _omitFieldNames ? '' : 'topicSelector',
        subBuilder: PermissionsType_TopicSelector.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PermissionsType_TopicPermissions clone() =>
      PermissionsType_TopicPermissions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PermissionsType_TopicPermissions copyWith(
          void Function(PermissionsType_TopicPermissions) updates) =>
      super.copyWith(
              (message) => updates(message as PermissionsType_TopicPermissions))
          as PermissionsType_TopicPermissions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsType_TopicPermissions create() =>
      PermissionsType_TopicPermissions._();
  PermissionsType_TopicPermissions createEmptyInstance() => create();
  static $pb.PbList<PermissionsType_TopicPermissions> createRepeated() =>
      $pb.PbList<PermissionsType_TopicPermissions>();
  @$core.pragma('dart2js:noInline')
  static PermissionsType_TopicPermissions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsType_TopicPermissions>(
          create);
  static PermissionsType_TopicPermissions? _defaultInstance;

  PermissionsType_TopicPermissions_Cache whichCache() =>
      _PermissionsType_TopicPermissions_CacheByTag[$_whichOneof(0)]!;
  void clearCache() => clearField($_whichOneof(0));

  PermissionsType_TopicPermissions_Topic whichTopic() =>
      _PermissionsType_TopicPermissions_TopicByTag[$_whichOneof(1)]!;
  void clearTopic() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  TopicRole get role => $_getN(0);
  @$pb.TagNumber(1)
  set role(TopicRole v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  @$pb.TagNumber(2)
  PermissionsType_All get allCaches => $_getN(1);
  @$pb.TagNumber(2)
  set allCaches(PermissionsType_All v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAllCaches() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllCaches() => clearField(2);
  @$pb.TagNumber(2)
  PermissionsType_All ensureAllCaches() => $_ensure(1);

  @$pb.TagNumber(3)
  PermissionsType_CacheSelector get cacheSelector => $_getN(2);
  @$pb.TagNumber(3)
  set cacheSelector(PermissionsType_CacheSelector v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCacheSelector() => $_has(2);
  @$pb.TagNumber(3)
  void clearCacheSelector() => clearField(3);
  @$pb.TagNumber(3)
  PermissionsType_CacheSelector ensureCacheSelector() => $_ensure(2);

  @$pb.TagNumber(4)
  PermissionsType_All get allTopics => $_getN(3);
  @$pb.TagNumber(4)
  set allTopics(PermissionsType_All v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAllTopics() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllTopics() => clearField(4);
  @$pb.TagNumber(4)
  PermissionsType_All ensureAllTopics() => $_ensure(3);

  @$pb.TagNumber(5)
  PermissionsType_TopicSelector get topicSelector => $_getN(4);
  @$pb.TagNumber(5)
  set topicSelector(PermissionsType_TopicSelector v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTopicSelector() => $_has(4);
  @$pb.TagNumber(5)
  void clearTopicSelector() => clearField(5);
  @$pb.TagNumber(5)
  PermissionsType_TopicSelector ensureTopicSelector() => $_ensure(4);
}

enum PermissionsType_Kind { cachePermissions, topicPermissions, notSet }

class PermissionsType extends $pb.GeneratedMessage {
  factory PermissionsType({
    PermissionsType_CachePermissions? cachePermissions,
    PermissionsType_TopicPermissions? topicPermissions,
  }) {
    final $result = create();
    if (cachePermissions != null) {
      $result.cachePermissions = cachePermissions;
    }
    if (topicPermissions != null) {
      $result.topicPermissions = topicPermissions;
    }
    return $result;
  }
  PermissionsType._() : super();
  factory PermissionsType.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PermissionsType.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PermissionsType_Kind>
      _PermissionsType_KindByTag = {
    1: PermissionsType_Kind.cachePermissions,
    2: PermissionsType_Kind.topicPermissions,
    0: PermissionsType_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PermissionsType',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'permission_messages'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PermissionsType_CachePermissions>(
        1, _omitFieldNames ? '' : 'cachePermissions',
        subBuilder: PermissionsType_CachePermissions.create)
    ..aOM<PermissionsType_TopicPermissions>(
        2, _omitFieldNames ? '' : 'topicPermissions',
        subBuilder: PermissionsType_TopicPermissions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PermissionsType clone() => PermissionsType()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PermissionsType copyWith(void Function(PermissionsType) updates) =>
      super.copyWith((message) => updates(message as PermissionsType))
          as PermissionsType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PermissionsType create() => PermissionsType._();
  PermissionsType createEmptyInstance() => create();
  static $pb.PbList<PermissionsType> createRepeated() =>
      $pb.PbList<PermissionsType>();
  @$core.pragma('dart2js:noInline')
  static PermissionsType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PermissionsType>(create);
  static PermissionsType? _defaultInstance;

  PermissionsType_Kind whichKind() =>
      _PermissionsType_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PermissionsType_CachePermissions get cachePermissions => $_getN(0);
  @$pb.TagNumber(1)
  set cachePermissions(PermissionsType_CachePermissions v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCachePermissions() => $_has(0);
  @$pb.TagNumber(1)
  void clearCachePermissions() => clearField(1);
  @$pb.TagNumber(1)
  PermissionsType_CachePermissions ensureCachePermissions() => $_ensure(0);

  @$pb.TagNumber(2)
  PermissionsType_TopicPermissions get topicPermissions => $_getN(1);
  @$pb.TagNumber(2)
  set topicPermissions(PermissionsType_TopicPermissions v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopicPermissions() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicPermissions() => clearField(2);
  @$pb.TagNumber(2)
  PermissionsType_TopicPermissions ensureTopicPermissions() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
