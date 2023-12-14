//
//  Generated code. Do not modify.
//  source: webhook.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use webhookId_Descriptor instead')
const WebhookId_$json = {
  '1': '_WebhookId',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'webhook_name', '3': 2, '4': 1, '5': 9, '10': 'webhookName'},
  ],
};

/// Descriptor for `_WebhookId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhookId_Descriptor = $convert.base64Decode(
    'CgpfV2ViaG9va0lkEh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTmFtZRIhCgx3ZWJob29rX2'
    '5hbWUYAiABKAlSC3dlYmhvb2tOYW1l');

@$core.Deprecated('Use webhook_Descriptor instead')
const Webhook_$json = {
  '1': '_Webhook',
  '2': [
    {'1': 'webhook_id', '3': 1, '4': 1, '5': 11, '6': '.webhook._WebhookId', '10': 'webhookId'},
    {'1': 'topic_name', '3': 2, '4': 1, '5': 9, '10': 'topicName'},
    {'1': 'destination', '3': 3, '4': 1, '5': 11, '6': '.webhook._WebhookDestination', '10': 'destination'},
  ],
};

/// Descriptor for `_Webhook`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhook_Descriptor = $convert.base64Decode(
    'CghfV2ViaG9vaxIyCgp3ZWJob29rX2lkGAEgASgLMhMud2ViaG9vay5fV2ViaG9va0lkUgl3ZW'
    'Job29rSWQSHQoKdG9waWNfbmFtZRgCIAEoCVIJdG9waWNOYW1lEj4KC2Rlc3RpbmF0aW9uGAMg'
    'ASgLMhwud2ViaG9vay5fV2ViaG9va0Rlc3RpbmF0aW9uUgtkZXN0aW5hdGlvbg==');

@$core.Deprecated('Use putWebhookRequest_Descriptor instead')
const PutWebhookRequest_$json = {
  '1': '_PutWebhookRequest',
  '2': [
    {'1': 'webhook', '3': 1, '4': 1, '5': 11, '6': '.webhook._Webhook', '10': 'webhook'},
  ],
};

/// Descriptor for `_PutWebhookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putWebhookRequest_Descriptor = $convert.base64Decode(
    'ChJfUHV0V2ViaG9va1JlcXVlc3QSKwoHd2ViaG9vaxgBIAEoCzIRLndlYmhvb2suX1dlYmhvb2'
    'tSB3dlYmhvb2s=');

@$core.Deprecated('Use putWebhookResponse_Descriptor instead')
const PutWebhookResponse_$json = {
  '1': '_PutWebhookResponse',
  '2': [
    {'1': 'secret_string', '3': 1, '4': 1, '5': 9, '10': 'secretString'},
  ],
};

/// Descriptor for `_PutWebhookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putWebhookResponse_Descriptor = $convert.base64Decode(
    'ChNfUHV0V2ViaG9va1Jlc3BvbnNlEiMKDXNlY3JldF9zdHJpbmcYASABKAlSDHNlY3JldFN0cm'
    'luZw==');

@$core.Deprecated('Use deleteWebhookRequest_Descriptor instead')
const DeleteWebhookRequest_$json = {
  '1': '_DeleteWebhookRequest',
  '2': [
    {'1': 'webhook_id', '3': 1, '4': 1, '5': 11, '6': '.webhook._WebhookId', '10': 'webhookId'},
  ],
};

/// Descriptor for `_DeleteWebhookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWebhookRequest_Descriptor = $convert.base64Decode(
    'ChVfRGVsZXRlV2ViaG9va1JlcXVlc3QSMgoKd2ViaG9va19pZBgBIAEoCzITLndlYmhvb2suX1'
    'dlYmhvb2tJZFIJd2ViaG9va0lk');

@$core.Deprecated('Use deleteWebhookResponse_Descriptor instead')
const DeleteWebhookResponse_$json = {
  '1': '_DeleteWebhookResponse',
};

/// Descriptor for `_DeleteWebhookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWebhookResponse_Descriptor = $convert.base64Decode(
    'ChZfRGVsZXRlV2ViaG9va1Jlc3BvbnNl');

@$core.Deprecated('Use listWebhookRequest_Descriptor instead')
const ListWebhookRequest_$json = {
  '1': '_ListWebhookRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
  ],
};

/// Descriptor for `_ListWebhookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWebhookRequest_Descriptor = $convert.base64Decode(
    'ChNfTGlzdFdlYmhvb2tSZXF1ZXN0Eh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTmFtZQ==');

@$core.Deprecated('Use listWebhooksResponse_Descriptor instead')
const ListWebhooksResponse_$json = {
  '1': '_ListWebhooksResponse',
  '2': [
    {'1': 'webhook', '3': 1, '4': 3, '5': 11, '6': '.webhook._Webhook', '10': 'webhook'},
  ],
};

/// Descriptor for `_ListWebhooksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWebhooksResponse_Descriptor = $convert.base64Decode(
    'ChVfTGlzdFdlYmhvb2tzUmVzcG9uc2USKwoHd2ViaG9vaxgBIAMoCzIRLndlYmhvb2suX1dlYm'
    'hvb2tSB3dlYmhvb2s=');

@$core.Deprecated('Use getWebhookSecretRequest_Descriptor instead')
const GetWebhookSecretRequest_$json = {
  '1': '_GetWebhookSecretRequest',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'webhook_name', '3': 2, '4': 1, '5': 9, '10': 'webhookName'},
  ],
};

/// Descriptor for `_GetWebhookSecretRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWebhookSecretRequest_Descriptor = $convert.base64Decode(
    'ChhfR2V0V2ViaG9va1NlY3JldFJlcXVlc3QSHQoKY2FjaGVfbmFtZRgBIAEoCVIJY2FjaGVOYW'
    '1lEiEKDHdlYmhvb2tfbmFtZRgCIAEoCVILd2ViaG9va05hbWU=');

@$core.Deprecated('Use getWebhookSecretResponse_Descriptor instead')
const GetWebhookSecretResponse_$json = {
  '1': '_GetWebhookSecretResponse',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '10': 'cacheName'},
    {'1': 'webhook_name', '3': 2, '4': 1, '5': 9, '10': 'webhookName'},
    {'1': 'secret_string', '3': 3, '4': 1, '5': 9, '10': 'secretString'},
  ],
};

/// Descriptor for `_GetWebhookSecretResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWebhookSecretResponse_Descriptor = $convert.base64Decode(
    'ChlfR2V0V2ViaG9va1NlY3JldFJlc3BvbnNlEh0KCmNhY2hlX25hbWUYASABKAlSCWNhY2hlTm'
    'FtZRIhCgx3ZWJob29rX25hbWUYAiABKAlSC3dlYmhvb2tOYW1lEiMKDXNlY3JldF9zdHJpbmcY'
    'AyABKAlSDHNlY3JldFN0cmluZw==');

@$core.Deprecated('Use webhookDestination_Descriptor instead')
const WebhookDestination_$json = {
  '1': '_WebhookDestination',
  '2': [
    {'1': 'post_url', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'postUrl'},
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `_WebhookDestination`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhookDestination_Descriptor = $convert.base64Decode(
    'ChNfV2ViaG9va0Rlc3RpbmF0aW9uEhsKCHBvc3RfdXJsGAEgASgJSABSB3Bvc3RVcmxCBgoEa2'
    'luZA==');

@$core.Deprecated('Use rotateWebhookSecretRequest_Descriptor instead')
const RotateWebhookSecretRequest_$json = {
  '1': '_RotateWebhookSecretRequest',
  '2': [
    {'1': 'webhook_id', '3': 1, '4': 1, '5': 11, '6': '.webhook._WebhookId', '10': 'webhookId'},
  ],
};

/// Descriptor for `_RotateWebhookSecretRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rotateWebhookSecretRequest_Descriptor = $convert.base64Decode(
    'ChtfUm90YXRlV2ViaG9va1NlY3JldFJlcXVlc3QSMgoKd2ViaG9va19pZBgBIAEoCzITLndlYm'
    'hvb2suX1dlYmhvb2tJZFIJd2ViaG9va0lk');

@$core.Deprecated('Use rotateWebhookSecretResponse_Descriptor instead')
const RotateWebhookSecretResponse_$json = {
  '1': '_RotateWebhookSecretResponse',
  '2': [
    {'1': 'secret_string', '3': 1, '4': 1, '5': 9, '10': 'secretString'},
  ],
};

/// Descriptor for `_RotateWebhookSecretResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rotateWebhookSecretResponse_Descriptor = $convert.base64Decode(
    'ChxfUm90YXRlV2ViaG9va1NlY3JldFJlc3BvbnNlEiMKDXNlY3JldF9zdHJpbmcYASABKAlSDH'
    'NlY3JldFN0cmluZw==');

