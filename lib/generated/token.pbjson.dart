//
//  Generated code. Do not modify.
//  source: token.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use generateDisposableTokenRequest_Descriptor instead')
const GenerateDisposableTokenRequest_$json = {
  '1': '_GenerateDisposableTokenRequest',
  '2': [
    {'1': 'expires', '3': 1, '4': 1, '5': 11, '6': '.token._GenerateDisposableTokenRequest.Expires', '10': 'expires'},
    {'1': 'auth_token', '3': 2, '4': 1, '5': 9, '10': 'authToken'},
    {'1': 'permissions', '3': 3, '4': 1, '5': 11, '6': '.permission_messages.Permissions', '10': 'permissions'},
    {'1': 'token_id', '3': 4, '4': 1, '5': 9, '10': 'tokenId'},
  ],
  '3': [GenerateDisposableTokenRequest__Expires$json],
};

@$core.Deprecated('Use generateDisposableTokenRequest_Descriptor instead')
const GenerateDisposableTokenRequest__Expires$json = {
  '1': 'Expires',
  '2': [
    {'1': 'valid_for_seconds', '3': 1, '4': 1, '5': 13, '10': 'validForSeconds'},
  ],
};

/// Descriptor for `_GenerateDisposableTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateDisposableTokenRequest_Descriptor = $convert.base64Decode(
    'Ch9fR2VuZXJhdGVEaXNwb3NhYmxlVG9rZW5SZXF1ZXN0EkgKB2V4cGlyZXMYASABKAsyLi50b2'
    'tlbi5fR2VuZXJhdGVEaXNwb3NhYmxlVG9rZW5SZXF1ZXN0LkV4cGlyZXNSB2V4cGlyZXMSHQoK'
    'YXV0aF90b2tlbhgCIAEoCVIJYXV0aFRva2VuEkIKC3Blcm1pc3Npb25zGAMgASgLMiAucGVybW'
    'lzc2lvbl9tZXNzYWdlcy5QZXJtaXNzaW9uc1ILcGVybWlzc2lvbnMSGQoIdG9rZW5faWQYBCAB'
    'KAlSB3Rva2VuSWQaNQoHRXhwaXJlcxIqChF2YWxpZF9mb3Jfc2Vjb25kcxgBIAEoDVIPdmFsaW'
    'RGb3JTZWNvbmRz');

@$core.Deprecated('Use generateDisposableTokenResponse_Descriptor instead')
const GenerateDisposableTokenResponse_$json = {
  '1': '_GenerateDisposableTokenResponse',
  '2': [
    {'1': 'api_key', '3': 1, '4': 1, '5': 9, '10': 'apiKey'},
    {'1': 'endpoint', '3': 2, '4': 1, '5': 9, '10': 'endpoint'},
    {'1': 'valid_until', '3': 3, '4': 1, '5': 4, '10': 'validUntil'},
  ],
};

/// Descriptor for `_GenerateDisposableTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateDisposableTokenResponse_Descriptor = $convert.base64Decode(
    'CiBfR2VuZXJhdGVEaXNwb3NhYmxlVG9rZW5SZXNwb25zZRIXCgdhcGlfa2V5GAEgASgJUgZhcG'
    'lLZXkSGgoIZW5kcG9pbnQYAiABKAlSCGVuZHBvaW50Eh8KC3ZhbGlkX3VudGlsGAMgASgEUgp2'
    'YWxpZFVudGls');

