//
//  Generated code. Do not modify.
//  source: cachepubsub.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use publishRequest_Descriptor instead')
const PublishRequest_$json = {
  '1': '_PublishRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'topic', '3': 2, '4': 1, '5': 9, '10': 'topic'},
    {
      '1': 'value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cache_client.pubsub._TopicValue',
      '10': 'value'
    },
  ],
  '7': {},
};

/// Descriptor for `_PublishRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishRequest_Descriptor = $convert.base64Decode(
    'Cg9fUHVibGlzaFJlcXVlc3QSHQoKY2FjaGVfbmFtZRgBIAEoCVIJY2FjaGVOYW1lEhQKBXRvcG'
    'ljGAIgASgJUgV0b3BpYxI2CgV2YWx1ZRgDIAEoCzIgLmNhY2hlX2NsaWVudC5wdWJzdWIuX1Rv'
    'cGljVmFsdWVSBXZhbHVlOgSAtRgA');

@$core.Deprecated('Use subscriptionRequest_Descriptor instead')
const SubscriptionRequest_$json = {
  '1': '_SubscriptionRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'topic', '3': 2, '4': 1, '5': 9, '10': 'topic'},
    {
      '1': 'resume_at_topic_sequence_number',
      '3': 3,
      '4': 1,
      '5': 4,
      '10': 'resumeAtTopicSequenceNumber'
    },
    {'1': 'sequence_page', '3': 4, '4': 1, '5': 4, '10': 'sequencePage'},
  ],
  '7': {},
};

/// Descriptor for `_SubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionRequest_Descriptor = $convert.base64Decode(
    'ChRfU3Vic2NyaXB0aW9uUmVxdWVzdBIdCgpjYWNoZV9uYW1lGAEgASgJUgljYWNoZU5hbWUSFA'
    'oFdG9waWMYAiABKAlSBXRvcGljEkQKH3Jlc3VtZV9hdF90b3BpY19zZXF1ZW5jZV9udW1iZXIY'
    'AyABKARSG3Jlc3VtZUF0VG9waWNTZXF1ZW5jZU51bWJlchIjCg1zZXF1ZW5jZV9wYWdlGAQgAS'
    'gEUgxzZXF1ZW5jZVBhZ2U6BIC1GAE=');

@$core.Deprecated('Use subscriptionItem_Descriptor instead')
const SubscriptionItem_$json = {
  '1': '_SubscriptionItem',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cache_client.pubsub._TopicItem',
      '9': 0,
      '10': 'item'
    },
    {
      '1': 'discontinuity',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cache_client.pubsub._Discontinuity',
      '9': 0,
      '10': 'discontinuity'
    },
    {
      '1': 'heartbeat',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cache_client.pubsub._Heartbeat',
      '9': 0,
      '10': 'heartbeat'
    },
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `_SubscriptionItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionItem_Descriptor = $convert.base64Decode(
    'ChFfU3Vic2NyaXB0aW9uSXRlbRI1CgRpdGVtGAEgASgLMh8uY2FjaGVfY2xpZW50LnB1YnN1Yi'
    '5fVG9waWNJdGVtSABSBGl0ZW0SSwoNZGlzY29udGludWl0eRgCIAEoCzIjLmNhY2hlX2NsaWVu'
    'dC5wdWJzdWIuX0Rpc2NvbnRpbnVpdHlIAFINZGlzY29udGludWl0eRI/CgloZWFydGJlYXQYAy'
    'ABKAsyHy5jYWNoZV9jbGllbnQucHVic3ViLl9IZWFydGJlYXRIAFIJaGVhcnRiZWF0QgYKBGtp'
    'bmQ=');

@$core.Deprecated('Use topicItem_Descriptor instead')
const TopicItem_$json = {
  '1': '_TopicItem',
  '2': [
    {
      '1': 'topic_sequence_number',
      '3': 1,
      '4': 1,
      '5': 4,
      '10': 'topicSequenceNumber'
    },
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cache_client.pubsub._TopicValue',
      '10': 'value'
    },
    {'1': 'publisher_id', '3': 3, '4': 1, '5': 9, '10': 'publisherId'},
    {'1': 'sequence_page', '3': 4, '4': 1, '5': 4, '10': 'sequencePage'},
  ],
};

/// Descriptor for `_TopicItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicItem_Descriptor = $convert.base64Decode(
    'CgpfVG9waWNJdGVtEjIKFXRvcGljX3NlcXVlbmNlX251bWJlchgBIAEoBFITdG9waWNTZXF1ZW'
    '5jZU51bWJlchI2CgV2YWx1ZRgCIAEoCzIgLmNhY2hlX2NsaWVudC5wdWJzdWIuX1RvcGljVmFs'
    'dWVSBXZhbHVlEiEKDHB1Ymxpc2hlcl9pZBgDIAEoCVILcHVibGlzaGVySWQSIwoNc2VxdWVuY2'
    'VfcGFnZRgEIAEoBFIMc2VxdWVuY2VQYWdl');

@$core.Deprecated('Use topicValue_Descriptor instead')
const TopicValue_$json = {
  '1': '_TopicValue',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'text'},
    {'1': 'binary', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'binary'},
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `_TopicValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicValue_Descriptor = $convert.base64Decode(
    'CgtfVG9waWNWYWx1ZRIUCgR0ZXh0GAEgASgJSABSBHRleHQSGAoGYmluYXJ5GAIgASgMSABSBm'
    'JpbmFyeUIGCgRraW5k');

@$core.Deprecated('Use discontinuity_Descriptor instead')
const Discontinuity_$json = {
  '1': '_Discontinuity',
  '2': [
    {
      '1': 'last_topic_sequence',
      '3': 1,
      '4': 1,
      '5': 4,
      '10': 'lastTopicSequence'
    },
    {
      '1': 'new_topic_sequence',
      '3': 2,
      '4': 1,
      '5': 4,
      '10': 'newTopicSequence'
    },
    {'1': 'new_sequence_page', '3': 3, '4': 1, '5': 4, '10': 'newSequencePage'},
  ],
};

/// Descriptor for `_Discontinuity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List discontinuity_Descriptor = $convert.base64Decode(
    'Cg5fRGlzY29udGludWl0eRIuChNsYXN0X3RvcGljX3NlcXVlbmNlGAEgASgEUhFsYXN0VG9waW'
    'NTZXF1ZW5jZRIsChJuZXdfdG9waWNfc2VxdWVuY2UYAiABKARSEG5ld1RvcGljU2VxdWVuY2US'
    'KgoRbmV3X3NlcXVlbmNlX3BhZ2UYAyABKARSD25ld1NlcXVlbmNlUGFnZQ==');

@$core.Deprecated('Use heartbeat_Descriptor instead')
const Heartbeat_$json = {
  '1': '_Heartbeat',
};

/// Descriptor for `_Heartbeat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartbeat_Descriptor =
    $convert.base64Decode('CgpfSGVhcnRiZWF0');
