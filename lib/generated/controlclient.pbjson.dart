//
//  Generated code. Do not modify.
//  source: controlclient.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use similarityMetric_Descriptor instead')
const SimilarityMetric_$json = {
  '1': '_SimilarityMetric',
  '2': [
    {
      '1': 'euclidean_similarity',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.control_client._SimilarityMetric._EuclideanSimilarity',
      '9': 0,
      '10': 'euclideanSimilarity'
    },
    {
      '1': 'inner_product',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.control_client._SimilarityMetric._InnerProduct',
      '9': 0,
      '10': 'innerProduct'
    },
    {
      '1': 'cosine_similarity',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.control_client._SimilarityMetric._CosineSimilarity',
      '9': 0,
      '10': 'cosineSimilarity'
    },
  ],
  '3': [
    SimilarityMetric___EuclideanSimilarity$json,
    SimilarityMetric___InnerProduct$json,
    SimilarityMetric___CosineSimilarity$json
  ],
  '8': [
    {'1': 'similarity_metric'},
  ],
};

@$core.Deprecated('Use similarityMetric_Descriptor instead')
const SimilarityMetric___EuclideanSimilarity$json = {
  '1': '_EuclideanSimilarity',
};

@$core.Deprecated('Use similarityMetric_Descriptor instead')
const SimilarityMetric___InnerProduct$json = {
  '1': '_InnerProduct',
};

@$core.Deprecated('Use similarityMetric_Descriptor instead')
const SimilarityMetric___CosineSimilarity$json = {
  '1': '_CosineSimilarity',
};

/// Descriptor for `_SimilarityMetric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List similarityMetric_Descriptor = $convert.base64Decode(
    'ChFfU2ltaWxhcml0eU1ldHJpYxJrChRldWNsaWRlYW5fc2ltaWxhcml0eRgBIAEoCzI2LmNvbn'
    'Ryb2xfY2xpZW50Ll9TaW1pbGFyaXR5TWV0cmljLl9FdWNsaWRlYW5TaW1pbGFyaXR5SABSE2V1'
    'Y2xpZGVhblNpbWlsYXJpdHkSVgoNaW5uZXJfcHJvZHVjdBgCIAEoCzIvLmNvbnRyb2xfY2xpZW'
    '50Ll9TaW1pbGFyaXR5TWV0cmljLl9Jbm5lclByb2R1Y3RIAFIMaW5uZXJQcm9kdWN0EmIKEWNv'
    'c2luZV9zaW1pbGFyaXR5GAMgASgLMjMuY29udHJvbF9jbGllbnQuX1NpbWlsYXJpdHlNZXRyaW'
    'MuX0Nvc2luZVNpbWlsYXJpdHlIAFIQY29zaW5lU2ltaWxhcml0eRoWChRfRXVjbGlkZWFuU2lt'
    'aWxhcml0eRoPCg1fSW5uZXJQcm9kdWN0GhMKEV9Db3NpbmVTaW1pbGFyaXR5QhMKEXNpbWlsYX'
    'JpdHlfbWV0cmlj');

@$core.Deprecated('Use createIndexRequest_Descriptor instead')
const CreateIndexRequest_$json = {
  '1': '_CreateIndexRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {'1': 'num_dimensions', '3': 2, '4': 1, '5': 4, '10': 'numDimensions'},
    {
      '1': 'similarity_metric',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.control_client._SimilarityMetric',
      '10': 'similarityMetric'
    },
  ],
};

/// Descriptor for `_CreateIndexRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createIndexRequest_Descriptor = $convert.base64Decode(
    'ChNfQ3JlYXRlSW5kZXhSZXF1ZXN0Eh0KCmluZGV4X25hbWUYASABKAlSCWluZGV4TmFtZRIlCg'
    '5udW1fZGltZW5zaW9ucxgCIAEoBFINbnVtRGltZW5zaW9ucxJOChFzaW1pbGFyaXR5X21ldHJp'
    'YxgDIAEoCzIhLmNvbnRyb2xfY2xpZW50Ll9TaW1pbGFyaXR5TWV0cmljUhBzaW1pbGFyaXR5TW'
    'V0cmlj');

@$core.Deprecated('Use createIndexResponse_Descriptor instead')
const CreateIndexResponse_$json = {
  '1': '_CreateIndexResponse',
};

/// Descriptor for `_CreateIndexResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createIndexResponse_Descriptor =
    $convert.base64Decode('ChRfQ3JlYXRlSW5kZXhSZXNwb25zZQ==');

@$core.Deprecated('Use deleteIndexRequest_Descriptor instead')
const DeleteIndexRequest_$json = {
  '1': '_DeleteIndexRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
  ],
};

/// Descriptor for `_DeleteIndexRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteIndexRequest_Descriptor = $convert.base64Decode(
    'ChNfRGVsZXRlSW5kZXhSZXF1ZXN0Eh0KCmluZGV4X25hbWUYASABKAlSCWluZGV4TmFtZQ==');

@$core.Deprecated('Use deleteIndexResponse_Descriptor instead')
const DeleteIndexResponse_$json = {
  '1': '_DeleteIndexResponse',
};

/// Descriptor for `_DeleteIndexResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteIndexResponse_Descriptor =
    $convert.base64Decode('ChRfRGVsZXRlSW5kZXhSZXNwb25zZQ==');

@$core.Deprecated('Use listIndexesRequest_Descriptor instead')
const ListIndexesRequest_$json = {
  '1': '_ListIndexesRequest',
};

/// Descriptor for `_ListIndexesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listIndexesRequest_Descriptor =
    $convert.base64Decode('ChNfTGlzdEluZGV4ZXNSZXF1ZXN0');

@$core.Deprecated('Use listIndexesResponse_Descriptor instead')
const ListIndexesResponse_$json = {
  '1': '_ListIndexesResponse',
  '2': [
    {
      '1': 'indexes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.control_client._ListIndexesResponse._Index',
      '10': 'indexes'
    },
  ],
  '3': [ListIndexesResponse___Index$json],
};

@$core.Deprecated('Use listIndexesResponse_Descriptor instead')
const ListIndexesResponse___Index$json = {
  '1': '_Index',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {'1': 'num_dimensions', '3': 2, '4': 1, '5': 4, '10': 'numDimensions'},
    {
      '1': 'similarity_metric',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.control_client._SimilarityMetric',
      '10': 'similarityMetric'
    },
  ],
};

/// Descriptor for `_ListIndexesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listIndexesResponse_Descriptor = $convert.base64Decode(
    'ChRfTGlzdEluZGV4ZXNSZXNwb25zZRJFCgdpbmRleGVzGAEgAygLMisuY29udHJvbF9jbGllbn'
    'QuX0xpc3RJbmRleGVzUmVzcG9uc2UuX0luZGV4UgdpbmRleGVzGp4BCgZfSW5kZXgSHQoKaW5k'
    'ZXhfbmFtZRgBIAEoCVIJaW5kZXhOYW1lEiUKDm51bV9kaW1lbnNpb25zGAIgASgEUg1udW1EaW'
    '1lbnNpb25zEk4KEXNpbWlsYXJpdHlfbWV0cmljGAMgASgLMiEuY29udHJvbF9jbGllbnQuX1Np'
    'bWlsYXJpdHlNZXRyaWNSEHNpbWlsYXJpdHlNZXRyaWM=');

@$core.Deprecated('Use deleteCacheRequest_Descriptor instead')
const DeleteCacheRequest_$json = {
  '1': '_DeleteCacheRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
  ],
};

/// Descriptor for `_DeleteCacheRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCacheRequest_Descriptor = $convert.base64Decode(
    'ChNfRGVsZXRlQ2FjaGVSZXF1ZXN0Eh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTmFtZQ==');

@$core.Deprecated('Use deleteCacheResponse_Descriptor instead')
const DeleteCacheResponse_$json = {
  '1': '_DeleteCacheResponse',
};

/// Descriptor for `_DeleteCacheResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCacheResponse_Descriptor =
    $convert.base64Decode('ChRfRGVsZXRlQ2FjaGVSZXNwb25zZQ==');

@$core.Deprecated('Use createCacheRequest_Descriptor instead')
const CreateCacheRequest_$json = {
  '1': '_CreateCacheRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
  ],
};

/// Descriptor for `_CreateCacheRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCacheRequest_Descriptor = $convert.base64Decode(
    'ChNfQ3JlYXRlQ2FjaGVSZXF1ZXN0Eh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTmFtZQ==');

@$core.Deprecated('Use createCacheResponse_Descriptor instead')
const CreateCacheResponse_$json = {
  '1': '_CreateCacheResponse',
};

/// Descriptor for `_CreateCacheResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCacheResponse_Descriptor =
    $convert.base64Decode('ChRfQ3JlYXRlQ2FjaGVSZXNwb25zZQ==');

@$core.Deprecated('Use listCachesRequest_Descriptor instead')
const ListCachesRequest_$json = {
  '1': '_ListCachesRequest',
  '2': [
    {'1': 'next_token', '3': 1, '4': 1, '5': 9, '10': 'nextToken'},
  ],
};

/// Descriptor for `_ListCachesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCachesRequest_Descriptor =
    $convert.base64Decode(
        'ChJfTGlzdENhY2hlc1JlcXVlc3QSHQoKbmV4dF90b2tlbhgBIAEoCVIJbmV4dFRva2Vu');

@$core.Deprecated('Use cacheLimits_Descriptor instead')
const CacheLimits_$json = {
  '1': '_CacheLimits',
  '2': [
    {'1': 'max_traffic_rate', '3': 1, '4': 1, '5': 13, '10': 'maxTrafficRate'},
    {
      '1': 'max_throughput_kbps',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'maxThroughputKbps'
    },
    {'1': 'max_item_size_kb', '3': 3, '4': 1, '5': 13, '10': 'maxItemSizeKb'},
    {'1': 'max_ttl_seconds', '3': 4, '4': 1, '5': 4, '10': 'maxTtlSeconds'},
  ],
};

/// Descriptor for `_CacheLimits`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cacheLimits_Descriptor = $convert.base64Decode(
    'CgxfQ2FjaGVMaW1pdHMSKAoQbWF4X3RyYWZmaWNfcmF0ZRgBIAEoDVIObWF4VHJhZmZpY1JhdG'
    'USLgoTbWF4X3Rocm91Z2hwdXRfa2JwcxgCIAEoDVIRbWF4VGhyb3VnaHB1dEticHMSJwoQbWF4'
    'X2l0ZW1fc2l6ZV9rYhgDIAEoDVINbWF4SXRlbVNpemVLYhImCg9tYXhfdHRsX3NlY29uZHMYBC'
    'ABKARSDW1heFR0bFNlY29uZHM=');

@$core.Deprecated('Use topicLimits_Descriptor instead')
const TopicLimits_$json = {
  '1': '_TopicLimits',
  '2': [
    {'1': 'max_publish_rate', '3': 1, '4': 1, '5': 13, '10': 'maxPublishRate'},
    {
      '1': 'max_subscription_count',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'maxSubscriptionCount'
    },
    {
      '1': 'max_publish_message_size_kb',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'maxPublishMessageSizeKb'
    },
  ],
};

/// Descriptor for `_TopicLimits`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicLimits_Descriptor = $convert.base64Decode(
    'CgxfVG9waWNMaW1pdHMSKAoQbWF4X3B1Ymxpc2hfcmF0ZRgBIAEoDVIObWF4UHVibGlzaFJhdG'
    'USNAoWbWF4X3N1YnNjcmlwdGlvbl9jb3VudBgCIAEoDVIUbWF4U3Vic2NyaXB0aW9uQ291bnQS'
    'PAobbWF4X3B1Ymxpc2hfbWVzc2FnZV9zaXplX2tiGAMgASgNUhdtYXhQdWJsaXNoTWVzc2FnZV'
    'NpemVLYg==');

@$core.Deprecated('Use cache_Descriptor instead')
const Cache_$json = {
  '1': '_Cache',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {
      '1': 'cache_limits',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.control_client._CacheLimits',
      '10': 'cacheLimits'
    },
    {
      '1': 'topic_limits',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.control_client._TopicLimits',
      '10': 'topicLimits'
    },
  ],
};

/// Descriptor for `_Cache`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cache_Descriptor = $convert.base64Decode(
    'CgZfQ2FjaGUSHQoKY2FjaGVfbmFtZRgBIAEoCVIJY2FjaGVOYW1lEj8KDGNhY2hlX2xpbWl0cx'
    'gCIAEoCzIcLmNvbnRyb2xfY2xpZW50Ll9DYWNoZUxpbWl0c1ILY2FjaGVMaW1pdHMSPwoMdG9w'
    'aWNfbGltaXRzGAMgASgLMhwuY29udHJvbF9jbGllbnQuX1RvcGljTGltaXRzUgt0b3BpY0xpbW'
    'l0cw==');

@$core.Deprecated('Use listCachesResponse_Descriptor instead')
const ListCachesResponse_$json = {
  '1': '_ListCachesResponse',
  '2': [
    {
      '1': 'cache',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.control_client._Cache',
      '10': 'cache'
    },
    {'1': 'next_token', '3': 2, '4': 1, '5': 9, '10': 'nextToken'},
  ],
};

/// Descriptor for `_ListCachesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCachesResponse_Descriptor = $convert.base64Decode(
    'ChNfTGlzdENhY2hlc1Jlc3BvbnNlEiwKBWNhY2hlGAEgAygLMhYuY29udHJvbF9jbGllbnQuX0'
    'NhY2hlUgVjYWNoZRIdCgpuZXh0X3Rva2VuGAIgASgJUgluZXh0VG9rZW4=');

@$core.Deprecated('Use createSigningKeyRequest_Descriptor instead')
const CreateSigningKeyRequest_$json = {
  '1': '_CreateSigningKeyRequest',
  '2': [
    {'1': 'ttl_minutes', '3': 1, '4': 1, '5': 13, '10': 'ttlMinutes'},
  ],
};

/// Descriptor for `_CreateSigningKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSigningKeyRequest_Descriptor =
    $convert.base64Decode(
        'ChhfQ3JlYXRlU2lnbmluZ0tleVJlcXVlc3QSHwoLdHRsX21pbnV0ZXMYASABKA1SCnR0bE1pbn'
        'V0ZXM=');

@$core.Deprecated('Use createSigningKeyResponse_Descriptor instead')
const CreateSigningKeyResponse_$json = {
  '1': '_CreateSigningKeyResponse',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'expires_at', '3': 2, '4': 1, '5': 4, '10': 'expiresAt'},
  ],
};

/// Descriptor for `_CreateSigningKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSigningKeyResponse_Descriptor =
    $convert.base64Decode(
        'ChlfQ3JlYXRlU2lnbmluZ0tleVJlc3BvbnNlEhAKA2tleRgBIAEoCVIDa2V5Eh0KCmV4cGlyZX'
        'NfYXQYAiABKARSCWV4cGlyZXNBdA==');

@$core.Deprecated('Use revokeSigningKeyRequest_Descriptor instead')
const RevokeSigningKeyRequest_$json = {
  '1': '_RevokeSigningKeyRequest',
  '2': [
    {'1': 'key_id', '3': 1, '4': 1, '5': 9, '10': 'keyId'},
  ],
};

/// Descriptor for `_RevokeSigningKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeSigningKeyRequest_Descriptor =
    $convert.base64Decode(
        'ChhfUmV2b2tlU2lnbmluZ0tleVJlcXVlc3QSFQoGa2V5X2lkGAEgASgJUgVrZXlJZA==');

@$core.Deprecated('Use revokeSigningKeyResponse_Descriptor instead')
const RevokeSigningKeyResponse_$json = {
  '1': '_RevokeSigningKeyResponse',
};

/// Descriptor for `_RevokeSigningKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeSigningKeyResponse_Descriptor =
    $convert.base64Decode('ChlfUmV2b2tlU2lnbmluZ0tleVJlc3BvbnNl');

@$core.Deprecated('Use signingKey_Descriptor instead')
const SigningKey_$json = {
  '1': '_SigningKey',
  '2': [
    {'1': 'key_id', '3': 1, '4': 1, '5': 9, '10': 'keyId'},
    {'1': 'expires_at', '3': 2, '4': 1, '5': 4, '10': 'expiresAt'},
  ],
};

/// Descriptor for `_SigningKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signingKey_Descriptor = $convert.base64Decode(
    'CgtfU2lnbmluZ0tleRIVCgZrZXlfaWQYASABKAlSBWtleUlkEh0KCmV4cGlyZXNfYXQYAiABKA'
    'RSCWV4cGlyZXNBdA==');

@$core.Deprecated('Use listSigningKeysRequest_Descriptor instead')
const ListSigningKeysRequest_$json = {
  '1': '_ListSigningKeysRequest',
  '2': [
    {'1': 'next_token', '3': 1, '4': 1, '5': 9, '10': 'nextToken'},
  ],
};

/// Descriptor for `_ListSigningKeysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSigningKeysRequest_Descriptor =
    $convert.base64Decode(
        'ChdfTGlzdFNpZ25pbmdLZXlzUmVxdWVzdBIdCgpuZXh0X3Rva2VuGAEgASgJUgluZXh0VG9rZW'
        '4=');

@$core.Deprecated('Use listSigningKeysResponse_Descriptor instead')
const ListSigningKeysResponse_$json = {
  '1': '_ListSigningKeysResponse',
  '2': [
    {
      '1': 'signing_key',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.control_client._SigningKey',
      '10': 'signingKey'
    },
    {'1': 'next_token', '3': 2, '4': 1, '5': 9, '10': 'nextToken'},
  ],
};

/// Descriptor for `_ListSigningKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSigningKeysResponse_Descriptor = $convert.base64Decode(
    'ChhfTGlzdFNpZ25pbmdLZXlzUmVzcG9uc2USPAoLc2lnbmluZ19rZXkYASADKAsyGy5jb250cm'
    '9sX2NsaWVudC5fU2lnbmluZ0tleVIKc2lnbmluZ0tleRIdCgpuZXh0X3Rva2VuGAIgASgJUglu'
    'ZXh0VG9rZW4=');

@$core.Deprecated('Use flushCacheRequest_Descriptor instead')
const FlushCacheRequest_$json = {
  '1': '_FlushCacheRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
  ],
};

/// Descriptor for `_FlushCacheRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flushCacheRequest_Descriptor =
    $convert.base64Decode(
        'ChJfRmx1c2hDYWNoZVJlcXVlc3QSHQoKY2FjaGVfbmFtZRgBIAEoCVIJY2FjaGVOYW1l');

@$core.Deprecated('Use flushCacheResponse_Descriptor instead')
const FlushCacheResponse_$json = {
  '1': '_FlushCacheResponse',
};

/// Descriptor for `_FlushCacheResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flushCacheResponse_Descriptor =
    $convert.base64Decode('ChNfRmx1c2hDYWNoZVJlc3BvbnNl');
