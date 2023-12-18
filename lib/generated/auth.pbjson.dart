//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loginRequest_Descriptor instead')
const LoginRequest_$json = {
  '1': '_LoginRequest',
};

/// Descriptor for `_LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequest_Descriptor =
    $convert.base64Decode('Cg1fTG9naW5SZXF1ZXN0');

@$core.Deprecated('Use loginResponse_Descriptor instead')
const LoginResponse_$json = {
  '1': '_LoginResponse',
  '2': [
    {
      '1': 'direct_browser',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.auth._LoginResponse.DirectBrowser',
      '9': 0,
      '10': 'directBrowser'
    },
    {
      '1': 'logged_in',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.auth._LoginResponse.LoggedIn',
      '9': 0,
      '10': 'loggedIn'
    },
    {
      '1': 'message',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.auth._LoginResponse.Message',
      '9': 0,
      '10': 'message'
    },
    {
      '1': 'error',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.auth._LoginResponse.Error',
      '9': 0,
      '10': 'error'
    },
  ],
  '3': [
    LoginResponse__LoggedIn$json,
    LoginResponse__Error$json,
    LoginResponse__DirectBrowser$json,
    LoginResponse__Message$json
  ],
  '8': [
    {'1': 'state'},
  ],
};

@$core.Deprecated('Use loginResponse_Descriptor instead')
const LoginResponse__LoggedIn$json = {
  '1': 'LoggedIn',
  '2': [
    {'1': 'session_token', '3': 1, '4': 1, '5': 9, '10': 'sessionToken'},
    {
      '1': 'valid_for_seconds',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'validForSeconds'
    },
  ],
};

@$core.Deprecated('Use loginResponse_Descriptor instead')
const LoginResponse__Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
  ],
};

@$core.Deprecated('Use loginResponse_Descriptor instead')
const LoginResponse__DirectBrowser$json = {
  '1': 'DirectBrowser',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

@$core.Deprecated('Use loginResponse_Descriptor instead')
const LoginResponse__Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `_LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponse_Descriptor = $convert.base64Decode(
    'Cg5fTG9naW5SZXNwb25zZRJLCg5kaXJlY3RfYnJvd3NlchgBIAEoCzIiLmF1dGguX0xvZ2luUm'
    'VzcG9uc2UuRGlyZWN0QnJvd3NlckgAUg1kaXJlY3RCcm93c2VyEjwKCWxvZ2dlZF9pbhgCIAEo'
    'CzIdLmF1dGguX0xvZ2luUmVzcG9uc2UuTG9nZ2VkSW5IAFIIbG9nZ2VkSW4SOAoHbWVzc2FnZR'
    'gDIAEoCzIcLmF1dGguX0xvZ2luUmVzcG9uc2UuTWVzc2FnZUgAUgdtZXNzYWdlEjIKBWVycm9y'
    'GAQgASgLMhouYXV0aC5fTG9naW5SZXNwb25zZS5FcnJvckgAUgVlcnJvchpbCghMb2dnZWRJbh'
    'IjCg1zZXNzaW9uX3Rva2VuGAEgASgJUgxzZXNzaW9uVG9rZW4SKgoRdmFsaWRfZm9yX3NlY29u'
    'ZHMYAiABKA1SD3ZhbGlkRm9yU2Vjb25kcxopCgVFcnJvchIgCgtkZXNjcmlwdGlvbhgBIAEoCV'
    'ILZGVzY3JpcHRpb24aIQoNRGlyZWN0QnJvd3NlchIQCgN1cmwYASABKAlSA3VybBodCgdNZXNz'
    'YWdlEhIKBHRleHQYASABKAlSBHRleHRCBwoFc3RhdGU=');

@$core.Deprecated('Use generateApiTokenRequest_Descriptor instead')
const GenerateApiTokenRequest_$json = {
  '1': '_GenerateApiTokenRequest',
  '2': [
    {
      '1': 'never',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.auth._GenerateApiTokenRequest.Never',
      '9': 0,
      '10': 'never'
    },
    {
      '1': 'expires',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.auth._GenerateApiTokenRequest.Expires',
      '9': 0,
      '10': 'expires'
    },
    {'1': 'auth_token', '3': 3, '4': 1, '5': 9, '10': 'authToken'},
    {
      '1': 'permissions',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.Permissions',
      '10': 'permissions'
    },
    {'1': 'token_id', '3': 5, '4': 1, '5': 9, '10': 'tokenId'},
  ],
  '3': [
    GenerateApiTokenRequest__Never$json,
    GenerateApiTokenRequest__Expires$json
  ],
  '8': [
    {'1': 'expiry'},
  ],
};

@$core.Deprecated('Use generateApiTokenRequest_Descriptor instead')
const GenerateApiTokenRequest__Never$json = {
  '1': 'Never',
};

@$core.Deprecated('Use generateApiTokenRequest_Descriptor instead')
const GenerateApiTokenRequest__Expires$json = {
  '1': 'Expires',
  '2': [
    {
      '1': 'valid_for_seconds',
      '3': 1,
      '4': 1,
      '5': 13,
      '10': 'validForSeconds'
    },
  ],
};

/// Descriptor for `_GenerateApiTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateApiTokenRequest_Descriptor = $convert.base64Decode(
    'ChhfR2VuZXJhdGVBcGlUb2tlblJlcXVlc3QSPAoFbmV2ZXIYASABKAsyJC5hdXRoLl9HZW5lcm'
    'F0ZUFwaVRva2VuUmVxdWVzdC5OZXZlckgAUgVuZXZlchJCCgdleHBpcmVzGAIgASgLMiYuYXV0'
    'aC5fR2VuZXJhdGVBcGlUb2tlblJlcXVlc3QuRXhwaXJlc0gAUgdleHBpcmVzEh0KCmF1dGhfdG'
    '9rZW4YAyABKAlSCWF1dGhUb2tlbhJCCgtwZXJtaXNzaW9ucxgEIAEoCzIgLnBlcm1pc3Npb25f'
    'bWVzc2FnZXMuUGVybWlzc2lvbnNSC3Blcm1pc3Npb25zEhkKCHRva2VuX2lkGAUgASgJUgd0b2'
    'tlbklkGgcKBU5ldmVyGjUKB0V4cGlyZXMSKgoRdmFsaWRfZm9yX3NlY29uZHMYASABKA1SD3Zh'
    'bGlkRm9yU2Vjb25kc0IICgZleHBpcnk=');

@$core.Deprecated('Use generateApiTokenResponse_Descriptor instead')
const GenerateApiTokenResponse_$json = {
  '1': '_GenerateApiTokenResponse',
  '2': [
    {'1': 'api_key', '3': 1, '4': 1, '5': 9, '10': 'apiKey'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'endpoint', '3': 3, '4': 1, '5': 9, '10': 'endpoint'},
    {'1': 'valid_until', '3': 4, '4': 1, '5': 4, '10': 'validUntil'},
  ],
};

/// Descriptor for `_GenerateApiTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateApiTokenResponse_Descriptor = $convert.base64Decode(
    'ChlfR2VuZXJhdGVBcGlUb2tlblJlc3BvbnNlEhcKB2FwaV9rZXkYASABKAlSBmFwaUtleRIjCg'
    '1yZWZyZXNoX3Rva2VuGAIgASgJUgxyZWZyZXNoVG9rZW4SGgoIZW5kcG9pbnQYAyABKAlSCGVu'
    'ZHBvaW50Eh8KC3ZhbGlkX3VudGlsGAQgASgEUgp2YWxpZFVudGls');

@$core.Deprecated('Use refreshApiTokenRequest_Descriptor instead')
const RefreshApiTokenRequest_$json = {
  '1': '_RefreshApiTokenRequest',
  '2': [
    {'1': 'api_key', '3': 1, '4': 1, '5': 9, '10': 'apiKey'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `_RefreshApiTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshApiTokenRequest_Descriptor =
    $convert.base64Decode(
        'ChdfUmVmcmVzaEFwaVRva2VuUmVxdWVzdBIXCgdhcGlfa2V5GAEgASgJUgZhcGlLZXkSIwoNcm'
        'VmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2Vu');

@$core.Deprecated('Use refreshApiTokenResponse_Descriptor instead')
const RefreshApiTokenResponse_$json = {
  '1': '_RefreshApiTokenResponse',
  '2': [
    {'1': 'api_key', '3': 1, '4': 1, '5': 9, '10': 'apiKey'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'endpoint', '3': 3, '4': 1, '5': 9, '10': 'endpoint'},
    {'1': 'valid_until', '3': 4, '4': 1, '5': 4, '10': 'validUntil'},
  ],
};

/// Descriptor for `_RefreshApiTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshApiTokenResponse_Descriptor = $convert.base64Decode(
    'ChhfUmVmcmVzaEFwaVRva2VuUmVzcG9uc2USFwoHYXBpX2tleRgBIAEoCVIGYXBpS2V5EiMKDX'
    'JlZnJlc2hfdG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhIaCghlbmRwb2ludBgDIAEoCVIIZW5k'
    'cG9pbnQSHwoLdmFsaWRfdW50aWwYBCABKARSCnZhbGlkVW50aWw=');
