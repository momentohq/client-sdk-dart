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

/// Aliases for categories of functionality.
class CacheRole extends $pb.ProtobufEnum {
  static const CacheRole CachePermitNone =
      CacheRole._(0, _omitEnumNames ? '' : 'CachePermitNone');
  static const CacheRole CacheReadWrite =
      CacheRole._(1, _omitEnumNames ? '' : 'CacheReadWrite');
  static const CacheRole CacheReadOnly =
      CacheRole._(2, _omitEnumNames ? '' : 'CacheReadOnly');
  static const CacheRole CacheWriteOnly =
      CacheRole._(3, _omitEnumNames ? '' : 'CacheWriteOnly');

  static const $core.List<CacheRole> values = <CacheRole>[
    CachePermitNone,
    CacheReadWrite,
    CacheReadOnly,
    CacheWriteOnly,
  ];

  static final $core.Map<$core.int, CacheRole> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CacheRole? valueOf($core.int value) => _byValue[value];

  const CacheRole._($core.int v, $core.String n) : super(v, n);
}

/// Aliases for categories of functionality.
class TopicRole extends $pb.ProtobufEnum {
  static const TopicRole TopicPermitNone =
      TopicRole._(0, _omitEnumNames ? '' : 'TopicPermitNone');
  static const TopicRole TopicReadWrite =
      TopicRole._(1, _omitEnumNames ? '' : 'TopicReadWrite');
  static const TopicRole TopicReadOnly =
      TopicRole._(2, _omitEnumNames ? '' : 'TopicReadOnly');
  static const TopicRole TopicWriteOnly =
      TopicRole._(3, _omitEnumNames ? '' : 'TopicWriteOnly');

  static const $core.List<TopicRole> values = <TopicRole>[
    TopicPermitNone,
    TopicReadWrite,
    TopicReadOnly,
    TopicWriteOnly,
  ];

  static final $core.Map<$core.int, TopicRole> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static TopicRole? valueOf($core.int value) => _byValue[value];

  const TopicRole._($core.int v, $core.String n) : super(v, n);
}

class SuperUserPermissions extends $pb.ProtobufEnum {
  static const SuperUserPermissions SuperUser =
      SuperUserPermissions._(0, _omitEnumNames ? '' : 'SuperUser');

  static const $core.List<SuperUserPermissions> values = <SuperUserPermissions>[
    SuperUser,
  ];

  static final $core.Map<$core.int, SuperUserPermissions> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SuperUserPermissions? valueOf($core.int value) => _byValue[value];

  const SuperUserPermissions._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
