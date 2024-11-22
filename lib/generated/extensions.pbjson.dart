//
//  Generated code. Do not modify.
//  source: extensions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use retrySemanticDescriptor instead')
const RetrySemantic$json = {
  '1': 'RetrySemantic',
  '2': [
    {'1': 'NotRetryable', '2': 0},
    {'1': 'Retryable', '2': 1},
  ],
};

/// Descriptor for `RetrySemantic`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List retrySemanticDescriptor = $convert.base64Decode(
    'Cg1SZXRyeVNlbWFudGljEhAKDE5vdFJldHJ5YWJsZRAAEg0KCVJldHJ5YWJsZRAB');
