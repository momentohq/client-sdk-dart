//
//  Generated code. Do not modify.
//  source: cacheclient.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eCacheResultDescriptor instead')
const ECacheResult$json = {
  '1': 'ECacheResult',
  '2': [
    {'1': 'Invalid', '2': 0},
    {'1': 'Ok', '2': 1},
    {'1': 'Hit', '2': 2},
    {'1': 'Miss', '2': 3},
  ],
  '4': [
    {'1': 4, '2': 6},
  ],
};

/// Descriptor for `ECacheResult`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eCacheResultDescriptor = $convert.base64Decode(
    'CgxFQ2FjaGVSZXN1bHQSCwoHSW52YWxpZBAAEgYKAk9rEAESBwoDSGl0EAISCAoETWlzcxADIg'
    'QIBBAG');

@$core.Deprecated('Use getRequest_Descriptor instead')
const GetRequest_$json = {
  '1': '_GetRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
  ],
};

/// Descriptor for `_GetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequest_Descriptor = $convert.base64Decode(
    'CgtfR2V0UmVxdWVzdBIbCgljYWNoZV9rZXkYASABKAxSCGNhY2hlS2V5');

@$core.Deprecated('Use getResponse_Descriptor instead')
const GetResponse_$json = {
  '1': '_GetResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.cache_client.ECacheResult', '10': 'result'},
    {'1': 'cache_body', '3': 2, '4': 1, '5': 12, '10': 'cacheBody'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `_GetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResponse_Descriptor = $convert.base64Decode(
    'CgxfR2V0UmVzcG9uc2USMgoGcmVzdWx0GAEgASgOMhouY2FjaGVfY2xpZW50LkVDYWNoZVJlc3'
    'VsdFIGcmVzdWx0Eh0KCmNhY2hlX2JvZHkYAiABKAxSCWNhY2hlQm9keRIYCgdtZXNzYWdlGAMg'
    'ASgJUgdtZXNzYWdl');

@$core.Deprecated('Use deleteRequest_Descriptor instead')
const DeleteRequest_$json = {
  '1': '_DeleteRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
  ],
};

/// Descriptor for `_DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequest_Descriptor = $convert.base64Decode(
    'Cg5fRGVsZXRlUmVxdWVzdBIbCgljYWNoZV9rZXkYASABKAxSCGNhY2hlS2V5');

@$core.Deprecated('Use deleteResponse_Descriptor instead')
const DeleteResponse_$json = {
  '1': '_DeleteResponse',
};

/// Descriptor for `_DeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResponse_Descriptor = $convert.base64Decode(
    'Cg9fRGVsZXRlUmVzcG9uc2U=');

@$core.Deprecated('Use setRequest_Descriptor instead')
const SetRequest_$json = {
  '1': '_SetRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
    {'1': 'cache_body', '3': 2, '4': 1, '5': 12, '10': 'cacheBody'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
  ],
};

/// Descriptor for `_SetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRequest_Descriptor = $convert.base64Decode(
    'CgtfU2V0UmVxdWVzdBIbCgljYWNoZV9rZXkYASABKAxSCGNhY2hlS2V5Eh0KCmNhY2hlX2JvZH'
    'kYAiABKAxSCWNhY2hlQm9keRIpChB0dGxfbWlsbGlzZWNvbmRzGAMgASgEUg90dGxNaWxsaXNl'
    'Y29uZHM=');

@$core.Deprecated('Use setResponse_Descriptor instead')
const SetResponse_$json = {
  '1': '_SetResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.cache_client.ECacheResult', '10': 'result'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `_SetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setResponse_Descriptor = $convert.base64Decode(
    'CgxfU2V0UmVzcG9uc2USMgoGcmVzdWx0GAEgASgOMhouY2FjaGVfY2xpZW50LkVDYWNoZVJlc3'
    'VsdFIGcmVzdWx0EhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use setIfNotExistsRequest_Descriptor instead')
const SetIfNotExistsRequest_$json = {
  '1': '_SetIfNotExistsRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
    {'1': 'cache_body', '3': 2, '4': 1, '5': 12, '10': 'cacheBody'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
  ],
};

/// Descriptor for `_SetIfNotExistsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setIfNotExistsRequest_Descriptor = $convert.base64Decode(
    'ChZfU2V0SWZOb3RFeGlzdHNSZXF1ZXN0EhsKCWNhY2hlX2tleRgBIAEoDFIIY2FjaGVLZXkSHQ'
    'oKY2FjaGVfYm9keRgCIAEoDFIJY2FjaGVCb2R5EikKEHR0bF9taWxsaXNlY29uZHMYAyABKARS'
    'D3R0bE1pbGxpc2Vjb25kcw==');

@$core.Deprecated('Use setIfNotExistsResponse_Descriptor instead')
const SetIfNotExistsResponse_$json = {
  '1': '_SetIfNotExistsResponse',
  '2': [
    {'1': 'stored', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SetIfNotExistsResponse._Stored', '9': 0, '10': 'stored'},
    {'1': 'not_stored', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetIfNotExistsResponse._NotStored', '9': 0, '10': 'notStored'},
  ],
  '3': [SetIfNotExistsResponse___Stored$json, SetIfNotExistsResponse___NotStored$json],
  '8': [
    {'1': 'result'},
  ],
};

@$core.Deprecated('Use setIfNotExistsResponse_Descriptor instead')
const SetIfNotExistsResponse___Stored$json = {
  '1': '_Stored',
};

@$core.Deprecated('Use setIfNotExistsResponse_Descriptor instead')
const SetIfNotExistsResponse___NotStored$json = {
  '1': '_NotStored',
};

/// Descriptor for `_SetIfNotExistsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setIfNotExistsResponse_Descriptor = $convert.base64Decode(
    'ChdfU2V0SWZOb3RFeGlzdHNSZXNwb25zZRJHCgZzdG9yZWQYASABKAsyLS5jYWNoZV9jbGllbn'
    'QuX1NldElmTm90RXhpc3RzUmVzcG9uc2UuX1N0b3JlZEgAUgZzdG9yZWQSUQoKbm90X3N0b3Jl'
    'ZBgCIAEoCzIwLmNhY2hlX2NsaWVudC5fU2V0SWZOb3RFeGlzdHNSZXNwb25zZS5fTm90U3Rvcm'
    'VkSABSCW5vdFN0b3JlZBoJCgdfU3RvcmVkGgwKCl9Ob3RTdG9yZWRCCAoGcmVzdWx0');

@$core.Deprecated('Use keysExistRequest_Descriptor instead')
const KeysExistRequest_$json = {
  '1': '_KeysExistRequest',
  '2': [
    {'1': 'cache_keys', '3': 1, '4': 3, '5': 12, '10': 'cacheKeys'},
  ],
};

/// Descriptor for `_KeysExistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keysExistRequest_Descriptor = $convert.base64Decode(
    'ChFfS2V5c0V4aXN0UmVxdWVzdBIdCgpjYWNoZV9rZXlzGAEgAygMUgljYWNoZUtleXM=');

@$core.Deprecated('Use keysExistResponse_Descriptor instead')
const KeysExistResponse_$json = {
  '1': '_KeysExistResponse',
  '2': [
    {'1': 'exists', '3': 1, '4': 3, '5': 8, '10': 'exists'},
  ],
};

/// Descriptor for `_KeysExistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keysExistResponse_Descriptor = $convert.base64Decode(
    'ChJfS2V5c0V4aXN0UmVzcG9uc2USFgoGZXhpc3RzGAEgAygIUgZleGlzdHM=');

@$core.Deprecated('Use incrementRequest_Descriptor instead')
const IncrementRequest_$json = {
  '1': '_IncrementRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
    {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
  ],
};

/// Descriptor for `_IncrementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List incrementRequest_Descriptor = $convert.base64Decode(
    'ChFfSW5jcmVtZW50UmVxdWVzdBIbCgljYWNoZV9rZXkYASABKAxSCGNhY2hlS2V5EhYKBmFtb3'
    'VudBgCIAEoA1IGYW1vdW50EikKEHR0bF9taWxsaXNlY29uZHMYAyABKARSD3R0bE1pbGxpc2Vj'
    'b25kcw==');

@$core.Deprecated('Use incrementResponse_Descriptor instead')
const IncrementResponse_$json = {
  '1': '_IncrementResponse',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `_IncrementResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List incrementResponse_Descriptor = $convert.base64Decode(
    'ChJfSW5jcmVtZW50UmVzcG9uc2USFAoFdmFsdWUYASABKANSBXZhbHVl');

@$core.Deprecated('Use updateTtlRequest_Descriptor instead')
const UpdateTtlRequest_$json = {
  '1': '_UpdateTtlRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
    {'1': 'increase_to_milliseconds', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'increaseToMilliseconds'},
    {'1': 'decrease_to_milliseconds', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'decreaseToMilliseconds'},
    {'1': 'overwrite_to_milliseconds', '3': 4, '4': 1, '5': 4, '9': 0, '10': 'overwriteToMilliseconds'},
  ],
  '8': [
    {'1': 'update_ttl'},
  ],
};

/// Descriptor for `_UpdateTtlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTtlRequest_Descriptor = $convert.base64Decode(
    'ChFfVXBkYXRlVHRsUmVxdWVzdBIbCgljYWNoZV9rZXkYASABKAxSCGNhY2hlS2V5EjoKGGluY3'
    'JlYXNlX3RvX21pbGxpc2Vjb25kcxgCIAEoBEgAUhZpbmNyZWFzZVRvTWlsbGlzZWNvbmRzEjoK'
    'GGRlY3JlYXNlX3RvX21pbGxpc2Vjb25kcxgDIAEoBEgAUhZkZWNyZWFzZVRvTWlsbGlzZWNvbm'
    'RzEjwKGW92ZXJ3cml0ZV90b19taWxsaXNlY29uZHMYBCABKARIAFIXb3ZlcndyaXRlVG9NaWxs'
    'aXNlY29uZHNCDAoKdXBkYXRlX3R0bA==');

@$core.Deprecated('Use updateTtlResponse_Descriptor instead')
const UpdateTtlResponse_$json = {
  '1': '_UpdateTtlResponse',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 11, '6': '.cache_client._UpdateTtlResponse._Set', '9': 0, '10': 'set'},
    {'1': 'not_set', '3': 2, '4': 1, '5': 11, '6': '.cache_client._UpdateTtlResponse._NotSet', '9': 0, '10': 'notSet'},
    {'1': 'missing', '3': 3, '4': 1, '5': 11, '6': '.cache_client._UpdateTtlResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [UpdateTtlResponse___Set$json, UpdateTtlResponse___NotSet$json, UpdateTtlResponse___Missing$json],
  '8': [
    {'1': 'result'},
  ],
};

@$core.Deprecated('Use updateTtlResponse_Descriptor instead')
const UpdateTtlResponse___Set$json = {
  '1': '_Set',
};

@$core.Deprecated('Use updateTtlResponse_Descriptor instead')
const UpdateTtlResponse___NotSet$json = {
  '1': '_NotSet',
};

@$core.Deprecated('Use updateTtlResponse_Descriptor instead')
const UpdateTtlResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_UpdateTtlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTtlResponse_Descriptor = $convert.base64Decode(
    'ChJfVXBkYXRlVHRsUmVzcG9uc2USOQoDc2V0GAEgASgLMiUuY2FjaGVfY2xpZW50Ll9VcGRhdG'
    'VUdGxSZXNwb25zZS5fU2V0SABSA3NldBJDCgdub3Rfc2V0GAIgASgLMiguY2FjaGVfY2xpZW50'
    'Ll9VcGRhdGVUdGxSZXNwb25zZS5fTm90U2V0SABSBm5vdFNldBJFCgdtaXNzaW5nGAMgASgLMi'
    'kuY2FjaGVfY2xpZW50Ll9VcGRhdGVUdGxSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGgYK'
    'BF9TZXQaCQoHX05vdFNldBoKCghfTWlzc2luZ0IICgZyZXN1bHQ=');

@$core.Deprecated('Use itemGetTtlRequest_Descriptor instead')
const ItemGetTtlRequest_$json = {
  '1': '_ItemGetTtlRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
  ],
};

/// Descriptor for `_ItemGetTtlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemGetTtlRequest_Descriptor = $convert.base64Decode(
    'ChJfSXRlbUdldFR0bFJlcXVlc3QSGwoJY2FjaGVfa2V5GAEgASgMUghjYWNoZUtleQ==');

@$core.Deprecated('Use itemGetTtlResponse_Descriptor instead')
const ItemGetTtlResponse_$json = {
  '1': '_ItemGetTtlResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ItemGetTtlResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ItemGetTtlResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ItemGetTtlResponse___Found$json, ItemGetTtlResponse___Missing$json],
  '8': [
    {'1': 'result'},
  ],
};

@$core.Deprecated('Use itemGetTtlResponse_Descriptor instead')
const ItemGetTtlResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'remaining_ttl_millis', '3': 1, '4': 1, '5': 4, '10': 'remainingTtlMillis'},
  ],
};

@$core.Deprecated('Use itemGetTtlResponse_Descriptor instead')
const ItemGetTtlResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ItemGetTtlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemGetTtlResponse_Descriptor = $convert.base64Decode(
    'ChNfSXRlbUdldFR0bFJlc3BvbnNlEkAKBWZvdW5kGAEgASgLMiguY2FjaGVfY2xpZW50Ll9JdG'
    'VtR2V0VHRsUmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5kEkYKB21pc3NpbmcYAiABKAsyKi5jYWNo'
    'ZV9jbGllbnQuX0l0ZW1HZXRUdGxSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGjoKBl9Gb3'
    'VuZBIwChRyZW1haW5pbmdfdHRsX21pbGxpcxgBIAEoBFIScmVtYWluaW5nVHRsTWlsbGlzGgoK'
    'CF9NaXNzaW5nQggKBnJlc3VsdA==');

@$core.Deprecated('Use itemGetTypeRequest_Descriptor instead')
const ItemGetTypeRequest_$json = {
  '1': '_ItemGetTypeRequest',
  '2': [
    {'1': 'cache_key', '3': 1, '4': 1, '5': 12, '10': 'cacheKey'},
  ],
};

/// Descriptor for `_ItemGetTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemGetTypeRequest_Descriptor = $convert.base64Decode(
    'ChNfSXRlbUdldFR5cGVSZXF1ZXN0EhsKCWNhY2hlX2tleRgBIAEoDFIIY2FjaGVLZXk=');

@$core.Deprecated('Use itemGetTypeResponse_Descriptor instead')
const ItemGetTypeResponse_$json = {
  '1': '_ItemGetTypeResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ItemGetTypeResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ItemGetTypeResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ItemGetTypeResponse___Found$json, ItemGetTypeResponse___Missing$json],
  '4': [ItemGetTypeResponse__ItemType$json],
  '8': [
    {'1': 'result'},
  ],
};

@$core.Deprecated('Use itemGetTypeResponse_Descriptor instead')
const ItemGetTypeResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cache_client._ItemGetTypeResponse.ItemType', '10': 'itemType'},
  ],
};

@$core.Deprecated('Use itemGetTypeResponse_Descriptor instead')
const ItemGetTypeResponse___Missing$json = {
  '1': '_Missing',
};

@$core.Deprecated('Use itemGetTypeResponse_Descriptor instead')
const ItemGetTypeResponse__ItemType$json = {
  '1': 'ItemType',
  '2': [
    {'1': 'SCALAR', '2': 0},
    {'1': 'DICTIONARY', '2': 1},
    {'1': 'SET', '2': 2},
    {'1': 'LIST', '2': 3},
    {'1': 'SORTED_SET', '2': 4},
  ],
};

/// Descriptor for `_ItemGetTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemGetTypeResponse_Descriptor = $convert.base64Decode(
    'ChRfSXRlbUdldFR5cGVSZXNwb25zZRJBCgVmb3VuZBgBIAEoCzIpLmNhY2hlX2NsaWVudC5fSX'
    'RlbUdldFR5cGVSZXNwb25zZS5fRm91bmRIAFIFZm91bmQSRwoHbWlzc2luZxgCIAEoCzIrLmNh'
    'Y2hlX2NsaWVudC5fSXRlbUdldFR5cGVSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGlIKBl'
    '9Gb3VuZBJICglpdGVtX3R5cGUYASABKA4yKy5jYWNoZV9jbGllbnQuX0l0ZW1HZXRUeXBlUmVz'
    'cG9uc2UuSXRlbVR5cGVSCGl0ZW1UeXBlGgoKCF9NaXNzaW5nIkkKCEl0ZW1UeXBlEgoKBlNDQU'
    'xBUhAAEg4KCkRJQ1RJT05BUlkQARIHCgNTRVQQAhIICgRMSVNUEAMSDgoKU09SVEVEX1NFVBAE'
    'QggKBnJlc3VsdA==');

@$core.Deprecated('Use dictionaryGetRequest_Descriptor instead')
const DictionaryGetRequest_$json = {
  '1': '_DictionaryGetRequest',
  '2': [
    {'1': 'dictionary_name', '3': 1, '4': 1, '5': 12, '10': 'dictionaryName'},
    {'1': 'fields', '3': 2, '4': 3, '5': 12, '10': 'fields'},
  ],
};

/// Descriptor for `_DictionaryGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryGetRequest_Descriptor = $convert.base64Decode(
    'ChVfRGljdGlvbmFyeUdldFJlcXVlc3QSJwoPZGljdGlvbmFyeV9uYW1lGAEgASgMUg5kaWN0aW'
    '9uYXJ5TmFtZRIWCgZmaWVsZHMYAiADKAxSBmZpZWxkcw==');

@$core.Deprecated('Use dictionaryGetResponse_Descriptor instead')
const DictionaryGetResponse_$json = {
  '1': '_DictionaryGetResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._DictionaryGetResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._DictionaryGetResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [DictionaryGetResponse___DictionaryGetResponsePart$json, DictionaryGetResponse___Found$json, DictionaryGetResponse___Missing$json],
  '8': [
    {'1': 'dictionary'},
  ],
};

@$core.Deprecated('Use dictionaryGetResponse_Descriptor instead')
const DictionaryGetResponse___DictionaryGetResponsePart$json = {
  '1': '_DictionaryGetResponsePart',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.cache_client.ECacheResult', '10': 'result'},
    {'1': 'cache_body', '3': 2, '4': 1, '5': 12, '10': 'cacheBody'},
  ],
};

@$core.Deprecated('Use dictionaryGetResponse_Descriptor instead')
const DictionaryGetResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.cache_client._DictionaryGetResponse._DictionaryGetResponsePart', '10': 'items'},
  ],
};

@$core.Deprecated('Use dictionaryGetResponse_Descriptor instead')
const DictionaryGetResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_DictionaryGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryGetResponse_Descriptor = $convert.base64Decode(
    'ChZfRGljdGlvbmFyeUdldFJlc3BvbnNlEkMKBWZvdW5kGAEgASgLMisuY2FjaGVfY2xpZW50Ll'
    '9EaWN0aW9uYXJ5R2V0UmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5kEkkKB21pc3NpbmcYAiABKAsy'
    'LS5jYWNoZV9jbGllbnQuX0RpY3Rpb25hcnlHZXRSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW'
    '5nGm8KGl9EaWN0aW9uYXJ5R2V0UmVzcG9uc2VQYXJ0EjIKBnJlc3VsdBgBIAEoDjIaLmNhY2hl'
    'X2NsaWVudC5FQ2FjaGVSZXN1bHRSBnJlc3VsdBIdCgpjYWNoZV9ib2R5GAIgASgMUgljYWNoZU'
    'JvZHkaXwoGX0ZvdW5kElUKBWl0ZW1zGAEgAygLMj8uY2FjaGVfY2xpZW50Ll9EaWN0aW9uYXJ5'
    'R2V0UmVzcG9uc2UuX0RpY3Rpb25hcnlHZXRSZXNwb25zZVBhcnRSBWl0ZW1zGgoKCF9NaXNzaW'
    '5nQgwKCmRpY3Rpb25hcnk=');

@$core.Deprecated('Use dictionaryFetchRequest_Descriptor instead')
const DictionaryFetchRequest_$json = {
  '1': '_DictionaryFetchRequest',
  '2': [
    {'1': 'dictionary_name', '3': 1, '4': 1, '5': 12, '10': 'dictionaryName'},
  ],
};

/// Descriptor for `_DictionaryFetchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryFetchRequest_Descriptor = $convert.base64Decode(
    'ChdfRGljdGlvbmFyeUZldGNoUmVxdWVzdBInCg9kaWN0aW9uYXJ5X25hbWUYASABKAxSDmRpY3'
    'Rpb25hcnlOYW1l');

@$core.Deprecated('Use dictionaryFieldValuePair_Descriptor instead')
const DictionaryFieldValuePair_$json = {
  '1': '_DictionaryFieldValuePair',
  '2': [
    {'1': 'field', '3': 1, '4': 1, '5': 12, '10': 'field'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `_DictionaryFieldValuePair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryFieldValuePair_Descriptor = $convert.base64Decode(
    'ChlfRGljdGlvbmFyeUZpZWxkVmFsdWVQYWlyEhQKBWZpZWxkGAEgASgMUgVmaWVsZBIUCgV2YW'
    'x1ZRgCIAEoDFIFdmFsdWU=');

@$core.Deprecated('Use dictionaryFetchResponse_Descriptor instead')
const DictionaryFetchResponse_$json = {
  '1': '_DictionaryFetchResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._DictionaryFetchResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._DictionaryFetchResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [DictionaryFetchResponse___Found$json, DictionaryFetchResponse___Missing$json],
  '8': [
    {'1': 'dictionary'},
  ],
};

@$core.Deprecated('Use dictionaryFetchResponse_Descriptor instead')
const DictionaryFetchResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.cache_client._DictionaryFieldValuePair', '10': 'items'},
  ],
};

@$core.Deprecated('Use dictionaryFetchResponse_Descriptor instead')
const DictionaryFetchResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_DictionaryFetchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryFetchResponse_Descriptor = $convert.base64Decode(
    'ChhfRGljdGlvbmFyeUZldGNoUmVzcG9uc2USRQoFZm91bmQYASABKAsyLS5jYWNoZV9jbGllbn'
    'QuX0RpY3Rpb25hcnlGZXRjaFJlc3BvbnNlLl9Gb3VuZEgAUgVmb3VuZBJLCgdtaXNzaW5nGAIg'
    'ASgLMi8uY2FjaGVfY2xpZW50Ll9EaWN0aW9uYXJ5RmV0Y2hSZXNwb25zZS5fTWlzc2luZ0gAUg'
    'dtaXNzaW5nGkcKBl9Gb3VuZBI9CgVpdGVtcxgBIAMoCzInLmNhY2hlX2NsaWVudC5fRGljdGlv'
    'bmFyeUZpZWxkVmFsdWVQYWlyUgVpdGVtcxoKCghfTWlzc2luZ0IMCgpkaWN0aW9uYXJ5');

@$core.Deprecated('Use dictionarySetRequest_Descriptor instead')
const DictionarySetRequest_$json = {
  '1': '_DictionarySetRequest',
  '2': [
    {'1': 'dictionary_name', '3': 1, '4': 1, '5': 12, '10': 'dictionaryName'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.cache_client._DictionaryFieldValuePair', '10': 'items'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 4, '4': 1, '5': 8, '10': 'refreshTtl'},
  ],
};

/// Descriptor for `_DictionarySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionarySetRequest_Descriptor = $convert.base64Decode(
    'ChVfRGljdGlvbmFyeVNldFJlcXVlc3QSJwoPZGljdGlvbmFyeV9uYW1lGAEgASgMUg5kaWN0aW'
    '9uYXJ5TmFtZRI9CgVpdGVtcxgCIAMoCzInLmNhY2hlX2NsaWVudC5fRGljdGlvbmFyeUZpZWxk'
    'VmFsdWVQYWlyUgVpdGVtcxIpChB0dGxfbWlsbGlzZWNvbmRzGAMgASgEUg90dGxNaWxsaXNlY2'
    '9uZHMSHwoLcmVmcmVzaF90dGwYBCABKAhSCnJlZnJlc2hUdGw=');

@$core.Deprecated('Use dictionarySetResponse_Descriptor instead')
const DictionarySetResponse_$json = {
  '1': '_DictionarySetResponse',
};

/// Descriptor for `_DictionarySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionarySetResponse_Descriptor = $convert.base64Decode(
    'ChZfRGljdGlvbmFyeVNldFJlc3BvbnNl');

@$core.Deprecated('Use dictionaryIncrementRequest_Descriptor instead')
const DictionaryIncrementRequest_$json = {
  '1': '_DictionaryIncrementRequest',
  '2': [
    {'1': 'dictionary_name', '3': 1, '4': 1, '5': 12, '10': 'dictionaryName'},
    {'1': 'field', '3': 2, '4': 1, '5': 12, '10': 'field'},
    {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'ttl_milliseconds', '3': 4, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 5, '4': 1, '5': 8, '10': 'refreshTtl'},
  ],
};

/// Descriptor for `_DictionaryIncrementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryIncrementRequest_Descriptor = $convert.base64Decode(
    'ChtfRGljdGlvbmFyeUluY3JlbWVudFJlcXVlc3QSJwoPZGljdGlvbmFyeV9uYW1lGAEgASgMUg'
    '5kaWN0aW9uYXJ5TmFtZRIUCgVmaWVsZBgCIAEoDFIFZmllbGQSFgoGYW1vdW50GAMgASgDUgZh'
    'bW91bnQSKQoQdHRsX21pbGxpc2Vjb25kcxgEIAEoBFIPdHRsTWlsbGlzZWNvbmRzEh8KC3JlZn'
    'Jlc2hfdHRsGAUgASgIUgpyZWZyZXNoVHRs');

@$core.Deprecated('Use dictionaryIncrementResponse_Descriptor instead')
const DictionaryIncrementResponse_$json = {
  '1': '_DictionaryIncrementResponse',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `_DictionaryIncrementResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryIncrementResponse_Descriptor = $convert.base64Decode(
    'ChxfRGljdGlvbmFyeUluY3JlbWVudFJlc3BvbnNlEhQKBXZhbHVlGAEgASgDUgV2YWx1ZQ==');

@$core.Deprecated('Use dictionaryDeleteRequest_Descriptor instead')
const DictionaryDeleteRequest_$json = {
  '1': '_DictionaryDeleteRequest',
  '2': [
    {'1': 'dictionary_name', '3': 1, '4': 1, '5': 12, '10': 'dictionaryName'},
    {'1': 'some', '3': 2, '4': 1, '5': 11, '6': '.cache_client._DictionaryDeleteRequest.Some', '9': 0, '10': 'some'},
    {'1': 'all', '3': 3, '4': 1, '5': 11, '6': '.cache_client._DictionaryDeleteRequest.All', '9': 0, '10': 'all'},
  ],
  '3': [DictionaryDeleteRequest__Some$json, DictionaryDeleteRequest__All$json],
  '8': [
    {'1': 'delete'},
  ],
};

@$core.Deprecated('Use dictionaryDeleteRequest_Descriptor instead')
const DictionaryDeleteRequest__Some$json = {
  '1': 'Some',
  '2': [
    {'1': 'fields', '3': 1, '4': 3, '5': 12, '10': 'fields'},
  ],
};

@$core.Deprecated('Use dictionaryDeleteRequest_Descriptor instead')
const DictionaryDeleteRequest__All$json = {
  '1': 'All',
};

/// Descriptor for `_DictionaryDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryDeleteRequest_Descriptor = $convert.base64Decode(
    'ChhfRGljdGlvbmFyeURlbGV0ZVJlcXVlc3QSJwoPZGljdGlvbmFyeV9uYW1lGAEgASgMUg5kaW'
    'N0aW9uYXJ5TmFtZRJBCgRzb21lGAIgASgLMisuY2FjaGVfY2xpZW50Ll9EaWN0aW9uYXJ5RGVs'
    'ZXRlUmVxdWVzdC5Tb21lSABSBHNvbWUSPgoDYWxsGAMgASgLMiouY2FjaGVfY2xpZW50Ll9EaW'
    'N0aW9uYXJ5RGVsZXRlUmVxdWVzdC5BbGxIAFIDYWxsGh4KBFNvbWUSFgoGZmllbGRzGAEgAygM'
    'UgZmaWVsZHMaBQoDQWxsQggKBmRlbGV0ZQ==');

@$core.Deprecated('Use dictionaryDeleteResponse_Descriptor instead')
const DictionaryDeleteResponse_$json = {
  '1': '_DictionaryDeleteResponse',
};

/// Descriptor for `_DictionaryDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryDeleteResponse_Descriptor = $convert.base64Decode(
    'ChlfRGljdGlvbmFyeURlbGV0ZVJlc3BvbnNl');

@$core.Deprecated('Use dictionaryLengthRequest_Descriptor instead')
const DictionaryLengthRequest_$json = {
  '1': '_DictionaryLengthRequest',
  '2': [
    {'1': 'dictionary_name', '3': 1, '4': 1, '5': 12, '10': 'dictionaryName'},
  ],
};

/// Descriptor for `_DictionaryLengthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryLengthRequest_Descriptor = $convert.base64Decode(
    'ChhfRGljdGlvbmFyeUxlbmd0aFJlcXVlc3QSJwoPZGljdGlvbmFyeV9uYW1lGAEgASgMUg5kaW'
    'N0aW9uYXJ5TmFtZQ==');

@$core.Deprecated('Use dictionaryLengthResponse_Descriptor instead')
const DictionaryLengthResponse_$json = {
  '1': '_DictionaryLengthResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._DictionaryLengthResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._DictionaryLengthResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [DictionaryLengthResponse___Found$json, DictionaryLengthResponse___Missing$json],
  '8': [
    {'1': 'dictionary'},
  ],
};

@$core.Deprecated('Use dictionaryLengthResponse_Descriptor instead')
const DictionaryLengthResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 13, '10': 'length'},
  ],
};

@$core.Deprecated('Use dictionaryLengthResponse_Descriptor instead')
const DictionaryLengthResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_DictionaryLengthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictionaryLengthResponse_Descriptor = $convert.base64Decode(
    'ChlfRGljdGlvbmFyeUxlbmd0aFJlc3BvbnNlEkYKBWZvdW5kGAEgASgLMi4uY2FjaGVfY2xpZW'
    '50Ll9EaWN0aW9uYXJ5TGVuZ3RoUmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5kEkwKB21pc3NpbmcY'
    'AiABKAsyMC5jYWNoZV9jbGllbnQuX0RpY3Rpb25hcnlMZW5ndGhSZXNwb25zZS5fTWlzc2luZ0'
    'gAUgdtaXNzaW5nGiAKBl9Gb3VuZBIWCgZsZW5ndGgYASABKA1SBmxlbmd0aBoKCghfTWlzc2lu'
    'Z0IMCgpkaWN0aW9uYXJ5');

@$core.Deprecated('Use setFetchRequest_Descriptor instead')
const SetFetchRequest_$json = {
  '1': '_SetFetchRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
  ],
};

/// Descriptor for `_SetFetchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFetchRequest_Descriptor = $convert.base64Decode(
    'ChBfU2V0RmV0Y2hSZXF1ZXN0EhkKCHNldF9uYW1lGAEgASgMUgdzZXROYW1l');

@$core.Deprecated('Use setFetchResponse_Descriptor instead')
const SetFetchResponse_$json = {
  '1': '_SetFetchResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SetFetchResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetFetchResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SetFetchResponse___Found$json, SetFetchResponse___Missing$json],
  '8': [
    {'1': 'set'},
  ],
};

@$core.Deprecated('Use setFetchResponse_Descriptor instead')
const SetFetchResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 12, '10': 'elements'},
  ],
};

@$core.Deprecated('Use setFetchResponse_Descriptor instead')
const SetFetchResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SetFetchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFetchResponse_Descriptor = $convert.base64Decode(
    'ChFfU2V0RmV0Y2hSZXNwb25zZRI+CgVmb3VuZBgBIAEoCzImLmNhY2hlX2NsaWVudC5fU2V0Rm'
    'V0Y2hSZXNwb25zZS5fRm91bmRIAFIFZm91bmQSRAoHbWlzc2luZxgCIAEoCzIoLmNhY2hlX2Ns'
    'aWVudC5fU2V0RmV0Y2hSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGiQKBl9Gb3VuZBIaCg'
    'hlbGVtZW50cxgBIAMoDFIIZWxlbWVudHMaCgoIX01pc3NpbmdCBQoDc2V0');

@$core.Deprecated('Use setUnionRequest_Descriptor instead')
const SetUnionRequest_$json = {
  '1': '_SetUnionRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'elements', '3': 2, '4': 3, '5': 12, '10': 'elements'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 4, '4': 1, '5': 8, '10': 'refreshTtl'},
  ],
};

/// Descriptor for `_SetUnionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUnionRequest_Descriptor = $convert.base64Decode(
    'ChBfU2V0VW5pb25SZXF1ZXN0EhkKCHNldF9uYW1lGAEgASgMUgdzZXROYW1lEhoKCGVsZW1lbn'
    'RzGAIgAygMUghlbGVtZW50cxIpChB0dGxfbWlsbGlzZWNvbmRzGAMgASgEUg90dGxNaWxsaXNl'
    'Y29uZHMSHwoLcmVmcmVzaF90dGwYBCABKAhSCnJlZnJlc2hUdGw=');

@$core.Deprecated('Use setUnionResponse_Descriptor instead')
const SetUnionResponse_$json = {
  '1': '_SetUnionResponse',
};

/// Descriptor for `_SetUnionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUnionResponse_Descriptor = $convert.base64Decode(
    'ChFfU2V0VW5pb25SZXNwb25zZQ==');

@$core.Deprecated('Use setDifferenceRequest_Descriptor instead')
const SetDifferenceRequest_$json = {
  '1': '_SetDifferenceRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'minuend', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetDifferenceRequest._Minuend', '9': 0, '10': 'minuend'},
    {'1': 'subtrahend', '3': 3, '4': 1, '5': 11, '6': '.cache_client._SetDifferenceRequest._Subtrahend', '9': 0, '10': 'subtrahend'},
  ],
  '3': [SetDifferenceRequest___Minuend$json, SetDifferenceRequest___Subtrahend$json],
  '8': [
    {'1': 'difference'},
  ],
};

@$core.Deprecated('Use setDifferenceRequest_Descriptor instead')
const SetDifferenceRequest___Minuend$json = {
  '1': '_Minuend',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 12, '10': 'elements'},
  ],
};

@$core.Deprecated('Use setDifferenceRequest_Descriptor instead')
const SetDifferenceRequest___Subtrahend$json = {
  '1': '_Subtrahend',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SetDifferenceRequest._Subtrahend._Set', '9': 0, '10': 'set'},
    {'1': 'identity', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetDifferenceRequest._Subtrahend._Identity', '9': 0, '10': 'identity'},
  ],
  '3': [SetDifferenceRequest___Subtrahend__Set$json, SetDifferenceRequest___Subtrahend__Identity$json],
  '8': [
    {'1': 'subtrahend_set'},
  ],
};

@$core.Deprecated('Use setDifferenceRequest_Descriptor instead')
const SetDifferenceRequest___Subtrahend__Set$json = {
  '1': '_Set',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 12, '10': 'elements'},
  ],
};

@$core.Deprecated('Use setDifferenceRequest_Descriptor instead')
const SetDifferenceRequest___Subtrahend__Identity$json = {
  '1': '_Identity',
};

/// Descriptor for `_SetDifferenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDifferenceRequest_Descriptor = $convert.base64Decode(
    'ChVfU2V0RGlmZmVyZW5jZVJlcXVlc3QSGQoIc2V0X25hbWUYASABKAxSB3NldE5hbWUSSAoHbW'
    'ludWVuZBgCIAEoCzIsLmNhY2hlX2NsaWVudC5fU2V0RGlmZmVyZW5jZVJlcXVlc3QuX01pbnVl'
    'bmRIAFIHbWludWVuZBJRCgpzdWJ0cmFoZW5kGAMgASgLMi8uY2FjaGVfY2xpZW50Ll9TZXREaW'
    'ZmZXJlbmNlUmVxdWVzdC5fU3VidHJhaGVuZEgAUgpzdWJ0cmFoZW5kGiYKCF9NaW51ZW5kEhoK'
    'CGVsZW1lbnRzGAEgAygMUghlbGVtZW50cxrzAQoLX1N1YnRyYWhlbmQSSAoDc2V0GAEgASgLMj'
    'QuY2FjaGVfY2xpZW50Ll9TZXREaWZmZXJlbmNlUmVxdWVzdC5fU3VidHJhaGVuZC5fU2V0SABS'
    'A3NldBJXCghpZGVudGl0eRgCIAEoCzI5LmNhY2hlX2NsaWVudC5fU2V0RGlmZmVyZW5jZVJlcX'
    'Vlc3QuX1N1YnRyYWhlbmQuX0lkZW50aXR5SABSCGlkZW50aXR5GiIKBF9TZXQSGgoIZWxlbWVu'
    'dHMYASADKAxSCGVsZW1lbnRzGgsKCV9JZGVudGl0eUIQCg5zdWJ0cmFoZW5kX3NldEIMCgpkaW'
    'ZmZXJlbmNl');

@$core.Deprecated('Use setDifferenceResponse_Descriptor instead')
const SetDifferenceResponse_$json = {
  '1': '_SetDifferenceResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SetDifferenceResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetDifferenceResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SetDifferenceResponse___Found$json, SetDifferenceResponse___Missing$json],
  '8': [
    {'1': 'set'},
  ],
};

@$core.Deprecated('Use setDifferenceResponse_Descriptor instead')
const SetDifferenceResponse___Found$json = {
  '1': '_Found',
};

@$core.Deprecated('Use setDifferenceResponse_Descriptor instead')
const SetDifferenceResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SetDifferenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDifferenceResponse_Descriptor = $convert.base64Decode(
    'ChZfU2V0RGlmZmVyZW5jZVJlc3BvbnNlEkMKBWZvdW5kGAEgASgLMisuY2FjaGVfY2xpZW50Ll'
    '9TZXREaWZmZXJlbmNlUmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5kEkkKB21pc3NpbmcYAiABKAsy'
    'LS5jYWNoZV9jbGllbnQuX1NldERpZmZlcmVuY2VSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW'
    '5nGggKBl9Gb3VuZBoKCghfTWlzc2luZ0IFCgNzZXQ=');

@$core.Deprecated('Use setContainsRequest_Descriptor instead')
const SetContainsRequest_$json = {
  '1': '_SetContainsRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'elements', '3': 2, '4': 3, '5': 12, '10': 'elements'},
  ],
};

/// Descriptor for `_SetContainsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setContainsRequest_Descriptor = $convert.base64Decode(
    'ChNfU2V0Q29udGFpbnNSZXF1ZXN0EhkKCHNldF9uYW1lGAEgASgMUgdzZXROYW1lEhoKCGVsZW'
    '1lbnRzGAIgAygMUghlbGVtZW50cw==');

@$core.Deprecated('Use setContainsResponse_Descriptor instead')
const SetContainsResponse_$json = {
  '1': '_SetContainsResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SetContainsResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetContainsResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SetContainsResponse___Found$json, SetContainsResponse___Missing$json],
  '8': [
    {'1': 'set'},
  ],
};

@$core.Deprecated('Use setContainsResponse_Descriptor instead')
const SetContainsResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'contains', '3': 1, '4': 3, '5': 8, '10': 'contains'},
  ],
};

@$core.Deprecated('Use setContainsResponse_Descriptor instead')
const SetContainsResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SetContainsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setContainsResponse_Descriptor = $convert.base64Decode(
    'ChRfU2V0Q29udGFpbnNSZXNwb25zZRJBCgVmb3VuZBgBIAEoCzIpLmNhY2hlX2NsaWVudC5fU2'
    'V0Q29udGFpbnNSZXNwb25zZS5fRm91bmRIAFIFZm91bmQSRwoHbWlzc2luZxgCIAEoCzIrLmNh'
    'Y2hlX2NsaWVudC5fU2V0Q29udGFpbnNSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGiQKBl'
    '9Gb3VuZBIaCghjb250YWlucxgBIAMoCFIIY29udGFpbnMaCgoIX01pc3NpbmdCBQoDc2V0');

@$core.Deprecated('Use setLengthRequest_Descriptor instead')
const SetLengthRequest_$json = {
  '1': '_SetLengthRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
  ],
};

/// Descriptor for `_SetLengthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setLengthRequest_Descriptor = $convert.base64Decode(
    'ChFfU2V0TGVuZ3RoUmVxdWVzdBIZCghzZXRfbmFtZRgBIAEoDFIHc2V0TmFtZQ==');

@$core.Deprecated('Use setLengthResponse_Descriptor instead')
const SetLengthResponse_$json = {
  '1': '_SetLengthResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SetLengthResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetLengthResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SetLengthResponse___Found$json, SetLengthResponse___Missing$json],
  '8': [
    {'1': 'set'},
  ],
};

@$core.Deprecated('Use setLengthResponse_Descriptor instead')
const SetLengthResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 13, '10': 'length'},
  ],
};

@$core.Deprecated('Use setLengthResponse_Descriptor instead')
const SetLengthResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SetLengthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setLengthResponse_Descriptor = $convert.base64Decode(
    'ChJfU2V0TGVuZ3RoUmVzcG9uc2USPwoFZm91bmQYASABKAsyJy5jYWNoZV9jbGllbnQuX1NldE'
    'xlbmd0aFJlc3BvbnNlLl9Gb3VuZEgAUgVmb3VuZBJFCgdtaXNzaW5nGAIgASgLMikuY2FjaGVf'
    'Y2xpZW50Ll9TZXRMZW5ndGhSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGiAKBl9Gb3VuZB'
    'IWCgZsZW5ndGgYASABKA1SBmxlbmd0aBoKCghfTWlzc2luZ0IFCgNzZXQ=');

@$core.Deprecated('Use setPopRequest_Descriptor instead')
const SetPopRequest_$json = {
  '1': '_SetPopRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'count', '3': 2, '4': 1, '5': 13, '10': 'count'},
  ],
};

/// Descriptor for `_SetPopRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setPopRequest_Descriptor = $convert.base64Decode(
    'Cg5fU2V0UG9wUmVxdWVzdBIZCghzZXRfbmFtZRgBIAEoDFIHc2V0TmFtZRIUCgVjb3VudBgCIA'
    'EoDVIFY291bnQ=');

@$core.Deprecated('Use setPopResponse_Descriptor instead')
const SetPopResponse_$json = {
  '1': '_SetPopResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SetPopResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SetPopResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SetPopResponse___Found$json, SetPopResponse___Missing$json],
  '8': [
    {'1': 'set'},
  ],
};

@$core.Deprecated('Use setPopResponse_Descriptor instead')
const SetPopResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 12, '10': 'elements'},
  ],
};

@$core.Deprecated('Use setPopResponse_Descriptor instead')
const SetPopResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SetPopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setPopResponse_Descriptor = $convert.base64Decode(
    'Cg9fU2V0UG9wUmVzcG9uc2USPAoFZm91bmQYASABKAsyJC5jYWNoZV9jbGllbnQuX1NldFBvcF'
    'Jlc3BvbnNlLl9Gb3VuZEgAUgVmb3VuZBJCCgdtaXNzaW5nGAIgASgLMiYuY2FjaGVfY2xpZW50'
    'Ll9TZXRQb3BSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGiQKBl9Gb3VuZBIaCghlbGVtZW'
    '50cxgBIAMoDFIIZWxlbWVudHMaCgoIX01pc3NpbmdCBQoDc2V0');

@$core.Deprecated('Use listConcatenateFrontRequest_Descriptor instead')
const ListConcatenateFrontRequest_$json = {
  '1': '_ListConcatenateFrontRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'values', '3': 2, '4': 3, '5': 12, '10': 'values'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 4, '4': 1, '5': 8, '10': 'refreshTtl'},
    {'1': 'truncate_back_to_size', '3': 5, '4': 1, '5': 13, '10': 'truncateBackToSize'},
  ],
};

/// Descriptor for `_ListConcatenateFrontRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listConcatenateFrontRequest_Descriptor = $convert.base64Decode(
    'ChxfTGlzdENvbmNhdGVuYXRlRnJvbnRSZXF1ZXN0EhsKCWxpc3RfbmFtZRgBIAEoDFIIbGlzdE'
    '5hbWUSFgoGdmFsdWVzGAIgAygMUgZ2YWx1ZXMSKQoQdHRsX21pbGxpc2Vjb25kcxgDIAEoBFIP'
    'dHRsTWlsbGlzZWNvbmRzEh8KC3JlZnJlc2hfdHRsGAQgASgIUgpyZWZyZXNoVHRsEjEKFXRydW'
    '5jYXRlX2JhY2tfdG9fc2l6ZRgFIAEoDVISdHJ1bmNhdGVCYWNrVG9TaXpl');

@$core.Deprecated('Use listConcatenateFrontResponse_Descriptor instead')
const ListConcatenateFrontResponse_$json = {
  '1': '_ListConcatenateFrontResponse',
  '2': [
    {'1': 'list_length', '3': 1, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

/// Descriptor for `_ListConcatenateFrontResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listConcatenateFrontResponse_Descriptor = $convert.base64Decode(
    'Ch1fTGlzdENvbmNhdGVuYXRlRnJvbnRSZXNwb25zZRIfCgtsaXN0X2xlbmd0aBgBIAEoDVIKbG'
    'lzdExlbmd0aA==');

@$core.Deprecated('Use listConcatenateBackRequest_Descriptor instead')
const ListConcatenateBackRequest_$json = {
  '1': '_ListConcatenateBackRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'values', '3': 2, '4': 3, '5': 12, '10': 'values'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 4, '4': 1, '5': 8, '10': 'refreshTtl'},
    {'1': 'truncate_front_to_size', '3': 5, '4': 1, '5': 13, '10': 'truncateFrontToSize'},
  ],
};

/// Descriptor for `_ListConcatenateBackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listConcatenateBackRequest_Descriptor = $convert.base64Decode(
    'ChtfTGlzdENvbmNhdGVuYXRlQmFja1JlcXVlc3QSGwoJbGlzdF9uYW1lGAEgASgMUghsaXN0Tm'
    'FtZRIWCgZ2YWx1ZXMYAiADKAxSBnZhbHVlcxIpChB0dGxfbWlsbGlzZWNvbmRzGAMgASgEUg90'
    'dGxNaWxsaXNlY29uZHMSHwoLcmVmcmVzaF90dGwYBCABKAhSCnJlZnJlc2hUdGwSMwoWdHJ1bm'
    'NhdGVfZnJvbnRfdG9fc2l6ZRgFIAEoDVITdHJ1bmNhdGVGcm9udFRvU2l6ZQ==');

@$core.Deprecated('Use listConcatenateBackResponse_Descriptor instead')
const ListConcatenateBackResponse_$json = {
  '1': '_ListConcatenateBackResponse',
  '2': [
    {'1': 'list_length', '3': 1, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

/// Descriptor for `_ListConcatenateBackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listConcatenateBackResponse_Descriptor = $convert.base64Decode(
    'ChxfTGlzdENvbmNhdGVuYXRlQmFja1Jlc3BvbnNlEh8KC2xpc3RfbGVuZ3RoGAEgASgNUgpsaX'
    'N0TGVuZ3Ro');

@$core.Deprecated('Use listPushFrontRequest_Descriptor instead')
const ListPushFrontRequest_$json = {
  '1': '_ListPushFrontRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 4, '4': 1, '5': 8, '10': 'refreshTtl'},
    {'1': 'truncate_back_to_size', '3': 5, '4': 1, '5': 13, '10': 'truncateBackToSize'},
  ],
};

/// Descriptor for `_ListPushFrontRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPushFrontRequest_Descriptor = $convert.base64Decode(
    'ChVfTGlzdFB1c2hGcm9udFJlcXVlc3QSGwoJbGlzdF9uYW1lGAEgASgMUghsaXN0TmFtZRIUCg'
    'V2YWx1ZRgCIAEoDFIFdmFsdWUSKQoQdHRsX21pbGxpc2Vjb25kcxgDIAEoBFIPdHRsTWlsbGlz'
    'ZWNvbmRzEh8KC3JlZnJlc2hfdHRsGAQgASgIUgpyZWZyZXNoVHRsEjEKFXRydW5jYXRlX2JhY2'
    'tfdG9fc2l6ZRgFIAEoDVISdHJ1bmNhdGVCYWNrVG9TaXpl');

@$core.Deprecated('Use listPushFrontResponse_Descriptor instead')
const ListPushFrontResponse_$json = {
  '1': '_ListPushFrontResponse',
  '2': [
    {'1': 'list_length', '3': 1, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

/// Descriptor for `_ListPushFrontResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPushFrontResponse_Descriptor = $convert.base64Decode(
    'ChZfTGlzdFB1c2hGcm9udFJlc3BvbnNlEh8KC2xpc3RfbGVuZ3RoGAEgASgNUgpsaXN0TGVuZ3'
    'Ro');

@$core.Deprecated('Use listPushBackRequest_Descriptor instead')
const ListPushBackRequest_$json = {
  '1': '_ListPushBackRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 4, '4': 1, '5': 8, '10': 'refreshTtl'},
    {'1': 'truncate_front_to_size', '3': 5, '4': 1, '5': 13, '10': 'truncateFrontToSize'},
  ],
};

/// Descriptor for `_ListPushBackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPushBackRequest_Descriptor = $convert.base64Decode(
    'ChRfTGlzdFB1c2hCYWNrUmVxdWVzdBIbCglsaXN0X25hbWUYASABKAxSCGxpc3ROYW1lEhQKBX'
    'ZhbHVlGAIgASgMUgV2YWx1ZRIpChB0dGxfbWlsbGlzZWNvbmRzGAMgASgEUg90dGxNaWxsaXNl'
    'Y29uZHMSHwoLcmVmcmVzaF90dGwYBCABKAhSCnJlZnJlc2hUdGwSMwoWdHJ1bmNhdGVfZnJvbn'
    'RfdG9fc2l6ZRgFIAEoDVITdHJ1bmNhdGVGcm9udFRvU2l6ZQ==');

@$core.Deprecated('Use listPushBackResponse_Descriptor instead')
const ListPushBackResponse_$json = {
  '1': '_ListPushBackResponse',
  '2': [
    {'1': 'list_length', '3': 1, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

/// Descriptor for `_ListPushBackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPushBackResponse_Descriptor = $convert.base64Decode(
    'ChVfTGlzdFB1c2hCYWNrUmVzcG9uc2USHwoLbGlzdF9sZW5ndGgYASABKA1SCmxpc3RMZW5ndG'
    'g=');

@$core.Deprecated('Use listPopFrontRequest_Descriptor instead')
const ListPopFrontRequest_$json = {
  '1': '_ListPopFrontRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
  ],
};

/// Descriptor for `_ListPopFrontRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPopFrontRequest_Descriptor = $convert.base64Decode(
    'ChRfTGlzdFBvcEZyb250UmVxdWVzdBIbCglsaXN0X25hbWUYASABKAxSCGxpc3ROYW1l');

@$core.Deprecated('Use listPopFrontResponse_Descriptor instead')
const ListPopFrontResponse_$json = {
  '1': '_ListPopFrontResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ListPopFrontResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListPopFrontResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ListPopFrontResponse___Found$json, ListPopFrontResponse___Missing$json],
  '8': [
    {'1': 'list'},
  ],
};

@$core.Deprecated('Use listPopFrontResponse_Descriptor instead')
const ListPopFrontResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'front', '3': 1, '4': 1, '5': 12, '10': 'front'},
    {'1': 'list_length', '3': 2, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

@$core.Deprecated('Use listPopFrontResponse_Descriptor instead')
const ListPopFrontResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ListPopFrontResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPopFrontResponse_Descriptor = $convert.base64Decode(
    'ChVfTGlzdFBvcEZyb250UmVzcG9uc2USQgoFZm91bmQYASABKAsyKi5jYWNoZV9jbGllbnQuX0'
    'xpc3RQb3BGcm9udFJlc3BvbnNlLl9Gb3VuZEgAUgVmb3VuZBJICgdtaXNzaW5nGAIgASgLMiwu'
    'Y2FjaGVfY2xpZW50Ll9MaXN0UG9wRnJvbnRSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGj'
    '8KBl9Gb3VuZBIUCgVmcm9udBgBIAEoDFIFZnJvbnQSHwoLbGlzdF9sZW5ndGgYAiABKA1SCmxp'
    'c3RMZW5ndGgaCgoIX01pc3NpbmdCBgoEbGlzdA==');

@$core.Deprecated('Use listPopBackRequest_Descriptor instead')
const ListPopBackRequest_$json = {
  '1': '_ListPopBackRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
  ],
};

/// Descriptor for `_ListPopBackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPopBackRequest_Descriptor = $convert.base64Decode(
    'ChNfTGlzdFBvcEJhY2tSZXF1ZXN0EhsKCWxpc3RfbmFtZRgBIAEoDFIIbGlzdE5hbWU=');

@$core.Deprecated('Use listPopBackResponse_Descriptor instead')
const ListPopBackResponse_$json = {
  '1': '_ListPopBackResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ListPopBackResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListPopBackResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ListPopBackResponse___Found$json, ListPopBackResponse___Missing$json],
  '8': [
    {'1': 'list'},
  ],
};

@$core.Deprecated('Use listPopBackResponse_Descriptor instead')
const ListPopBackResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'back', '3': 1, '4': 1, '5': 12, '10': 'back'},
    {'1': 'list_length', '3': 2, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

@$core.Deprecated('Use listPopBackResponse_Descriptor instead')
const ListPopBackResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ListPopBackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPopBackResponse_Descriptor = $convert.base64Decode(
    'ChRfTGlzdFBvcEJhY2tSZXNwb25zZRJBCgVmb3VuZBgBIAEoCzIpLmNhY2hlX2NsaWVudC5fTG'
    'lzdFBvcEJhY2tSZXNwb25zZS5fRm91bmRIAFIFZm91bmQSRwoHbWlzc2luZxgCIAEoCzIrLmNh'
    'Y2hlX2NsaWVudC5fTGlzdFBvcEJhY2tSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGj0KBl'
    '9Gb3VuZBISCgRiYWNrGAEgASgMUgRiYWNrEh8KC2xpc3RfbGVuZ3RoGAIgASgNUgpsaXN0TGVu'
    'Z3RoGgoKCF9NaXNzaW5nQgYKBGxpc3Q=');

@$core.Deprecated('Use listRange_Descriptor instead')
const ListRange_$json = {
  '1': '_ListRange',
  '2': [
    {'1': 'begin_index', '3': 1, '4': 1, '5': 13, '10': 'beginIndex'},
    {'1': 'count', '3': 2, '4': 1, '5': 13, '10': 'count'},
  ],
};

/// Descriptor for `_ListRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRange_Descriptor = $convert.base64Decode(
    'CgpfTGlzdFJhbmdlEh8KC2JlZ2luX2luZGV4GAEgASgNUgpiZWdpbkluZGV4EhQKBWNvdW50GA'
    'IgASgNUgVjb3VudA==');

@$core.Deprecated('Use listEraseRequest_Descriptor instead')
const ListEraseRequest_$json = {
  '1': '_ListEraseRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'some', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListEraseRequest._ListRanges', '9': 0, '10': 'some'},
    {'1': 'all', '3': 3, '4': 1, '5': 11, '6': '.cache_client._ListEraseRequest._All', '9': 0, '10': 'all'},
  ],
  '3': [ListEraseRequest___All$json, ListEraseRequest___ListRanges$json],
  '8': [
    {'1': 'erase'},
  ],
};

@$core.Deprecated('Use listEraseRequest_Descriptor instead')
const ListEraseRequest___All$json = {
  '1': '_All',
};

@$core.Deprecated('Use listEraseRequest_Descriptor instead')
const ListEraseRequest___ListRanges$json = {
  '1': '_ListRanges',
  '2': [
    {'1': 'ranges', '3': 1, '4': 3, '5': 11, '6': '.cache_client._ListRange', '10': 'ranges'},
  ],
};

/// Descriptor for `_ListEraseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEraseRequest_Descriptor = $convert.base64Decode(
    'ChFfTGlzdEVyYXNlUmVxdWVzdBIbCglsaXN0X25hbWUYASABKAxSCGxpc3ROYW1lEkEKBHNvbW'
    'UYAiABKAsyKy5jYWNoZV9jbGllbnQuX0xpc3RFcmFzZVJlcXVlc3QuX0xpc3RSYW5nZXNIAFIE'
    'c29tZRI4CgNhbGwYAyABKAsyJC5jYWNoZV9jbGllbnQuX0xpc3RFcmFzZVJlcXVlc3QuX0FsbE'
    'gAUgNhbGwaBgoEX0FsbBo/CgtfTGlzdFJhbmdlcxIwCgZyYW5nZXMYASADKAsyGC5jYWNoZV9j'
    'bGllbnQuX0xpc3RSYW5nZVIGcmFuZ2VzQgcKBWVyYXNl');

@$core.Deprecated('Use listEraseResponse_Descriptor instead')
const ListEraseResponse_$json = {
  '1': '_ListEraseResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ListEraseResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListEraseResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ListEraseResponse___Found$json, ListEraseResponse___Missing$json],
  '8': [
    {'1': 'list'},
  ],
};

@$core.Deprecated('Use listEraseResponse_Descriptor instead')
const ListEraseResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'list_length', '3': 1, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

@$core.Deprecated('Use listEraseResponse_Descriptor instead')
const ListEraseResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ListEraseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEraseResponse_Descriptor = $convert.base64Decode(
    'ChJfTGlzdEVyYXNlUmVzcG9uc2USPwoFZm91bmQYASABKAsyJy5jYWNoZV9jbGllbnQuX0xpc3'
    'RFcmFzZVJlc3BvbnNlLl9Gb3VuZEgAUgVmb3VuZBJFCgdtaXNzaW5nGAIgASgLMikuY2FjaGVf'
    'Y2xpZW50Ll9MaXN0RXJhc2VSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGikKBl9Gb3VuZB'
    'IfCgtsaXN0X2xlbmd0aBgBIAEoDVIKbGlzdExlbmd0aBoKCghfTWlzc2luZ0IGCgRsaXN0');

@$core.Deprecated('Use listRemoveRequest_Descriptor instead')
const ListRemoveRequest_$json = {
  '1': '_ListRemoveRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'all_elements_with_value', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'allElementsWithValue'},
  ],
  '8': [
    {'1': 'remove'},
  ],
};

/// Descriptor for `_ListRemoveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRemoveRequest_Descriptor = $convert.base64Decode(
    'ChJfTGlzdFJlbW92ZVJlcXVlc3QSGwoJbGlzdF9uYW1lGAEgASgMUghsaXN0TmFtZRI3ChdhbG'
    'xfZWxlbWVudHNfd2l0aF92YWx1ZRgCIAEoDEgAUhRhbGxFbGVtZW50c1dpdGhWYWx1ZUIICgZy'
    'ZW1vdmU=');

@$core.Deprecated('Use listRemoveResponse_Descriptor instead')
const ListRemoveResponse_$json = {
  '1': '_ListRemoveResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ListRemoveResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListRemoveResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ListRemoveResponse___Found$json, ListRemoveResponse___Missing$json],
  '8': [
    {'1': 'list'},
  ],
};

@$core.Deprecated('Use listRemoveResponse_Descriptor instead')
const ListRemoveResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'list_length', '3': 1, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

@$core.Deprecated('Use listRemoveResponse_Descriptor instead')
const ListRemoveResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ListRemoveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRemoveResponse_Descriptor = $convert.base64Decode(
    'ChNfTGlzdFJlbW92ZVJlc3BvbnNlEkAKBWZvdW5kGAEgASgLMiguY2FjaGVfY2xpZW50Ll9MaX'
    'N0UmVtb3ZlUmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5kEkYKB21pc3NpbmcYAiABKAsyKi5jYWNo'
    'ZV9jbGllbnQuX0xpc3RSZW1vdmVSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGikKBl9Gb3'
    'VuZBIfCgtsaXN0X2xlbmd0aBgBIAEoDVIKbGlzdExlbmd0aBoKCghfTWlzc2luZ0IGCgRsaXN0');

@$core.Deprecated('Use unbounded_Descriptor instead')
const Unbounded_$json = {
  '1': '_Unbounded',
};

/// Descriptor for `_Unbounded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbounded_Descriptor = $convert.base64Decode(
    'CgpfVW5ib3VuZGVk');

@$core.Deprecated('Use listFetchRequest_Descriptor instead')
const ListFetchRequest_$json = {
  '1': '_ListFetchRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'unbounded_start', '3': 2, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 0, '10': 'unboundedStart'},
    {'1': 'inclusive_start', '3': 3, '4': 1, '5': 17, '9': 0, '10': 'inclusiveStart'},
    {'1': 'unbounded_end', '3': 4, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 1, '10': 'unboundedEnd'},
    {'1': 'exclusive_end', '3': 5, '4': 1, '5': 17, '9': 1, '10': 'exclusiveEnd'},
  ],
  '8': [
    {'1': 'start_index'},
    {'1': 'end_index'},
  ],
};

/// Descriptor for `_ListFetchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFetchRequest_Descriptor = $convert.base64Decode(
    'ChFfTGlzdEZldGNoUmVxdWVzdBIbCglsaXN0X25hbWUYASABKAxSCGxpc3ROYW1lEkMKD3VuYm'
    '91bmRlZF9zdGFydBgCIAEoCzIYLmNhY2hlX2NsaWVudC5fVW5ib3VuZGVkSABSDnVuYm91bmRl'
    'ZFN0YXJ0EikKD2luY2x1c2l2ZV9zdGFydBgDIAEoEUgAUg5pbmNsdXNpdmVTdGFydBI/Cg11bm'
    'JvdW5kZWRfZW5kGAQgASgLMhguY2FjaGVfY2xpZW50Ll9VbmJvdW5kZWRIAVIMdW5ib3VuZGVk'
    'RW5kEiUKDWV4Y2x1c2l2ZV9lbmQYBSABKBFIAVIMZXhjbHVzaXZlRW5kQg0KC3N0YXJ0X2luZG'
    'V4QgsKCWVuZF9pbmRleA==');

@$core.Deprecated('Use listRetainRequest_Descriptor instead')
const ListRetainRequest_$json = {
  '1': '_ListRetainRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
    {'1': 'unbounded_start', '3': 2, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 0, '10': 'unboundedStart'},
    {'1': 'inclusive_start', '3': 3, '4': 1, '5': 17, '9': 0, '10': 'inclusiveStart'},
    {'1': 'unbounded_end', '3': 4, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 1, '10': 'unboundedEnd'},
    {'1': 'exclusive_end', '3': 5, '4': 1, '5': 17, '9': 1, '10': 'exclusiveEnd'},
    {'1': 'ttl_milliseconds', '3': 6, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 7, '4': 1, '5': 8, '10': 'refreshTtl'},
  ],
  '8': [
    {'1': 'start_index'},
    {'1': 'end_index'},
  ],
};

/// Descriptor for `_ListRetainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRetainRequest_Descriptor = $convert.base64Decode(
    'ChJfTGlzdFJldGFpblJlcXVlc3QSGwoJbGlzdF9uYW1lGAEgASgMUghsaXN0TmFtZRJDCg91bm'
    'JvdW5kZWRfc3RhcnQYAiABKAsyGC5jYWNoZV9jbGllbnQuX1VuYm91bmRlZEgAUg51bmJvdW5k'
    'ZWRTdGFydBIpCg9pbmNsdXNpdmVfc3RhcnQYAyABKBFIAFIOaW5jbHVzaXZlU3RhcnQSPwoNdW'
    '5ib3VuZGVkX2VuZBgEIAEoCzIYLmNhY2hlX2NsaWVudC5fVW5ib3VuZGVkSAFSDHVuYm91bmRl'
    'ZEVuZBIlCg1leGNsdXNpdmVfZW5kGAUgASgRSAFSDGV4Y2x1c2l2ZUVuZBIpChB0dGxfbWlsbG'
    'lzZWNvbmRzGAYgASgEUg90dGxNaWxsaXNlY29uZHMSHwoLcmVmcmVzaF90dGwYByABKAhSCnJl'
    'ZnJlc2hUdGxCDQoLc3RhcnRfaW5kZXhCCwoJZW5kX2luZGV4');

@$core.Deprecated('Use listRetainResponse_Descriptor instead')
const ListRetainResponse_$json = {
  '1': '_ListRetainResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ListRetainResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListRetainResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ListRetainResponse___Found$json, ListRetainResponse___Missing$json],
  '8': [
    {'1': 'list'},
  ],
};

@$core.Deprecated('Use listRetainResponse_Descriptor instead')
const ListRetainResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'list_length', '3': 1, '4': 1, '5': 13, '10': 'listLength'},
  ],
};

@$core.Deprecated('Use listRetainResponse_Descriptor instead')
const ListRetainResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ListRetainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRetainResponse_Descriptor = $convert.base64Decode(
    'ChNfTGlzdFJldGFpblJlc3BvbnNlEkAKBWZvdW5kGAEgASgLMiguY2FjaGVfY2xpZW50Ll9MaX'
    'N0UmV0YWluUmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5kEkYKB21pc3NpbmcYAiABKAsyKi5jYWNo'
    'ZV9jbGllbnQuX0xpc3RSZXRhaW5SZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGikKBl9Gb3'
    'VuZBIfCgtsaXN0X2xlbmd0aBgBIAEoDVIKbGlzdExlbmd0aBoKCghfTWlzc2luZ0IGCgRsaXN0');

@$core.Deprecated('Use listFetchResponse_Descriptor instead')
const ListFetchResponse_$json = {
  '1': '_ListFetchResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ListFetchResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListFetchResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ListFetchResponse___Found$json, ListFetchResponse___Missing$json],
  '8': [
    {'1': 'list'},
  ],
};

@$core.Deprecated('Use listFetchResponse_Descriptor instead')
const ListFetchResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 12, '10': 'values'},
  ],
};

@$core.Deprecated('Use listFetchResponse_Descriptor instead')
const ListFetchResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ListFetchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFetchResponse_Descriptor = $convert.base64Decode(
    'ChJfTGlzdEZldGNoUmVzcG9uc2USPwoFZm91bmQYASABKAsyJy5jYWNoZV9jbGllbnQuX0xpc3'
    'RGZXRjaFJlc3BvbnNlLl9Gb3VuZEgAUgVmb3VuZBJFCgdtaXNzaW5nGAIgASgLMikuY2FjaGVf'
    'Y2xpZW50Ll9MaXN0RmV0Y2hSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGiAKBl9Gb3VuZB'
    'IWCgZ2YWx1ZXMYASADKAxSBnZhbHVlcxoKCghfTWlzc2luZ0IGCgRsaXN0');

@$core.Deprecated('Use listLengthRequest_Descriptor instead')
const ListLengthRequest_$json = {
  '1': '_ListLengthRequest',
  '2': [
    {'1': 'list_name', '3': 1, '4': 1, '5': 12, '10': 'listName'},
  ],
};

/// Descriptor for `_ListLengthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLengthRequest_Descriptor = $convert.base64Decode(
    'ChJfTGlzdExlbmd0aFJlcXVlc3QSGwoJbGlzdF9uYW1lGAEgASgMUghsaXN0TmFtZQ==');

@$core.Deprecated('Use listLengthResponse_Descriptor instead')
const ListLengthResponse_$json = {
  '1': '_ListLengthResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._ListLengthResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._ListLengthResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [ListLengthResponse___Found$json, ListLengthResponse___Missing$json],
  '8': [
    {'1': 'list'},
  ],
};

@$core.Deprecated('Use listLengthResponse_Descriptor instead')
const ListLengthResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 13, '10': 'length'},
  ],
};

@$core.Deprecated('Use listLengthResponse_Descriptor instead')
const ListLengthResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_ListLengthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLengthResponse_Descriptor = $convert.base64Decode(
    'ChNfTGlzdExlbmd0aFJlc3BvbnNlEkAKBWZvdW5kGAEgASgLMiguY2FjaGVfY2xpZW50Ll9MaX'
    'N0TGVuZ3RoUmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5kEkYKB21pc3NpbmcYAiABKAsyKi5jYWNo'
    'ZV9jbGllbnQuX0xpc3RMZW5ndGhSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGiAKBl9Gb3'
    'VuZBIWCgZsZW5ndGgYASABKA1SBmxlbmd0aBoKCghfTWlzc2luZ0IGCgRsaXN0');

@$core.Deprecated('Use sortedSetElement_Descriptor instead')
const SortedSetElement_$json = {
  '1': '_SortedSetElement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
    {'1': 'score', '3': 2, '4': 1, '5': 1, '10': 'score'},
  ],
};

/// Descriptor for `_SortedSetElement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetElement_Descriptor = $convert.base64Decode(
    'ChFfU29ydGVkU2V0RWxlbWVudBIUCgV2YWx1ZRgBIAEoDFIFdmFsdWUSFAoFc2NvcmUYAiABKA'
    'FSBXNjb3Jl');

@$core.Deprecated('Use sortedSetPutRequest_Descriptor instead')
const SortedSetPutRequest_$json = {
  '1': '_SortedSetPutRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'elements', '3': 2, '4': 3, '5': 11, '6': '.cache_client._SortedSetElement', '10': 'elements'},
    {'1': 'ttl_milliseconds', '3': 3, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 4, '4': 1, '5': 8, '10': 'refreshTtl'},
  ],
};

/// Descriptor for `_SortedSetPutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetPutRequest_Descriptor = $convert.base64Decode(
    'ChRfU29ydGVkU2V0UHV0UmVxdWVzdBIZCghzZXRfbmFtZRgBIAEoDFIHc2V0TmFtZRI7CghlbG'
    'VtZW50cxgCIAMoCzIfLmNhY2hlX2NsaWVudC5fU29ydGVkU2V0RWxlbWVudFIIZWxlbWVudHMS'
    'KQoQdHRsX21pbGxpc2Vjb25kcxgDIAEoBFIPdHRsTWlsbGlzZWNvbmRzEh8KC3JlZnJlc2hfdH'
    'RsGAQgASgIUgpyZWZyZXNoVHRs');

@$core.Deprecated('Use sortedSetPutResponse_Descriptor instead')
const SortedSetPutResponse_$json = {
  '1': '_SortedSetPutResponse',
};

/// Descriptor for `_SortedSetPutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetPutResponse_Descriptor = $convert.base64Decode(
    'ChVfU29ydGVkU2V0UHV0UmVzcG9uc2U=');

@$core.Deprecated('Use sortedSetFetchRequest_Descriptor instead')
const SortedSetFetchRequest_$json = {
  '1': '_SortedSetFetchRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'order', '3': 2, '4': 1, '5': 14, '6': '.cache_client._SortedSetFetchRequest.Order', '10': 'order'},
    {'1': 'with_scores', '3': 3, '4': 1, '5': 8, '10': 'withScores'},
    {'1': 'by_index', '3': 4, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchRequest._ByIndex', '9': 0, '10': 'byIndex'},
    {'1': 'by_score', '3': 5, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchRequest._ByScore', '9': 0, '10': 'byScore'},
  ],
  '3': [SortedSetFetchRequest___ByIndex$json, SortedSetFetchRequest___ByScore$json],
  '4': [SortedSetFetchRequest__Order$json],
  '8': [
    {'1': 'range'},
  ],
};

@$core.Deprecated('Use sortedSetFetchRequest_Descriptor instead')
const SortedSetFetchRequest___ByIndex$json = {
  '1': '_ByIndex',
  '2': [
    {'1': 'unbounded_start', '3': 1, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 0, '10': 'unboundedStart'},
    {'1': 'inclusive_start_index', '3': 2, '4': 1, '5': 17, '9': 0, '10': 'inclusiveStartIndex'},
    {'1': 'unbounded_end', '3': 3, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 1, '10': 'unboundedEnd'},
    {'1': 'exclusive_end_index', '3': 4, '4': 1, '5': 17, '9': 1, '10': 'exclusiveEndIndex'},
  ],
  '8': [
    {'1': 'start'},
    {'1': 'end'},
  ],
};

@$core.Deprecated('Use sortedSetFetchRequest_Descriptor instead')
const SortedSetFetchRequest___ByScore$json = {
  '1': '_ByScore',
  '2': [
    {'1': 'unbounded_min', '3': 1, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 0, '10': 'unboundedMin'},
    {'1': 'min_score', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchRequest._ByScore._Score', '9': 0, '10': 'minScore'},
    {'1': 'unbounded_max', '3': 3, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 1, '10': 'unboundedMax'},
    {'1': 'max_score', '3': 4, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchRequest._ByScore._Score', '9': 1, '10': 'maxScore'},
    {'1': 'offset', '3': 5, '4': 1, '5': 13, '10': 'offset'},
    {'1': 'count', '3': 6, '4': 1, '5': 17, '10': 'count'},
  ],
  '3': [SortedSetFetchRequest___ByScore__Score$json],
  '8': [
    {'1': 'min'},
    {'1': 'max'},
  ],
};

@$core.Deprecated('Use sortedSetFetchRequest_Descriptor instead')
const SortedSetFetchRequest___ByScore__Score$json = {
  '1': '_Score',
  '2': [
    {'1': 'score', '3': 1, '4': 1, '5': 1, '10': 'score'},
    {'1': 'exclusive', '3': 2, '4': 1, '5': 8, '10': 'exclusive'},
  ],
};

@$core.Deprecated('Use sortedSetFetchRequest_Descriptor instead')
const SortedSetFetchRequest__Order$json = {
  '1': 'Order',
  '2': [
    {'1': 'ASCENDING', '2': 0},
    {'1': 'DESCENDING', '2': 1},
  ],
};

/// Descriptor for `_SortedSetFetchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetFetchRequest_Descriptor = $convert.base64Decode(
    'ChZfU29ydGVkU2V0RmV0Y2hSZXF1ZXN0EhkKCHNldF9uYW1lGAEgASgMUgdzZXROYW1lEkAKBW'
    '9yZGVyGAIgASgOMiouY2FjaGVfY2xpZW50Ll9Tb3J0ZWRTZXRGZXRjaFJlcXVlc3QuT3JkZXJS'
    'BW9yZGVyEh8KC3dpdGhfc2NvcmVzGAMgASgIUgp3aXRoU2NvcmVzEkoKCGJ5X2luZGV4GAQgAS'
    'gLMi0uY2FjaGVfY2xpZW50Ll9Tb3J0ZWRTZXRGZXRjaFJlcXVlc3QuX0J5SW5kZXhIAFIHYnlJ'
    'bmRleBJKCghieV9zY29yZRgFIAEoCzItLmNhY2hlX2NsaWVudC5fU29ydGVkU2V0RmV0Y2hSZX'
    'F1ZXN0Ll9CeVNjb3JlSABSB2J5U2NvcmUaiAIKCF9CeUluZGV4EkMKD3VuYm91bmRlZF9zdGFy'
    'dBgBIAEoCzIYLmNhY2hlX2NsaWVudC5fVW5ib3VuZGVkSABSDnVuYm91bmRlZFN0YXJ0EjQKFW'
    'luY2x1c2l2ZV9zdGFydF9pbmRleBgCIAEoEUgAUhNpbmNsdXNpdmVTdGFydEluZGV4Ej8KDXVu'
    'Ym91bmRlZF9lbmQYAyABKAsyGC5jYWNoZV9jbGllbnQuX1VuYm91bmRlZEgBUgx1bmJvdW5kZW'
    'RFbmQSMAoTZXhjbHVzaXZlX2VuZF9pbmRleBgEIAEoEUgBUhFleGNsdXNpdmVFbmRJbmRleEIH'
    'CgVzdGFydEIFCgNlbmQasAMKCF9CeVNjb3JlEj8KDXVuYm91bmRlZF9taW4YASABKAsyGC5jYW'
    'NoZV9jbGllbnQuX1VuYm91bmRlZEgAUgx1bmJvdW5kZWRNaW4SUwoJbWluX3Njb3JlGAIgASgL'
    'MjQuY2FjaGVfY2xpZW50Ll9Tb3J0ZWRTZXRGZXRjaFJlcXVlc3QuX0J5U2NvcmUuX1Njb3JlSA'
    'BSCG1pblNjb3JlEj8KDXVuYm91bmRlZF9tYXgYAyABKAsyGC5jYWNoZV9jbGllbnQuX1VuYm91'
    'bmRlZEgBUgx1bmJvdW5kZWRNYXgSUwoJbWF4X3Njb3JlGAQgASgLMjQuY2FjaGVfY2xpZW50Ll'
    '9Tb3J0ZWRTZXRGZXRjaFJlcXVlc3QuX0J5U2NvcmUuX1Njb3JlSAFSCG1heFNjb3JlEhYKBm9m'
    'ZnNldBgFIAEoDVIGb2Zmc2V0EhQKBWNvdW50GAYgASgRUgVjb3VudBo8CgZfU2NvcmUSFAoFc2'
    'NvcmUYASABKAFSBXNjb3JlEhwKCWV4Y2x1c2l2ZRgCIAEoCFIJZXhjbHVzaXZlQgUKA21pbkIF'
    'CgNtYXgiJgoFT3JkZXISDQoJQVNDRU5ESU5HEAASDgoKREVTQ0VORElORxABQgcKBXJhbmdl');

@$core.Deprecated('Use sortedSetFetchResponse_Descriptor instead')
const SortedSetFetchResponse_$json = {
  '1': '_SortedSetFetchResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SortedSetFetchResponse___Found$json, SortedSetFetchResponse___Missing$json],
  '8': [
    {'1': 'sorted_set'},
  ],
};

@$core.Deprecated('Use sortedSetFetchResponse_Descriptor instead')
const SortedSetFetchResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'values_with_scores', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchResponse._Found._ValuesWithScores', '9': 0, '10': 'valuesWithScores'},
    {'1': 'values', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetFetchResponse._Found._Values', '9': 0, '10': 'values'},
  ],
  '3': [SortedSetFetchResponse___Found__ValuesWithScores$json, SortedSetFetchResponse___Found__Values$json],
  '8': [
    {'1': 'elements'},
  ],
};

@$core.Deprecated('Use sortedSetFetchResponse_Descriptor instead')
const SortedSetFetchResponse___Found__ValuesWithScores$json = {
  '1': '_ValuesWithScores',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 11, '6': '.cache_client._SortedSetElement', '10': 'elements'},
  ],
};

@$core.Deprecated('Use sortedSetFetchResponse_Descriptor instead')
const SortedSetFetchResponse___Found__Values$json = {
  '1': '_Values',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 12, '10': 'values'},
  ],
};

@$core.Deprecated('Use sortedSetFetchResponse_Descriptor instead')
const SortedSetFetchResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SortedSetFetchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetFetchResponse_Descriptor = $convert.base64Decode(
    'ChdfU29ydGVkU2V0RmV0Y2hSZXNwb25zZRJECgVmb3VuZBgBIAEoCzIsLmNhY2hlX2NsaWVudC'
    '5fU29ydGVkU2V0RmV0Y2hSZXNwb25zZS5fRm91bmRIAFIFZm91bmQSSgoHbWlzc2luZxgCIAEo'
    'CzIuLmNhY2hlX2NsaWVudC5fU29ydGVkU2V0RmV0Y2hSZXNwb25zZS5fTWlzc2luZ0gAUgdtaX'
    'NzaW5nGskCCgZfRm91bmQSbgoSdmFsdWVzX3dpdGhfc2NvcmVzGAEgASgLMj4uY2FjaGVfY2xp'
    'ZW50Ll9Tb3J0ZWRTZXRGZXRjaFJlc3BvbnNlLl9Gb3VuZC5fVmFsdWVzV2l0aFNjb3Jlc0gAUh'
    'B2YWx1ZXNXaXRoU2NvcmVzEk4KBnZhbHVlcxgCIAEoCzI0LmNhY2hlX2NsaWVudC5fU29ydGVk'
    'U2V0RmV0Y2hSZXNwb25zZS5fRm91bmQuX1ZhbHVlc0gAUgZ2YWx1ZXMaUAoRX1ZhbHVlc1dpdG'
    'hTY29yZXMSOwoIZWxlbWVudHMYASADKAsyHy5jYWNoZV9jbGllbnQuX1NvcnRlZFNldEVsZW1l'
    'bnRSCGVsZW1lbnRzGiEKB19WYWx1ZXMSFgoGdmFsdWVzGAEgAygMUgZ2YWx1ZXNCCgoIZWxlbW'
    'VudHMaCgoIX01pc3NpbmdCDAoKc29ydGVkX3NldA==');

@$core.Deprecated('Use sortedSetGetScoreRequest_Descriptor instead')
const SortedSetGetScoreRequest_$json = {
  '1': '_SortedSetGetScoreRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'values', '3': 2, '4': 3, '5': 12, '10': 'values'},
  ],
};

/// Descriptor for `_SortedSetGetScoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetGetScoreRequest_Descriptor = $convert.base64Decode(
    'ChlfU29ydGVkU2V0R2V0U2NvcmVSZXF1ZXN0EhkKCHNldF9uYW1lGAEgASgMUgdzZXROYW1lEh'
    'YKBnZhbHVlcxgCIAMoDFIGdmFsdWVz');

@$core.Deprecated('Use sortedSetGetScoreResponse_Descriptor instead')
const SortedSetGetScoreResponse_$json = {
  '1': '_SortedSetGetScoreResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SortedSetGetScoreResponse._SortedSetFound', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetGetScoreResponse._SortedSetMissing', '9': 0, '10': 'missing'},
  ],
  '3': [SortedSetGetScoreResponse___SortedSetGetScoreResponsePart$json, SortedSetGetScoreResponse___SortedSetFound$json, SortedSetGetScoreResponse___SortedSetMissing$json],
  '8': [
    {'1': 'sorted_set'},
  ],
};

@$core.Deprecated('Use sortedSetGetScoreResponse_Descriptor instead')
const SortedSetGetScoreResponse___SortedSetGetScoreResponsePart$json = {
  '1': '_SortedSetGetScoreResponsePart',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.cache_client.ECacheResult', '10': 'result'},
    {'1': 'score', '3': 2, '4': 1, '5': 1, '10': 'score'},
  ],
};

@$core.Deprecated('Use sortedSetGetScoreResponse_Descriptor instead')
const SortedSetGetScoreResponse___SortedSetFound$json = {
  '1': '_SortedSetFound',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 11, '6': '.cache_client._SortedSetGetScoreResponse._SortedSetGetScoreResponsePart', '10': 'elements'},
  ],
};

@$core.Deprecated('Use sortedSetGetScoreResponse_Descriptor instead')
const SortedSetGetScoreResponse___SortedSetMissing$json = {
  '1': '_SortedSetMissing',
};

/// Descriptor for `_SortedSetGetScoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetGetScoreResponse_Descriptor = $convert.base64Decode(
    'ChpfU29ydGVkU2V0R2V0U2NvcmVSZXNwb25zZRJQCgVmb3VuZBgBIAEoCzI4LmNhY2hlX2NsaW'
    'VudC5fU29ydGVkU2V0R2V0U2NvcmVSZXNwb25zZS5fU29ydGVkU2V0Rm91bmRIAFIFZm91bmQS'
    'VgoHbWlzc2luZxgCIAEoCzI6LmNhY2hlX2NsaWVudC5fU29ydGVkU2V0R2V0U2NvcmVSZXNwb2'
    '5zZS5fU29ydGVkU2V0TWlzc2luZ0gAUgdtaXNzaW5nGmoKHl9Tb3J0ZWRTZXRHZXRTY29yZVJl'
    'c3BvbnNlUGFydBIyCgZyZXN1bHQYASABKA4yGi5jYWNoZV9jbGllbnQuRUNhY2hlUmVzdWx0Ug'
    'ZyZXN1bHQSFAoFc2NvcmUYAiABKAFSBXNjb3JlGnYKD19Tb3J0ZWRTZXRGb3VuZBJjCghlbGVt'
    'ZW50cxgBIAMoCzJHLmNhY2hlX2NsaWVudC5fU29ydGVkU2V0R2V0U2NvcmVSZXNwb25zZS5fU2'
    '9ydGVkU2V0R2V0U2NvcmVSZXNwb25zZVBhcnRSCGVsZW1lbnRzGhMKEV9Tb3J0ZWRTZXRNaXNz'
    'aW5nQgwKCnNvcnRlZF9zZXQ=');

@$core.Deprecated('Use sortedSetRemoveRequest_Descriptor instead')
const SortedSetRemoveRequest_$json = {
  '1': '_SortedSetRemoveRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'all', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetRemoveRequest._All', '9': 0, '10': 'all'},
    {'1': 'some', '3': 3, '4': 1, '5': 11, '6': '.cache_client._SortedSetRemoveRequest._Some', '9': 0, '10': 'some'},
  ],
  '3': [SortedSetRemoveRequest___All$json, SortedSetRemoveRequest___Some$json],
  '8': [
    {'1': 'remove_elements'},
  ],
};

@$core.Deprecated('Use sortedSetRemoveRequest_Descriptor instead')
const SortedSetRemoveRequest___All$json = {
  '1': '_All',
};

@$core.Deprecated('Use sortedSetRemoveRequest_Descriptor instead')
const SortedSetRemoveRequest___Some$json = {
  '1': '_Some',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 12, '10': 'values'},
  ],
};

/// Descriptor for `_SortedSetRemoveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetRemoveRequest_Descriptor = $convert.base64Decode(
    'ChdfU29ydGVkU2V0UmVtb3ZlUmVxdWVzdBIZCghzZXRfbmFtZRgBIAEoDFIHc2V0TmFtZRI+Cg'
    'NhbGwYAiABKAsyKi5jYWNoZV9jbGllbnQuX1NvcnRlZFNldFJlbW92ZVJlcXVlc3QuX0FsbEgA'
    'UgNhbGwSQQoEc29tZRgDIAEoCzIrLmNhY2hlX2NsaWVudC5fU29ydGVkU2V0UmVtb3ZlUmVxdW'
    'VzdC5fU29tZUgAUgRzb21lGgYKBF9BbGwaHwoFX1NvbWUSFgoGdmFsdWVzGAEgAygMUgZ2YWx1'
    'ZXNCEQoPcmVtb3ZlX2VsZW1lbnRz');

@$core.Deprecated('Use sortedSetRemoveResponse_Descriptor instead')
const SortedSetRemoveResponse_$json = {
  '1': '_SortedSetRemoveResponse',
};

/// Descriptor for `_SortedSetRemoveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetRemoveResponse_Descriptor = $convert.base64Decode(
    'ChhfU29ydGVkU2V0UmVtb3ZlUmVzcG9uc2U=');

@$core.Deprecated('Use sortedSetIncrementRequest_Descriptor instead')
const SortedSetIncrementRequest_$json = {
  '1': '_SortedSetIncrementRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    {'1': 'amount', '3': 3, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'ttl_milliseconds', '3': 4, '4': 1, '5': 4, '10': 'ttlMilliseconds'},
    {'1': 'refresh_ttl', '3': 5, '4': 1, '5': 8, '10': 'refreshTtl'},
  ],
};

/// Descriptor for `_SortedSetIncrementRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetIncrementRequest_Descriptor = $convert.base64Decode(
    'ChpfU29ydGVkU2V0SW5jcmVtZW50UmVxdWVzdBIZCghzZXRfbmFtZRgBIAEoDFIHc2V0TmFtZR'
    'IUCgV2YWx1ZRgCIAEoDFIFdmFsdWUSFgoGYW1vdW50GAMgASgBUgZhbW91bnQSKQoQdHRsX21p'
    'bGxpc2Vjb25kcxgEIAEoBFIPdHRsTWlsbGlzZWNvbmRzEh8KC3JlZnJlc2hfdHRsGAUgASgIUg'
    'pyZWZyZXNoVHRs');

@$core.Deprecated('Use sortedSetIncrementResponse_Descriptor instead')
const SortedSetIncrementResponse_$json = {
  '1': '_SortedSetIncrementResponse',
  '2': [
    {'1': 'score', '3': 1, '4': 1, '5': 1, '10': 'score'},
  ],
};

/// Descriptor for `_SortedSetIncrementResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetIncrementResponse_Descriptor = $convert.base64Decode(
    'ChtfU29ydGVkU2V0SW5jcmVtZW50UmVzcG9uc2USFAoFc2NvcmUYASABKAFSBXNjb3Jl');

@$core.Deprecated('Use sortedSetGetRankRequest_Descriptor instead')
const SortedSetGetRankRequest_$json = {
  '1': '_SortedSetGetRankRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    {'1': 'order', '3': 3, '4': 1, '5': 14, '6': '.cache_client._SortedSetGetRankRequest.Order', '10': 'order'},
  ],
  '4': [SortedSetGetRankRequest__Order$json],
};

@$core.Deprecated('Use sortedSetGetRankRequest_Descriptor instead')
const SortedSetGetRankRequest__Order$json = {
  '1': 'Order',
  '2': [
    {'1': 'ASCENDING', '2': 0},
    {'1': 'DESCENDING', '2': 1},
  ],
};

/// Descriptor for `_SortedSetGetRankRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetGetRankRequest_Descriptor = $convert.base64Decode(
    'ChhfU29ydGVkU2V0R2V0UmFua1JlcXVlc3QSGQoIc2V0X25hbWUYASABKAxSB3NldE5hbWUSFA'
    'oFdmFsdWUYAiABKAxSBXZhbHVlEkIKBW9yZGVyGAMgASgOMiwuY2FjaGVfY2xpZW50Ll9Tb3J0'
    'ZWRTZXRHZXRSYW5rUmVxdWVzdC5PcmRlclIFb3JkZXIiJgoFT3JkZXISDQoJQVNDRU5ESU5HEA'
    'ASDgoKREVTQ0VORElORxAB');

@$core.Deprecated('Use sortedSetGetRankResponse_Descriptor instead')
const SortedSetGetRankResponse_$json = {
  '1': '_SortedSetGetRankResponse',
  '2': [
    {'1': 'element_rank', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SortedSetGetRankResponse._RankResponsePart', '9': 0, '10': 'elementRank'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetGetRankResponse._SortedSetMissing', '9': 0, '10': 'missing'},
  ],
  '3': [SortedSetGetRankResponse___RankResponsePart$json, SortedSetGetRankResponse___SortedSetMissing$json],
  '8': [
    {'1': 'rank'},
  ],
};

@$core.Deprecated('Use sortedSetGetRankResponse_Descriptor instead')
const SortedSetGetRankResponse___RankResponsePart$json = {
  '1': '_RankResponsePart',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.cache_client.ECacheResult', '10': 'result'},
    {'1': 'rank', '3': 2, '4': 1, '5': 4, '10': 'rank'},
  ],
};

@$core.Deprecated('Use sortedSetGetRankResponse_Descriptor instead')
const SortedSetGetRankResponse___SortedSetMissing$json = {
  '1': '_SortedSetMissing',
};

/// Descriptor for `_SortedSetGetRankResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetGetRankResponse_Descriptor = $convert.base64Decode(
    'ChlfU29ydGVkU2V0R2V0UmFua1Jlc3BvbnNlEl4KDGVsZW1lbnRfcmFuaxgBIAEoCzI5LmNhY2'
    'hlX2NsaWVudC5fU29ydGVkU2V0R2V0UmFua1Jlc3BvbnNlLl9SYW5rUmVzcG9uc2VQYXJ0SABS'
    'C2VsZW1lbnRSYW5rElUKB21pc3NpbmcYAiABKAsyOS5jYWNoZV9jbGllbnQuX1NvcnRlZFNldE'
    'dldFJhbmtSZXNwb25zZS5fU29ydGVkU2V0TWlzc2luZ0gAUgdtaXNzaW5nGlsKEV9SYW5rUmVz'
    'cG9uc2VQYXJ0EjIKBnJlc3VsdBgBIAEoDjIaLmNhY2hlX2NsaWVudC5FQ2FjaGVSZXN1bHRSBn'
    'Jlc3VsdBISCgRyYW5rGAIgASgEUgRyYW5rGhMKEV9Tb3J0ZWRTZXRNaXNzaW5nQgYKBHJhbms=');

@$core.Deprecated('Use sortedSetLengthRequest_Descriptor instead')
const SortedSetLengthRequest_$json = {
  '1': '_SortedSetLengthRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
  ],
};

/// Descriptor for `_SortedSetLengthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetLengthRequest_Descriptor = $convert.base64Decode(
    'ChdfU29ydGVkU2V0TGVuZ3RoUmVxdWVzdBIZCghzZXRfbmFtZRgBIAEoDFIHc2V0TmFtZQ==');

@$core.Deprecated('Use sortedSetLengthResponse_Descriptor instead')
const SortedSetLengthResponse_$json = {
  '1': '_SortedSetLengthResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SortedSetLengthResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetLengthResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SortedSetLengthResponse___Found$json, SortedSetLengthResponse___Missing$json],
  '8': [
    {'1': 'sorted_set'},
  ],
};

@$core.Deprecated('Use sortedSetLengthResponse_Descriptor instead')
const SortedSetLengthResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 13, '10': 'length'},
  ],
};

@$core.Deprecated('Use sortedSetLengthResponse_Descriptor instead')
const SortedSetLengthResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SortedSetLengthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetLengthResponse_Descriptor = $convert.base64Decode(
    'ChhfU29ydGVkU2V0TGVuZ3RoUmVzcG9uc2USRQoFZm91bmQYASABKAsyLS5jYWNoZV9jbGllbn'
    'QuX1NvcnRlZFNldExlbmd0aFJlc3BvbnNlLl9Gb3VuZEgAUgVmb3VuZBJLCgdtaXNzaW5nGAIg'
    'ASgLMi8uY2FjaGVfY2xpZW50Ll9Tb3J0ZWRTZXRMZW5ndGhSZXNwb25zZS5fTWlzc2luZ0gAUg'
    'dtaXNzaW5nGiAKBl9Gb3VuZBIWCgZsZW5ndGgYASABKA1SBmxlbmd0aBoKCghfTWlzc2luZ0IM'
    'Cgpzb3J0ZWRfc2V0');

@$core.Deprecated('Use sortedSetLengthByScoreRequest_Descriptor instead')
const SortedSetLengthByScoreRequest_$json = {
  '1': '_SortedSetLengthByScoreRequest',
  '2': [
    {'1': 'set_name', '3': 1, '4': 1, '5': 12, '10': 'setName'},
    {'1': 'inclusive_min', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'inclusiveMin'},
    {'1': 'exclusive_min', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'exclusiveMin'},
    {'1': 'unbounded_min', '3': 4, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 0, '10': 'unboundedMin'},
    {'1': 'inclusive_max', '3': 5, '4': 1, '5': 1, '9': 1, '10': 'inclusiveMax'},
    {'1': 'exclusive_max', '3': 6, '4': 1, '5': 1, '9': 1, '10': 'exclusiveMax'},
    {'1': 'unbounded_max', '3': 7, '4': 1, '5': 11, '6': '.cache_client._Unbounded', '9': 1, '10': 'unboundedMax'},
  ],
  '8': [
    {'1': 'min'},
    {'1': 'max'},
  ],
};

/// Descriptor for `_SortedSetLengthByScoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetLengthByScoreRequest_Descriptor = $convert.base64Decode(
    'Ch5fU29ydGVkU2V0TGVuZ3RoQnlTY29yZVJlcXVlc3QSGQoIc2V0X25hbWUYASABKAxSB3NldE'
    '5hbWUSJQoNaW5jbHVzaXZlX21pbhgCIAEoAUgAUgxpbmNsdXNpdmVNaW4SJQoNZXhjbHVzaXZl'
    'X21pbhgDIAEoAUgAUgxleGNsdXNpdmVNaW4SPwoNdW5ib3VuZGVkX21pbhgEIAEoCzIYLmNhY2'
    'hlX2NsaWVudC5fVW5ib3VuZGVkSABSDHVuYm91bmRlZE1pbhIlCg1pbmNsdXNpdmVfbWF4GAUg'
    'ASgBSAFSDGluY2x1c2l2ZU1heBIlCg1leGNsdXNpdmVfbWF4GAYgASgBSAFSDGV4Y2x1c2l2ZU'
    '1heBI/Cg11bmJvdW5kZWRfbWF4GAcgASgLMhguY2FjaGVfY2xpZW50Ll9VbmJvdW5kZWRIAVIM'
    'dW5ib3VuZGVkTWF4QgUKA21pbkIFCgNtYXg=');

@$core.Deprecated('Use sortedSetLengthByScoreResponse_Descriptor instead')
const SortedSetLengthByScoreResponse_$json = {
  '1': '_SortedSetLengthByScoreResponse',
  '2': [
    {'1': 'found', '3': 1, '4': 1, '5': 11, '6': '.cache_client._SortedSetLengthByScoreResponse._Found', '9': 0, '10': 'found'},
    {'1': 'missing', '3': 2, '4': 1, '5': 11, '6': '.cache_client._SortedSetLengthByScoreResponse._Missing', '9': 0, '10': 'missing'},
  ],
  '3': [SortedSetLengthByScoreResponse___Found$json, SortedSetLengthByScoreResponse___Missing$json],
  '8': [
    {'1': 'sorted_set'},
  ],
};

@$core.Deprecated('Use sortedSetLengthByScoreResponse_Descriptor instead')
const SortedSetLengthByScoreResponse___Found$json = {
  '1': '_Found',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 13, '10': 'length'},
  ],
};

@$core.Deprecated('Use sortedSetLengthByScoreResponse_Descriptor instead')
const SortedSetLengthByScoreResponse___Missing$json = {
  '1': '_Missing',
};

/// Descriptor for `_SortedSetLengthByScoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sortedSetLengthByScoreResponse_Descriptor = $convert.base64Decode(
    'Ch9fU29ydGVkU2V0TGVuZ3RoQnlTY29yZVJlc3BvbnNlEkwKBWZvdW5kGAEgASgLMjQuY2FjaG'
    'VfY2xpZW50Ll9Tb3J0ZWRTZXRMZW5ndGhCeVNjb3JlUmVzcG9uc2UuX0ZvdW5kSABSBWZvdW5k'
    'ElIKB21pc3NpbmcYAiABKAsyNi5jYWNoZV9jbGllbnQuX1NvcnRlZFNldExlbmd0aEJ5U2Nvcm'
    'VSZXNwb25zZS5fTWlzc2luZ0gAUgdtaXNzaW5nGiAKBl9Gb3VuZBIWCgZsZW5ndGgYASABKA1S'
    'Bmxlbmd0aBoKCghfTWlzc2luZ0IMCgpzb3J0ZWRfc2V0');

