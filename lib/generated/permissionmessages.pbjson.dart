//
//  Generated code. Do not modify.
//  source: permissionmessages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cacheRoleDescriptor instead')
const CacheRole$json = {
  '1': 'CacheRole',
  '2': [
    {'1': 'CachePermitNone', '2': 0},
    {'1': 'CacheReadWrite', '2': 1},
    {'1': 'CacheReadOnly', '2': 2},
    {'1': 'CacheWriteOnly', '2': 3},
  ],
};

/// Descriptor for `CacheRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cacheRoleDescriptor = $convert.base64Decode(
    'CglDYWNoZVJvbGUSEwoPQ2FjaGVQZXJtaXROb25lEAASEgoOQ2FjaGVSZWFkV3JpdGUQARIRCg'
    '1DYWNoZVJlYWRPbmx5EAISEgoOQ2FjaGVXcml0ZU9ubHkQAw==');

@$core.Deprecated('Use topicRoleDescriptor instead')
const TopicRole$json = {
  '1': 'TopicRole',
  '2': [
    {'1': 'TopicPermitNone', '2': 0},
    {'1': 'TopicReadWrite', '2': 1},
    {'1': 'TopicReadOnly', '2': 2},
    {'1': 'TopicWriteOnly', '2': 3},
  ],
};

/// Descriptor for `TopicRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List topicRoleDescriptor = $convert.base64Decode(
    'CglUb3BpY1JvbGUSEwoPVG9waWNQZXJtaXROb25lEAASEgoOVG9waWNSZWFkV3JpdGUQARIRCg'
    '1Ub3BpY1JlYWRPbmx5EAISEgoOVG9waWNXcml0ZU9ubHkQAw==');

@$core.Deprecated('Use superUserPermissionsDescriptor instead')
const SuperUserPermissions$json = {
  '1': 'SuperUserPermissions',
  '2': [
    {'1': 'SuperUser', '2': 0},
  ],
};

/// Descriptor for `SuperUserPermissions`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List superUserPermissionsDescriptor = $convert
    .base64Decode('ChRTdXBlclVzZXJQZXJtaXNzaW9ucxINCglTdXBlclVzZXIQAA==');

@$core.Deprecated('Use permissionsDescriptor instead')
const Permissions$json = {
  '1': 'Permissions',
  '2': [
    {
      '1': 'super_user',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.permission_messages.SuperUserPermissions',
      '9': 0,
      '10': 'superUser'
    },
    {
      '1': 'explicit',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.ExplicitPermissions',
      '9': 0,
      '10': 'explicit'
    },
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `Permissions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionsDescriptor = $convert.base64Decode(
    'CgtQZXJtaXNzaW9ucxJKCgpzdXBlcl91c2VyGAEgASgOMikucGVybWlzc2lvbl9tZXNzYWdlcy'
    '5TdXBlclVzZXJQZXJtaXNzaW9uc0gAUglzdXBlclVzZXISRgoIZXhwbGljaXQYAiABKAsyKC5w'
    'ZXJtaXNzaW9uX21lc3NhZ2VzLkV4cGxpY2l0UGVybWlzc2lvbnNIAFIIZXhwbGljaXRCBgoEa2'
    'luZA==');

@$core.Deprecated('Use explicitPermissionsDescriptor instead')
const ExplicitPermissions$json = {
  '1': 'ExplicitPermissions',
  '2': [
    {
      '1': 'permissions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.permission_messages.PermissionsType',
      '10': 'permissions'
    },
  ],
};

/// Descriptor for `ExplicitPermissions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List explicitPermissionsDescriptor = $convert.base64Decode(
    'ChNFeHBsaWNpdFBlcm1pc3Npb25zEkYKC3Blcm1pc3Npb25zGAEgAygLMiQucGVybWlzc2lvbl'
    '9tZXNzYWdlcy5QZXJtaXNzaW9uc1R5cGVSC3Blcm1pc3Npb25z');

@$core.Deprecated('Use permissionsTypeDescriptor instead')
const PermissionsType$json = {
  '1': 'PermissionsType',
  '2': [
    {
      '1': 'cache_permissions',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.CachePermissions',
      '9': 0,
      '10': 'cachePermissions'
    },
    {
      '1': 'topic_permissions',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.TopicPermissions',
      '9': 0,
      '10': 'topicPermissions'
    },
  ],
  '3': [
    PermissionsType_All$json,
    PermissionsType_CacheSelector$json,
    PermissionsType_CacheItemSelector$json,
    PermissionsType_CachePermissions$json,
    PermissionsType_TopicSelector$json,
    PermissionsType_TopicPermissions$json
  ],
  '8': [
    {'1': 'kind'},
  ],
};

@$core.Deprecated('Use permissionsTypeDescriptor instead')
const PermissionsType_All$json = {
  '1': 'All',
};

@$core.Deprecated('Use permissionsTypeDescriptor instead')
const PermissionsType_CacheSelector$json = {
  '1': 'CacheSelector',
  '2': [
    {'1': 'cache_name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'cacheName'},
  ],
  '8': [
    {'1': 'kind'},
  ],
};

@$core.Deprecated('Use permissionsTypeDescriptor instead')
const PermissionsType_CacheItemSelector$json = {
  '1': 'CacheItemSelector',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'key'},
    {'1': 'key_prefix', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'keyPrefix'},
  ],
  '8': [
    {'1': 'kind'},
  ],
};

@$core.Deprecated('Use permissionsTypeDescriptor instead')
const PermissionsType_CachePermissions$json = {
  '1': 'CachePermissions',
  '2': [
    {
      '1': 'role',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.permission_messages.CacheRole',
      '10': 'role'
    },
    {
      '1': 'all_caches',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.All',
      '9': 0,
      '10': 'allCaches'
    },
    {
      '1': 'cache_selector',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.CacheSelector',
      '9': 0,
      '10': 'cacheSelector'
    },
    {
      '1': 'all_items',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.All',
      '9': 1,
      '10': 'allItems'
    },
    {
      '1': 'item_selector',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.CacheItemSelector',
      '9': 1,
      '10': 'itemSelector'
    },
  ],
  '8': [
    {'1': 'cache'},
    {'1': 'cache_item'},
  ],
};

@$core.Deprecated('Use permissionsTypeDescriptor instead')
const PermissionsType_TopicSelector$json = {
  '1': 'TopicSelector',
  '2': [
    {'1': 'topic_name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'topicName'},
    {
      '1': 'topic_name_prefix',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'topicNamePrefix'
    },
  ],
  '8': [
    {'1': 'kind'},
  ],
};

@$core.Deprecated('Use permissionsTypeDescriptor instead')
const PermissionsType_TopicPermissions$json = {
  '1': 'TopicPermissions',
  '2': [
    {
      '1': 'role',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.permission_messages.TopicRole',
      '10': 'role'
    },
    {
      '1': 'all_caches',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.All',
      '9': 0,
      '10': 'allCaches'
    },
    {
      '1': 'cache_selector',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.CacheSelector',
      '9': 0,
      '10': 'cacheSelector'
    },
    {
      '1': 'all_topics',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.All',
      '9': 1,
      '10': 'allTopics'
    },
    {
      '1': 'topic_selector',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.permission_messages.PermissionsType.TopicSelector',
      '9': 1,
      '10': 'topicSelector'
    },
  ],
  '8': [
    {'1': 'cache'},
    {'1': 'topic'},
  ],
};

/// Descriptor for `PermissionsType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionsTypeDescriptor = $convert.base64Decode(
    'Cg9QZXJtaXNzaW9uc1R5cGUSZAoRY2FjaGVfcGVybWlzc2lvbnMYASABKAsyNS5wZXJtaXNzaW'
    '9uX21lc3NhZ2VzLlBlcm1pc3Npb25zVHlwZS5DYWNoZVBlcm1pc3Npb25zSABSEGNhY2hlUGVy'
    'bWlzc2lvbnMSZAoRdG9waWNfcGVybWlzc2lvbnMYAiABKAsyNS5wZXJtaXNzaW9uX21lc3NhZ2'
    'VzLlBlcm1pc3Npb25zVHlwZS5Ub3BpY1Blcm1pc3Npb25zSABSEHRvcGljUGVybWlzc2lvbnMa'
    'BQoDQWxsGjgKDUNhY2hlU2VsZWN0b3ISHwoKY2FjaGVfbmFtZRgBIAEoCUgAUgljYWNoZU5hbW'
    'VCBgoEa2luZBpQChFDYWNoZUl0ZW1TZWxlY3RvchISCgNrZXkYASABKAxIAFIDa2V5Eh8KCmtl'
    'eV9wcmVmaXgYAiABKAxIAFIJa2V5UHJlZml4QgYKBGtpbmQarQMKEENhY2hlUGVybWlzc2lvbn'
    'MSMgoEcm9sZRgBIAEoDjIeLnBlcm1pc3Npb25fbWVzc2FnZXMuQ2FjaGVSb2xlUgRyb2xlEkkK'
    'CmFsbF9jYWNoZXMYAiABKAsyKC5wZXJtaXNzaW9uX21lc3NhZ2VzLlBlcm1pc3Npb25zVHlwZS'
    '5BbGxIAFIJYWxsQ2FjaGVzElsKDmNhY2hlX3NlbGVjdG9yGAMgASgLMjIucGVybWlzc2lvbl9t'
    'ZXNzYWdlcy5QZXJtaXNzaW9uc1R5cGUuQ2FjaGVTZWxlY3RvckgAUg1jYWNoZVNlbGVjdG9yEk'
    'cKCWFsbF9pdGVtcxgEIAEoCzIoLnBlcm1pc3Npb25fbWVzc2FnZXMuUGVybWlzc2lvbnNUeXBl'
    'LkFsbEgBUghhbGxJdGVtcxJdCg1pdGVtX3NlbGVjdG9yGAUgASgLMjYucGVybWlzc2lvbl9tZX'
    'NzYWdlcy5QZXJtaXNzaW9uc1R5cGUuQ2FjaGVJdGVtU2VsZWN0b3JIAVIMaXRlbVNlbGVjdG9y'
    'QgcKBWNhY2hlQgwKCmNhY2hlX2l0ZW0aZgoNVG9waWNTZWxlY3RvchIfCgp0b3BpY19uYW1lGA'
    'EgASgJSABSCXRvcGljTmFtZRIsChF0b3BpY19uYW1lX3ByZWZpeBgCIAEoCUgAUg90b3BpY05h'
    'bWVQcmVmaXhCBgoEa2luZBqoAwoQVG9waWNQZXJtaXNzaW9ucxIyCgRyb2xlGAEgASgOMh4ucG'
    'VybWlzc2lvbl9tZXNzYWdlcy5Ub3BpY1JvbGVSBHJvbGUSSQoKYWxsX2NhY2hlcxgCIAEoCzIo'
    'LnBlcm1pc3Npb25fbWVzc2FnZXMuUGVybWlzc2lvbnNUeXBlLkFsbEgAUglhbGxDYWNoZXMSWw'
    'oOY2FjaGVfc2VsZWN0b3IYAyABKAsyMi5wZXJtaXNzaW9uX21lc3NhZ2VzLlBlcm1pc3Npb25z'
    'VHlwZS5DYWNoZVNlbGVjdG9ySABSDWNhY2hlU2VsZWN0b3ISSQoKYWxsX3RvcGljcxgEIAEoCz'
    'IoLnBlcm1pc3Npb25fbWVzc2FnZXMuUGVybWlzc2lvbnNUeXBlLkFsbEgBUglhbGxUb3BpY3MS'
    'WwoOdG9waWNfc2VsZWN0b3IYBSABKAsyMi5wZXJtaXNzaW9uX21lc3NhZ2VzLlBlcm1pc3Npb2'
    '5zVHlwZS5Ub3BpY1NlbGVjdG9ySAFSDXRvcGljU2VsZWN0b3JCBwoFY2FjaGVCBwoFdG9waWNC'
    'BgoEa2luZA==');
