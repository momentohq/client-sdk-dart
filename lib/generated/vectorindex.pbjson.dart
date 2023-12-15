//
//  Generated code. Do not modify.
//  source: vectorindex.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use item_Descriptor instead')
const Item_$json = {
  '1': '_Item',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'vector',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._Vector',
      '10': 'vector'
    },
    {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._Metadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `_Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List item_Descriptor = $convert.base64Decode(
    'CgVfSXRlbRIOCgJpZBgBIAEoCVICaWQSLAoGdmVjdG9yGAIgASgLMhQudmVjdG9yaW5kZXguX1'
    'ZlY3RvclIGdmVjdG9yEjIKCG1ldGFkYXRhGAMgAygLMhYudmVjdG9yaW5kZXguX01ldGFkYXRh'
    'UghtZXRhZGF0YQ==');

@$core.Deprecated('Use upsertItemBatchRequest_Descriptor instead')
const UpsertItemBatchRequest_$json = {
  '1': '_UpsertItemBatchRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._Item',
      '10': 'items'
    },
  ],
};

/// Descriptor for `_UpsertItemBatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upsertItemBatchRequest_Descriptor =
    $convert.base64Decode(
        'ChdfVXBzZXJ0SXRlbUJhdGNoUmVxdWVzdBIdCgppbmRleF9uYW1lGAEgASgJUglpbmRleE5hbW'
        'USKAoFaXRlbXMYAiADKAsyEi52ZWN0b3JpbmRleC5fSXRlbVIFaXRlbXM=');

@$core.Deprecated('Use upsertItemBatchResponse_Descriptor instead')
const UpsertItemBatchResponse_$json = {
  '1': '_UpsertItemBatchResponse',
  '2': [
    {'1': 'error_indices', '3': 1, '4': 3, '5': 13, '10': 'errorIndices'},
  ],
};

/// Descriptor for `_UpsertItemBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upsertItemBatchResponse_Descriptor =
    $convert.base64Decode(
        'ChhfVXBzZXJ0SXRlbUJhdGNoUmVzcG9uc2USIwoNZXJyb3JfaW5kaWNlcxgBIAMoDVIMZXJyb3'
        'JJbmRpY2Vz');

@$core.Deprecated('Use deleteItemBatchRequest_Descriptor instead')
const DeleteItemBatchRequest_$json = {
  '1': '_DeleteItemBatchRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {'1': 'ids', '3': 2, '4': 3, '5': 9, '10': 'ids'},
  ],
};

/// Descriptor for `_DeleteItemBatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemBatchRequest_Descriptor =
    $convert.base64Decode(
        'ChdfRGVsZXRlSXRlbUJhdGNoUmVxdWVzdBIdCgppbmRleF9uYW1lGAEgASgJUglpbmRleE5hbW'
        'USEAoDaWRzGAIgAygJUgNpZHM=');

@$core.Deprecated('Use deleteItemBatchResponse_Descriptor instead')
const DeleteItemBatchResponse_$json = {
  '1': '_DeleteItemBatchResponse',
};

/// Descriptor for `_DeleteItemBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemBatchResponse_Descriptor =
    $convert.base64Decode('ChhfRGVsZXRlSXRlbUJhdGNoUmVzcG9uc2U=');

@$core.Deprecated('Use vector_Descriptor instead')
const Vector_$json = {
  '1': '_Vector',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 2, '10': 'elements'},
  ],
};

/// Descriptor for `_Vector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vector_Descriptor = $convert
    .base64Decode('CgdfVmVjdG9yEhoKCGVsZW1lbnRzGAEgAygCUghlbGVtZW50cw==');

@$core.Deprecated('Use metadata_Descriptor instead')
const Metadata_$json = {
  '1': '_Metadata',
  '2': [
    {'1': 'field', '3': 1, '4': 1, '5': 9, '10': 'field'},
    {'1': 'string_value', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {
      '1': 'integer_value',
      '3': 3,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'integerValue'
    },
    {'1': 'double_value', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {
      '1': 'boolean_value',
      '3': 5,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'booleanValue'
    },
    {
      '1': 'list_of_strings_value',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._Metadata._ListOfStrings',
      '9': 0,
      '10': 'listOfStringsValue'
    },
  ],
  '3': [Metadata___ListOfStrings$json],
  '8': [
    {'1': 'value'},
  ],
};

@$core.Deprecated('Use metadata_Descriptor instead')
const Metadata___ListOfStrings$json = {
  '1': '_ListOfStrings',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `_Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadata_Descriptor = $convert.base64Decode(
    'CglfTWV0YWRhdGESFAoFZmllbGQYASABKAlSBWZpZWxkEiMKDHN0cmluZ192YWx1ZRgCIAEoCU'
    'gAUgtzdHJpbmdWYWx1ZRIlCg1pbnRlZ2VyX3ZhbHVlGAMgASgDSABSDGludGVnZXJWYWx1ZRIj'
    'Cgxkb3VibGVfdmFsdWUYBCABKAFIAFILZG91YmxlVmFsdWUSJQoNYm9vbGVhbl92YWx1ZRgFIA'
    'EoCEgAUgxib29sZWFuVmFsdWUSWgoVbGlzdF9vZl9zdHJpbmdzX3ZhbHVlGAYgASgLMiUudmVj'
    'dG9yaW5kZXguX01ldGFkYXRhLl9MaXN0T2ZTdHJpbmdzSABSEmxpc3RPZlN0cmluZ3NWYWx1ZR'
    'ooCg5fTGlzdE9mU3RyaW5ncxIWCgZ2YWx1ZXMYASADKAlSBnZhbHVlc0IHCgV2YWx1ZQ==');

@$core.Deprecated('Use metadataRequest_Descriptor instead')
const MetadataRequest_$json = {
  '1': '_MetadataRequest',
  '2': [
    {
      '1': 'some',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._MetadataRequest.Some',
      '9': 0,
      '10': 'some'
    },
    {
      '1': 'all',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._MetadataRequest.All',
      '9': 0,
      '10': 'all'
    },
  ],
  '3': [MetadataRequest__Some$json, MetadataRequest__All$json],
  '8': [
    {'1': 'kind'},
  ],
};

@$core.Deprecated('Use metadataRequest_Descriptor instead')
const MetadataRequest__Some$json = {
  '1': 'Some',
  '2': [
    {'1': 'fields', '3': 1, '4': 3, '5': 9, '10': 'fields'},
  ],
};

@$core.Deprecated('Use metadataRequest_Descriptor instead')
const MetadataRequest__All$json = {
  '1': 'All',
};

/// Descriptor for `_MetadataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataRequest_Descriptor = $convert.base64Decode(
    'ChBfTWV0YWRhdGFSZXF1ZXN0EjgKBHNvbWUYAiABKAsyIi52ZWN0b3JpbmRleC5fTWV0YWRhdG'
    'FSZXF1ZXN0LlNvbWVIAFIEc29tZRI1CgNhbGwYAyABKAsyIS52ZWN0b3JpbmRleC5fTWV0YWRh'
    'dGFSZXF1ZXN0LkFsbEgAUgNhbGwaHgoEU29tZRIWCgZmaWVsZHMYASADKAlSBmZpZWxkcxoFCg'
    'NBbGxCBgoEa2luZA==');

@$core.Deprecated('Use noScoreThreshold_Descriptor instead')
const NoScoreThreshold_$json = {
  '1': '_NoScoreThreshold',
};

/// Descriptor for `_NoScoreThreshold`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noScoreThreshold_Descriptor =
    $convert.base64Decode('ChFfTm9TY29yZVRocmVzaG9sZA==');

@$core.Deprecated('Use searchRequest_Descriptor instead')
const SearchRequest_$json = {
  '1': '_SearchRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {'1': 'top_k', '3': 2, '4': 1, '5': 13, '10': 'topK'},
    {
      '1': 'query_vector',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._Vector',
      '10': 'queryVector'
    },
    {
      '1': 'metadata_fields',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._MetadataRequest',
      '10': 'metadataFields'
    },
    {
      '1': 'score_threshold',
      '3': 5,
      '4': 1,
      '5': 2,
      '9': 0,
      '10': 'scoreThreshold'
    },
    {
      '1': 'no_score_threshold',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._NoScoreThreshold',
      '9': 0,
      '10': 'noScoreThreshold'
    },
  ],
  '8': [
    {'1': 'threshold'},
  ],
};

/// Descriptor for `_SearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRequest_Descriptor = $convert.base64Decode(
    'Cg5fU2VhcmNoUmVxdWVzdBIdCgppbmRleF9uYW1lGAEgASgJUglpbmRleE5hbWUSEwoFdG9wX2'
    'sYAiABKA1SBHRvcEsSNwoMcXVlcnlfdmVjdG9yGAMgASgLMhQudmVjdG9yaW5kZXguX1ZlY3Rv'
    'clILcXVlcnlWZWN0b3ISRgoPbWV0YWRhdGFfZmllbGRzGAQgASgLMh0udmVjdG9yaW5kZXguX0'
    '1ldGFkYXRhUmVxdWVzdFIObWV0YWRhdGFGaWVsZHMSKQoPc2NvcmVfdGhyZXNob2xkGAUgASgC'
    'SABSDnNjb3JlVGhyZXNob2xkEk4KEm5vX3Njb3JlX3RocmVzaG9sZBgGIAEoCzIeLnZlY3Rvcm'
    'luZGV4Ll9Ob1Njb3JlVGhyZXNob2xkSABSEG5vU2NvcmVUaHJlc2hvbGRCCwoJdGhyZXNob2xk');

@$core.Deprecated('Use searchAndFetchVectorsRequest_Descriptor instead')
const SearchAndFetchVectorsRequest_$json = {
  '1': '_SearchAndFetchVectorsRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {'1': 'top_k', '3': 2, '4': 1, '5': 13, '10': 'topK'},
    {
      '1': 'query_vector',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._Vector',
      '10': 'queryVector'
    },
    {
      '1': 'metadata_fields',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._MetadataRequest',
      '10': 'metadataFields'
    },
    {
      '1': 'score_threshold',
      '3': 5,
      '4': 1,
      '5': 2,
      '9': 0,
      '10': 'scoreThreshold'
    },
    {
      '1': 'no_score_threshold',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._NoScoreThreshold',
      '9': 0,
      '10': 'noScoreThreshold'
    },
  ],
  '8': [
    {'1': 'threshold'},
  ],
};

/// Descriptor for `_SearchAndFetchVectorsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchAndFetchVectorsRequest_Descriptor = $convert.base64Decode(
    'Ch1fU2VhcmNoQW5kRmV0Y2hWZWN0b3JzUmVxdWVzdBIdCgppbmRleF9uYW1lGAEgASgJUglpbm'
    'RleE5hbWUSEwoFdG9wX2sYAiABKA1SBHRvcEsSNwoMcXVlcnlfdmVjdG9yGAMgASgLMhQudmVj'
    'dG9yaW5kZXguX1ZlY3RvclILcXVlcnlWZWN0b3ISRgoPbWV0YWRhdGFfZmllbGRzGAQgASgLMh'
    '0udmVjdG9yaW5kZXguX01ldGFkYXRhUmVxdWVzdFIObWV0YWRhdGFGaWVsZHMSKQoPc2NvcmVf'
    'dGhyZXNob2xkGAUgASgCSABSDnNjb3JlVGhyZXNob2xkEk4KEm5vX3Njb3JlX3RocmVzaG9sZB'
    'gGIAEoCzIeLnZlY3RvcmluZGV4Ll9Ob1Njb3JlVGhyZXNob2xkSABSEG5vU2NvcmVUaHJlc2hv'
    'bGRCCwoJdGhyZXNob2xk');

@$core.Deprecated('Use searchHit_Descriptor instead')
const SearchHit_$json = {
  '1': '_SearchHit',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'score', '3': 2, '4': 1, '5': 2, '10': 'score'},
    {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._Metadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `_SearchHit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchHit_Descriptor = $convert.base64Decode(
    'CgpfU2VhcmNoSGl0Eg4KAmlkGAEgASgJUgJpZBIUCgVzY29yZRgCIAEoAlIFc2NvcmUSMgoIbW'
    'V0YWRhdGEYAyADKAsyFi52ZWN0b3JpbmRleC5fTWV0YWRhdGFSCG1ldGFkYXRh');

@$core.Deprecated('Use searchAndFetchVectorsHit_Descriptor instead')
const SearchAndFetchVectorsHit_$json = {
  '1': '_SearchAndFetchVectorsHit',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'score', '3': 2, '4': 1, '5': 2, '10': 'score'},
    {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._Metadata',
      '10': 'metadata'
    },
    {
      '1': 'vector',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._Vector',
      '10': 'vector'
    },
  ],
};

/// Descriptor for `_SearchAndFetchVectorsHit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchAndFetchVectorsHit_Descriptor = $convert.base64Decode(
    'ChlfU2VhcmNoQW5kRmV0Y2hWZWN0b3JzSGl0Eg4KAmlkGAEgASgJUgJpZBIUCgVzY29yZRgCIA'
    'EoAlIFc2NvcmUSMgoIbWV0YWRhdGEYAyADKAsyFi52ZWN0b3JpbmRleC5fTWV0YWRhdGFSCG1l'
    'dGFkYXRhEiwKBnZlY3RvchgEIAEoCzIULnZlY3RvcmluZGV4Ll9WZWN0b3JSBnZlY3Rvcg==');

@$core.Deprecated('Use searchResponse_Descriptor instead')
const SearchResponse_$json = {
  '1': '_SearchResponse',
  '2': [
    {
      '1': 'hits',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._SearchHit',
      '10': 'hits'
    },
  ],
};

/// Descriptor for `_SearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResponse_Descriptor = $convert.base64Decode(
    'Cg9fU2VhcmNoUmVzcG9uc2USKwoEaGl0cxgBIAMoCzIXLnZlY3RvcmluZGV4Ll9TZWFyY2hIaX'
    'RSBGhpdHM=');

@$core.Deprecated('Use searchAndFetchVectorsResponse_Descriptor instead')
const SearchAndFetchVectorsResponse_$json = {
  '1': '_SearchAndFetchVectorsResponse',
  '2': [
    {
      '1': 'hits',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._SearchAndFetchVectorsHit',
      '10': 'hits'
    },
  ],
};

/// Descriptor for `_SearchAndFetchVectorsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchAndFetchVectorsResponse_Descriptor =
    $convert.base64Decode(
        'Ch5fU2VhcmNoQW5kRmV0Y2hWZWN0b3JzUmVzcG9uc2USOgoEaGl0cxgBIAMoCzImLnZlY3Rvcm'
        'luZGV4Ll9TZWFyY2hBbmRGZXRjaFZlY3RvcnNIaXRSBGhpdHM=');

@$core.Deprecated('Use getItemMetadataBatchRequest_Descriptor instead')
const GetItemMetadataBatchRequest_$json = {
  '1': '_GetItemMetadataBatchRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {'1': 'ids', '3': 2, '4': 3, '5': 9, '10': 'ids'},
    {
      '1': 'metadata_fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._MetadataRequest',
      '10': 'metadataFields'
    },
  ],
};

/// Descriptor for `_GetItemMetadataBatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemMetadataBatchRequest_Descriptor =
    $convert.base64Decode(
        'ChxfR2V0SXRlbU1ldGFkYXRhQmF0Y2hSZXF1ZXN0Eh0KCmluZGV4X25hbWUYASABKAlSCWluZG'
        'V4TmFtZRIQCgNpZHMYAiADKAlSA2lkcxJGCg9tZXRhZGF0YV9maWVsZHMYAyABKAsyHS52ZWN0'
        'b3JpbmRleC5fTWV0YWRhdGFSZXF1ZXN0Ug5tZXRhZGF0YUZpZWxkcw==');

@$core.Deprecated('Use itemMetadataResponse_Descriptor instead')
const ItemMetadataResponse_$json = {
  '1': '_ItemMetadataResponse',
  '2': [
    {
      '1': 'miss',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._ItemMetadataResponse._Miss',
      '9': 0,
      '10': 'miss'
    },
    {
      '1': 'hit',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._ItemMetadataResponse._Hit',
      '9': 0,
      '10': 'hit'
    },
  ],
  '3': [ItemMetadataResponse___Miss$json, ItemMetadataResponse___Hit$json],
  '8': [
    {'1': 'response'},
  ],
};

@$core.Deprecated('Use itemMetadataResponse_Descriptor instead')
const ItemMetadataResponse___Miss$json = {
  '1': '_Miss',
};

@$core.Deprecated('Use itemMetadataResponse_Descriptor instead')
const ItemMetadataResponse___Hit$json = {
  '1': '_Hit',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'metadata',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._Metadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `_ItemMetadataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemMetadataResponse_Descriptor = $convert.base64Decode(
    'ChVfSXRlbU1ldGFkYXRhUmVzcG9uc2USPgoEbWlzcxgBIAEoCzIoLnZlY3RvcmluZGV4Ll9JdG'
    'VtTWV0YWRhdGFSZXNwb25zZS5fTWlzc0gAUgRtaXNzEjsKA2hpdBgCIAEoCzInLnZlY3Rvcmlu'
    'ZGV4Ll9JdGVtTWV0YWRhdGFSZXNwb25zZS5fSGl0SABSA2hpdBoHCgVfTWlzcxpKCgRfSGl0Eg'
    '4KAmlkGAEgASgJUgJpZBIyCghtZXRhZGF0YRgCIAMoCzIWLnZlY3RvcmluZGV4Ll9NZXRhZGF0'
    'YVIIbWV0YWRhdGFCCgoIcmVzcG9uc2U=');

@$core.Deprecated('Use getItemMetadataBatchResponse_Descriptor instead')
const GetItemMetadataBatchResponse_$json = {
  '1': '_GetItemMetadataBatchResponse',
  '2': [
    {
      '1': 'item_metadata_response',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._ItemMetadataResponse',
      '10': 'itemMetadataResponse'
    },
  ],
};

/// Descriptor for `_GetItemMetadataBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemMetadataBatchResponse_Descriptor =
    $convert.base64Decode(
        'Ch1fR2V0SXRlbU1ldGFkYXRhQmF0Y2hSZXNwb25zZRJYChZpdGVtX21ldGFkYXRhX3Jlc3Bvbn'
        'NlGAEgAygLMiIudmVjdG9yaW5kZXguX0l0ZW1NZXRhZGF0YVJlc3BvbnNlUhRpdGVtTWV0YWRh'
        'dGFSZXNwb25zZQ==');

@$core.Deprecated('Use getItemBatchRequest_Descriptor instead')
const GetItemBatchRequest_$json = {
  '1': '_GetItemBatchRequest',
  '2': [
    {'1': 'index_name', '3': 1, '4': 1, '5': 9, '10': 'indexName'},
    {'1': 'ids', '3': 2, '4': 3, '5': 9, '10': 'ids'},
    {
      '1': 'metadata_fields',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._MetadataRequest',
      '10': 'metadataFields'
    },
  ],
};

/// Descriptor for `_GetItemBatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemBatchRequest_Descriptor = $convert.base64Decode(
    'ChRfR2V0SXRlbUJhdGNoUmVxdWVzdBIdCgppbmRleF9uYW1lGAEgASgJUglpbmRleE5hbWUSEA'
    'oDaWRzGAIgAygJUgNpZHMSRgoPbWV0YWRhdGFfZmllbGRzGAMgASgLMh0udmVjdG9yaW5kZXgu'
    'X01ldGFkYXRhUmVxdWVzdFIObWV0YWRhdGFGaWVsZHM=');

@$core.Deprecated('Use itemResponse_Descriptor instead')
const ItemResponse_$json = {
  '1': '_ItemResponse',
  '2': [
    {
      '1': 'miss',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._ItemResponse._Miss',
      '9': 0,
      '10': 'miss'
    },
    {
      '1': 'hit',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._ItemResponse._Hit',
      '9': 0,
      '10': 'hit'
    },
  ],
  '3': [ItemResponse___Miss$json, ItemResponse___Hit$json],
  '8': [
    {'1': 'response'},
  ],
};

@$core.Deprecated('Use itemResponse_Descriptor instead')
const ItemResponse___Miss$json = {
  '1': '_Miss',
};

@$core.Deprecated('Use itemResponse_Descriptor instead')
const ItemResponse___Hit$json = {
  '1': '_Hit',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'vector',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.vectorindex._Vector',
      '10': 'vector'
    },
    {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._Metadata',
      '10': 'metadata'
    },
  ],
};

/// Descriptor for `_ItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemResponse_Descriptor = $convert.base64Decode(
    'Cg1fSXRlbVJlc3BvbnNlEjYKBG1pc3MYASABKAsyIC52ZWN0b3JpbmRleC5fSXRlbVJlc3Bvbn'
    'NlLl9NaXNzSABSBG1pc3MSMwoDaGl0GAIgASgLMh8udmVjdG9yaW5kZXguX0l0ZW1SZXNwb25z'
    'ZS5fSGl0SABSA2hpdBoHCgVfTWlzcxp4CgRfSGl0Eg4KAmlkGAEgASgJUgJpZBIsCgZ2ZWN0b3'
    'IYAiABKAsyFC52ZWN0b3JpbmRleC5fVmVjdG9yUgZ2ZWN0b3ISMgoIbWV0YWRhdGEYAyADKAsy'
    'Fi52ZWN0b3JpbmRleC5fTWV0YWRhdGFSCG1ldGFkYXRhQgoKCHJlc3BvbnNl');

@$core.Deprecated('Use getItemBatchResponse_Descriptor instead')
const GetItemBatchResponse_$json = {
  '1': '_GetItemBatchResponse',
  '2': [
    {
      '1': 'item_response',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.vectorindex._ItemResponse',
      '10': 'itemResponse'
    },
  ],
};

/// Descriptor for `_GetItemBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemBatchResponse_Descriptor = $convert.base64Decode(
    'ChVfR2V0SXRlbUJhdGNoUmVzcG9uc2USPwoNaXRlbV9yZXNwb25zZRgBIAMoCzIaLnZlY3Rvcm'
    'luZGV4Ll9JdGVtUmVzcG9uc2VSDGl0ZW1SZXNwb25zZQ==');
