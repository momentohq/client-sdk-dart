//
//  Generated code. Do not modify.
//  source: leaderboard.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use order_Descriptor instead')
const Order_$json = {
  '1': '_Order',
  '2': [
    {'1': 'ASCENDING', '2': 0},
    {'1': 'DESCENDING', '2': 1},
  ],
};

/// Descriptor for `_Order`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List order_Descriptor = $convert.base64Decode(
    'CgZfT3JkZXISDQoJQVNDRU5ESU5HEAASDgoKREVTQ0VORElORxAB');

@$core.Deprecated('Use element_Descriptor instead')
const Element_$json = {
  '1': '_Element',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'score', '3': 2, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `_Element`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List element_Descriptor = $convert.base64Decode(
    'CghfRWxlbWVudBIOCgJpZBgBIAEoDVICaWQSFAoFc2NvcmUYAiABKAJSBXNjb3Jl');

@$core.Deprecated('Use rankedElement_Descriptor instead')
const RankedElement_$json = {
  '1': '_RankedElement',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'score', '3': 2, '4': 1, '5': 2, '10': 'score'},
    {'1': 'rank', '3': 3, '4': 1, '5': 13, '10': 'rank'},
  ],
};

/// Descriptor for `_RankedElement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rankedElement_Descriptor = $convert.base64Decode(
    'Cg5fUmFua2VkRWxlbWVudBIOCgJpZBgBIAEoDVICaWQSFAoFc2NvcmUYAiABKAJSBXNjb3JlEh'
    'IKBHJhbmsYAyABKA1SBHJhbms=');

@$core.Deprecated('Use rankRange_Descriptor instead')
const RankRange_$json = {
  '1': '_RankRange',
  '2': [
    {'1': 'start_inclusive', '3': 1, '4': 1, '5': 13, '10': 'startInclusive'},
    {'1': 'end_exclusive', '3': 2, '4': 1, '5': 13, '10': 'endExclusive'},
  ],
};

/// Descriptor for `_RankRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rankRange_Descriptor = $convert.base64Decode(
    'CgpfUmFua1JhbmdlEicKD3N0YXJ0X2luY2x1c2l2ZRgBIAEoDVIOc3RhcnRJbmNsdXNpdmUSIw'
    'oNZW5kX2V4Y2x1c2l2ZRgCIAEoDVIMZW5kRXhjbHVzaXZl');

@$core.Deprecated('Use unbounded_Descriptor instead')
const Unbounded_$json = {
  '1': '_Unbounded',
};

/// Descriptor for `_Unbounded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unbounded_Descriptor = $convert.base64Decode(
    'CgpfVW5ib3VuZGVk');

@$core.Deprecated('Use scoreRange_Descriptor instead')
const ScoreRange_$json = {
  '1': '_ScoreRange',
  '2': [
    {'1': 'unbounded_min', '3': 1, '4': 1, '5': 11, '6': '.leaderboard._Unbounded', '9': 0, '10': 'unboundedMin'},
    {'1': 'min_inclusive', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'minInclusive'},
    {'1': 'unbounded_max', '3': 3, '4': 1, '5': 11, '6': '.leaderboard._Unbounded', '9': 1, '10': 'unboundedMax'},
    {'1': 'max_exclusive', '3': 4, '4': 1, '5': 2, '9': 1, '10': 'maxExclusive'},
  ],
  '8': [
    {'1': 'min'},
    {'1': 'max'},
  ],
};

/// Descriptor for `_ScoreRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scoreRange_Descriptor = $convert.base64Decode(
    'CgtfU2NvcmVSYW5nZRI+Cg11bmJvdW5kZWRfbWluGAEgASgLMhcubGVhZGVyYm9hcmQuX1VuYm'
    '91bmRlZEgAUgx1bmJvdW5kZWRNaW4SJQoNbWluX2luY2x1c2l2ZRgCIAEoAkgAUgxtaW5JbmNs'
    'dXNpdmUSPgoNdW5ib3VuZGVkX21heBgDIAEoCzIXLmxlYWRlcmJvYXJkLl9VbmJvdW5kZWRIAV'
    'IMdW5ib3VuZGVkTWF4EiUKDW1heF9leGNsdXNpdmUYBCABKAJIAVIMbWF4RXhjbHVzaXZlQgUK'
    'A21pbkIFCgNtYXg=');

@$core.Deprecated('Use empty_Descriptor instead')
const Empty_$json = {
  '1': '_Empty',
};

/// Descriptor for `_Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List empty_Descriptor = $convert.base64Decode(
    'CgZfRW1wdHk=');

@$core.Deprecated('Use deleteLeaderboardRequest_Descriptor instead')
const DeleteLeaderboardRequest_$json = {
  '1': '_DeleteLeaderboardRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'leaderboard', '3': 2, '4': 1, '5': 9, '10': 'leaderboard'},
  ],
};

/// Descriptor for `_DeleteLeaderboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteLeaderboardRequest_Descriptor = $convert.base64Decode(
    'ChlfRGVsZXRlTGVhZGVyYm9hcmRSZXF1ZXN0Eh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTm'
    'FtZRIgCgtsZWFkZXJib2FyZBgCIAEoCVILbGVhZGVyYm9hcmQ=');

@$core.Deprecated('Use getLeaderboardLengthRequest_Descriptor instead')
const GetLeaderboardLengthRequest_$json = {
  '1': '_GetLeaderboardLengthRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'leaderboard', '3': 2, '4': 1, '5': 9, '10': 'leaderboard'},
  ],
};

/// Descriptor for `_GetLeaderboardLengthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLeaderboardLengthRequest_Descriptor = $convert.base64Decode(
    'ChxfR2V0TGVhZGVyYm9hcmRMZW5ndGhSZXF1ZXN0Eh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2'
    'hlTmFtZRIgCgtsZWFkZXJib2FyZBgCIAEoCVILbGVhZGVyYm9hcmQ=');

@$core.Deprecated('Use getLeaderboardLengthResponse_Descriptor instead')
const GetLeaderboardLengthResponse_$json = {
  '1': '_GetLeaderboardLengthResponse',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
  ],
};

/// Descriptor for `_GetLeaderboardLengthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLeaderboardLengthResponse_Descriptor = $convert.base64Decode(
    'Ch1fR2V0TGVhZGVyYm9hcmRMZW5ndGhSZXNwb25zZRIUCgVjb3VudBgBIAEoDVIFY291bnQ=');

@$core.Deprecated('Use upsertElementsRequest_Descriptor instead')
const UpsertElementsRequest_$json = {
  '1': '_UpsertElementsRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'leaderboard', '3': 2, '4': 1, '5': 9, '10': 'leaderboard'},
    {'1': 'elements', '3': 3, '4': 3, '5': 11, '6': '.leaderboard._Element', '10': 'elements'},
  ],
};

/// Descriptor for `_UpsertElementsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upsertElementsRequest_Descriptor = $convert.base64Decode(
    'ChZfVXBzZXJ0RWxlbWVudHNSZXF1ZXN0Eh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTmFtZR'
    'IgCgtsZWFkZXJib2FyZBgCIAEoCVILbGVhZGVyYm9hcmQSMQoIZWxlbWVudHMYAyADKAsyFS5s'
    'ZWFkZXJib2FyZC5fRWxlbWVudFIIZWxlbWVudHM=');

@$core.Deprecated('Use getByRankRequest_Descriptor instead')
const GetByRankRequest_$json = {
  '1': '_GetByRankRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'leaderboard', '3': 2, '4': 1, '5': 9, '10': 'leaderboard'},
    {'1': 'rank_range', '3': 3, '4': 1, '5': 11, '6': '.leaderboard._RankRange', '10': 'rankRange'},
    {'1': 'order', '3': 4, '4': 1, '5': 14, '6': '.leaderboard._Order', '10': 'order'},
  ],
};

/// Descriptor for `_GetByRankRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByRankRequest_Descriptor = $convert.base64Decode(
    'ChFfR2V0QnlSYW5rUmVxdWVzdBIdCgpjYWNoZV9uYW1lGAEgASgJUgljYWNoZU5hbWUSIAoLbG'
    'VhZGVyYm9hcmQYAiABKAlSC2xlYWRlcmJvYXJkEjYKCnJhbmtfcmFuZ2UYAyABKAsyFy5sZWFk'
    'ZXJib2FyZC5fUmFua1JhbmdlUglyYW5rUmFuZ2USKQoFb3JkZXIYBCABKA4yEy5sZWFkZXJib2'
    'FyZC5fT3JkZXJSBW9yZGVy');

@$core.Deprecated('Use getByRankResponse_Descriptor instead')
const GetByRankResponse_$json = {
  '1': '_GetByRankResponse',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 11, '6': '.leaderboard._RankedElement', '10': 'elements'},
  ],
};

/// Descriptor for `_GetByRankResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByRankResponse_Descriptor = $convert.base64Decode(
    'ChJfR2V0QnlSYW5rUmVzcG9uc2USNwoIZWxlbWVudHMYASADKAsyGy5sZWFkZXJib2FyZC5fUm'
    'Fua2VkRWxlbWVudFIIZWxlbWVudHM=');

@$core.Deprecated('Use getRankRequest_Descriptor instead')
const GetRankRequest_$json = {
  '1': '_GetRankRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'leaderboard', '3': 2, '4': 1, '5': 9, '10': 'leaderboard'},
    {'1': 'ids', '3': 3, '4': 3, '5': 13, '10': 'ids'},
    {'1': 'order', '3': 4, '4': 1, '5': 14, '6': '.leaderboard._Order', '10': 'order'},
  ],
};

/// Descriptor for `_GetRankRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRankRequest_Descriptor = $convert.base64Decode(
    'Cg9fR2V0UmFua1JlcXVlc3QSHQoKY2FjaGVfbmFtZRgBIAEoCVIJY2FjaGVOYW1lEiAKC2xlYW'
    'RlcmJvYXJkGAIgASgJUgtsZWFkZXJib2FyZBIQCgNpZHMYAyADKA1SA2lkcxIpCgVvcmRlchgE'
    'IAEoDjITLmxlYWRlcmJvYXJkLl9PcmRlclIFb3JkZXI=');

@$core.Deprecated('Use getRankResponse_Descriptor instead')
const GetRankResponse_$json = {
  '1': '_GetRankResponse',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 11, '6': '.leaderboard._RankedElement', '10': 'elements'},
  ],
};

/// Descriptor for `_GetRankResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRankResponse_Descriptor = $convert.base64Decode(
    'ChBfR2V0UmFua1Jlc3BvbnNlEjcKCGVsZW1lbnRzGAEgAygLMhsubGVhZGVyYm9hcmQuX1Jhbm'
    'tlZEVsZW1lbnRSCGVsZW1lbnRz');

@$core.Deprecated('Use removeElementsRequest_Descriptor instead')
const RemoveElementsRequest_$json = {
  '1': '_RemoveElementsRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'leaderboard', '3': 2, '4': 1, '5': 9, '10': 'leaderboard'},
    {'1': 'ids', '3': 3, '4': 3, '5': 13, '10': 'ids'},
  ],
};

/// Descriptor for `_RemoveElementsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeElementsRequest_Descriptor = $convert.base64Decode(
    'ChZfUmVtb3ZlRWxlbWVudHNSZXF1ZXN0Eh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTmFtZR'
    'IgCgtsZWFkZXJib2FyZBgCIAEoCVILbGVhZGVyYm9hcmQSEAoDaWRzGAMgAygNUgNpZHM=');

@$core.Deprecated('Use getByScoreRequest_Descriptor instead')
const GetByScoreRequest_$json = {
  '1': '_GetByScoreRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'leaderboard', '3': 2, '4': 1, '5': 9, '10': 'leaderboard'},
    {'1': 'score_range', '3': 3, '4': 1, '5': 11, '6': '.leaderboard._ScoreRange', '10': 'scoreRange'},
    {'1': 'offset', '3': 4, '4': 1, '5': 13, '10': 'offset'},
    {'1': 'limit_elements', '3': 5, '4': 1, '5': 13, '10': 'limitElements'},
    {'1': 'order', '3': 6, '4': 1, '5': 14, '6': '.leaderboard._Order', '10': 'order'},
  ],
};

/// Descriptor for `_GetByScoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByScoreRequest_Descriptor = $convert.base64Decode(
    'ChJfR2V0QnlTY29yZVJlcXVlc3QSHQoKY2FjaGVfbmFtZRgBIAEoCVIJY2FjaGVOYW1lEiAKC2'
    'xlYWRlcmJvYXJkGAIgASgJUgtsZWFkZXJib2FyZBI5CgtzY29yZV9yYW5nZRgDIAEoCzIYLmxl'
    'YWRlcmJvYXJkLl9TY29yZVJhbmdlUgpzY29yZVJhbmdlEhYKBm9mZnNldBgEIAEoDVIGb2Zmc2'
    'V0EiUKDmxpbWl0X2VsZW1lbnRzGAUgASgNUg1saW1pdEVsZW1lbnRzEikKBW9yZGVyGAYgASgO'
    'MhMubGVhZGVyYm9hcmQuX09yZGVyUgVvcmRlcg==');

@$core.Deprecated('Use getByScoreResponse_Descriptor instead')
const GetByScoreResponse_$json = {
  '1': '_GetByScoreResponse',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 11, '6': '.leaderboard._RankedElement', '10': 'elements'},
  ],
};

/// Descriptor for `_GetByScoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByScoreResponse_Descriptor = $convert.base64Decode(
    'ChNfR2V0QnlTY29yZVJlc3BvbnNlEjcKCGVsZW1lbnRzGAEgAygLMhsubGVhZGVyYm9hcmQuX1'
    'JhbmtlZEVsZW1lbnRSCGVsZW1lbnRz');

