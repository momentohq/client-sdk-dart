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

import 'package:protobuf/protobuf.dart' as $pb;

class ECacheResult extends $pb.ProtobufEnum {
  static const ECacheResult Invalid =
      ECacheResult._(0, _omitEnumNames ? '' : 'Invalid');
  static const ECacheResult Ok = ECacheResult._(1, _omitEnumNames ? '' : 'Ok');
  static const ECacheResult Hit =
      ECacheResult._(2, _omitEnumNames ? '' : 'Hit');
  static const ECacheResult Miss =
      ECacheResult._(3, _omitEnumNames ? '' : 'Miss');

  static const $core.List<ECacheResult> values = <ECacheResult>[
    Invalid,
    Ok,
    Hit,
    Miss,
  ];

  static final $core.Map<$core.int, ECacheResult> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ECacheResult? valueOf($core.int value) => _byValue[value];

  const ECacheResult._($core.int v, $core.String n) : super(v, n);
}

class ItemGetTypeResponse__ItemType extends $pb.ProtobufEnum {
  static const ItemGetTypeResponse__ItemType SCALAR =
      ItemGetTypeResponse__ItemType._(0, _omitEnumNames ? '' : 'SCALAR');
  static const ItemGetTypeResponse__ItemType DICTIONARY =
      ItemGetTypeResponse__ItemType._(1, _omitEnumNames ? '' : 'DICTIONARY');
  static const ItemGetTypeResponse__ItemType SET =
      ItemGetTypeResponse__ItemType._(2, _omitEnumNames ? '' : 'SET');
  static const ItemGetTypeResponse__ItemType LIST =
      ItemGetTypeResponse__ItemType._(3, _omitEnumNames ? '' : 'LIST');
  static const ItemGetTypeResponse__ItemType SORTED_SET =
      ItemGetTypeResponse__ItemType._(4, _omitEnumNames ? '' : 'SORTED_SET');

  static const $core.List<ItemGetTypeResponse__ItemType> values =
      <ItemGetTypeResponse__ItemType>[
    SCALAR,
    DICTIONARY,
    SET,
    LIST,
    SORTED_SET,
  ];

  static final $core.Map<$core.int, ItemGetTypeResponse__ItemType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ItemGetTypeResponse__ItemType? valueOf($core.int value) =>
      _byValue[value];

  const ItemGetTypeResponse__ItemType._($core.int v, $core.String n)
      : super(v, n);
}

class SortedSetFetchRequest__Order extends $pb.ProtobufEnum {
  static const SortedSetFetchRequest__Order ASCENDING =
      SortedSetFetchRequest__Order._(0, _omitEnumNames ? '' : 'ASCENDING');
  static const SortedSetFetchRequest__Order DESCENDING =
      SortedSetFetchRequest__Order._(1, _omitEnumNames ? '' : 'DESCENDING');

  static const $core.List<SortedSetFetchRequest__Order> values =
      <SortedSetFetchRequest__Order>[
    ASCENDING,
    DESCENDING,
  ];

  static final $core.Map<$core.int, SortedSetFetchRequest__Order> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SortedSetFetchRequest__Order? valueOf($core.int value) =>
      _byValue[value];

  const SortedSetFetchRequest__Order._($core.int v, $core.String n)
      : super(v, n);
}

class SortedSetGetRankRequest__Order extends $pb.ProtobufEnum {
  static const SortedSetGetRankRequest__Order ASCENDING =
      SortedSetGetRankRequest__Order._(0, _omitEnumNames ? '' : 'ASCENDING');
  static const SortedSetGetRankRequest__Order DESCENDING =
      SortedSetGetRankRequest__Order._(1, _omitEnumNames ? '' : 'DESCENDING');

  static const $core.List<SortedSetGetRankRequest__Order> values =
      <SortedSetGetRankRequest__Order>[
    ASCENDING,
    DESCENDING,
  ];

  static final $core.Map<$core.int, SortedSetGetRankRequest__Order> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SortedSetGetRankRequest__Order? valueOf($core.int value) =>
      _byValue[value];

  const SortedSetGetRankRequest__Order._($core.int v, $core.String n)
      : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
