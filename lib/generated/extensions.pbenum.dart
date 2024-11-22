//
//  Generated code. Do not modify.
//  source: extensions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// A hint so you can decide a little more in the abstract "can this be retried?""
class RetrySemantic extends $pb.ProtobufEnum {
  static const RetrySemantic NotRetryable =
      RetrySemantic._(0, _omitEnumNames ? '' : 'NotRetryable');
  static const RetrySemantic Retryable =
      RetrySemantic._(1, _omitEnumNames ? '' : 'Retryable');

  static const $core.List<RetrySemantic> values = <RetrySemantic>[
    NotRetryable,
    Retryable,
  ];

  static final $core.Map<$core.int, RetrySemantic> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RetrySemantic? valueOf($core.int value) => _byValue[value];

  const RetrySemantic._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
