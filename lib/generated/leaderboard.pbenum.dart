//
//  Generated code. Do not modify.
//  source: leaderboard.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Order_ extends $pb.ProtobufEnum {
  static const Order_ ASCENDING = Order_._(0, _omitEnumNames ? '' : 'ASCENDING');
  static const Order_ DESCENDING = Order_._(1, _omitEnumNames ? '' : 'DESCENDING');

  static const $core.List<Order_> values = <Order_> [
    ASCENDING,
    DESCENDING,
  ];

  static final $core.Map<$core.int, Order_> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_? valueOf($core.int value) => _byValue[value];

  const Order_._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
