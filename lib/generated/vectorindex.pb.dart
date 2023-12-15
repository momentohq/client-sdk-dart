//
//  Generated code. Do not modify.
//  source: vectorindex.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Item_ extends $pb.GeneratedMessage {
  factory Item_({
    $core.String? id,
    Vector_? vector,
    $core.Iterable<Metadata_>? metadata,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (vector != null) {
      $result.vector = vector;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  Item_._() : super();
  factory Item_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Item_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<Vector_>(2, _omitFieldNames ? '' : 'vector',
        subBuilder: Vector_.create)
    ..pc<Metadata_>(3, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PM,
        subBuilder: Metadata_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Item_ clone() => Item_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Item_ copyWith(void Function(Item_) updates) =>
      super.copyWith((message) => updates(message as Item_)) as Item_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Item_ create() => Item_._();
  Item_ createEmptyInstance() => create();
  static $pb.PbList<Item_> createRepeated() => $pb.PbList<Item_>();
  @$core.pragma('dart2js:noInline')
  static Item_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item_>(create);
  static Item_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Vector_ get vector => $_getN(1);
  @$pb.TagNumber(2)
  set vector(Vector_ v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVector() => $_has(1);
  @$pb.TagNumber(2)
  void clearVector() => clearField(2);
  @$pb.TagNumber(2)
  Vector_ ensureVector() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Metadata_> get metadata => $_getList(2);
}

class UpsertItemBatchRequest_ extends $pb.GeneratedMessage {
  factory UpsertItemBatchRequest_({
    $core.String? indexName,
    $core.Iterable<Item_>? items,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  UpsertItemBatchRequest_._() : super();
  factory UpsertItemBatchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpsertItemBatchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_UpsertItemBatchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..pc<Item_>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM,
        subBuilder: Item_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpsertItemBatchRequest_ clone() =>
      UpsertItemBatchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpsertItemBatchRequest_ copyWith(
          void Function(UpsertItemBatchRequest_) updates) =>
      super.copyWith((message) => updates(message as UpsertItemBatchRequest_))
          as UpsertItemBatchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpsertItemBatchRequest_ create() => UpsertItemBatchRequest_._();
  UpsertItemBatchRequest_ createEmptyInstance() => create();
  static $pb.PbList<UpsertItemBatchRequest_> createRepeated() =>
      $pb.PbList<UpsertItemBatchRequest_>();
  @$core.pragma('dart2js:noInline')
  static UpsertItemBatchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpsertItemBatchRequest_>(create);
  static UpsertItemBatchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get indexName => $_getSZ(0);
  @$pb.TagNumber(1)
  set indexName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIndexName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndexName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Item_> get items => $_getList(1);
}

class UpsertItemBatchResponse_ extends $pb.GeneratedMessage {
  factory UpsertItemBatchResponse_({
    $core.Iterable<$core.int>? errorIndices,
  }) {
    final $result = create();
    if (errorIndices != null) {
      $result.errorIndices.addAll(errorIndices);
    }
    return $result;
  }
  UpsertItemBatchResponse_._() : super();
  factory UpsertItemBatchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpsertItemBatchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_UpsertItemBatchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..p<$core.int>(
        1, _omitFieldNames ? '' : 'errorIndices', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpsertItemBatchResponse_ clone() =>
      UpsertItemBatchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpsertItemBatchResponse_ copyWith(
          void Function(UpsertItemBatchResponse_) updates) =>
      super.copyWith((message) => updates(message as UpsertItemBatchResponse_))
          as UpsertItemBatchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpsertItemBatchResponse_ create() => UpsertItemBatchResponse_._();
  UpsertItemBatchResponse_ createEmptyInstance() => create();
  static $pb.PbList<UpsertItemBatchResponse_> createRepeated() =>
      $pb.PbList<UpsertItemBatchResponse_>();
  @$core.pragma('dart2js:noInline')
  static UpsertItemBatchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpsertItemBatchResponse_>(create);
  static UpsertItemBatchResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get errorIndices => $_getList(0);
}

class DeleteItemBatchRequest_ extends $pb.GeneratedMessage {
  factory DeleteItemBatchRequest_({
    $core.String? indexName,
    $core.Iterable<$core.String>? ids,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    return $result;
  }
  DeleteItemBatchRequest_._() : super();
  factory DeleteItemBatchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteItemBatchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteItemBatchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..pPS(2, _omitFieldNames ? '' : 'ids')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteItemBatchRequest_ clone() =>
      DeleteItemBatchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteItemBatchRequest_ copyWith(
          void Function(DeleteItemBatchRequest_) updates) =>
      super.copyWith((message) => updates(message as DeleteItemBatchRequest_))
          as DeleteItemBatchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteItemBatchRequest_ create() => DeleteItemBatchRequest_._();
  DeleteItemBatchRequest_ createEmptyInstance() => create();
  static $pb.PbList<DeleteItemBatchRequest_> createRepeated() =>
      $pb.PbList<DeleteItemBatchRequest_>();
  @$core.pragma('dart2js:noInline')
  static DeleteItemBatchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteItemBatchRequest_>(create);
  static DeleteItemBatchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get indexName => $_getSZ(0);
  @$pb.TagNumber(1)
  set indexName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIndexName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndexName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get ids => $_getList(1);
}

class DeleteItemBatchResponse_ extends $pb.GeneratedMessage {
  factory DeleteItemBatchResponse_() => create();
  DeleteItemBatchResponse_._() : super();
  factory DeleteItemBatchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteItemBatchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteItemBatchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteItemBatchResponse_ clone() =>
      DeleteItemBatchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteItemBatchResponse_ copyWith(
          void Function(DeleteItemBatchResponse_) updates) =>
      super.copyWith((message) => updates(message as DeleteItemBatchResponse_))
          as DeleteItemBatchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteItemBatchResponse_ create() => DeleteItemBatchResponse_._();
  DeleteItemBatchResponse_ createEmptyInstance() => create();
  static $pb.PbList<DeleteItemBatchResponse_> createRepeated() =>
      $pb.PbList<DeleteItemBatchResponse_>();
  @$core.pragma('dart2js:noInline')
  static DeleteItemBatchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteItemBatchResponse_>(create);
  static DeleteItemBatchResponse_? _defaultInstance;
}

class Vector_ extends $pb.GeneratedMessage {
  factory Vector_({
    $core.Iterable<$core.double>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  Vector_._() : super();
  factory Vector_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Vector_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Vector',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.KF)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Vector_ clone() => Vector_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Vector_ copyWith(void Function(Vector_) updates) =>
      super.copyWith((message) => updates(message as Vector_)) as Vector_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vector_ create() => Vector_._();
  Vector_ createEmptyInstance() => create();
  static $pb.PbList<Vector_> createRepeated() => $pb.PbList<Vector_>();
  @$core.pragma('dart2js:noInline')
  static Vector_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vector_>(create);
  static Vector_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get elements => $_getList(0);
}

class Metadata___ListOfStrings extends $pb.GeneratedMessage {
  factory Metadata___ListOfStrings({
    $core.Iterable<$core.String>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Metadata___ListOfStrings._() : super();
  factory Metadata___ListOfStrings.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Metadata___ListOfStrings.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Metadata._ListOfStrings',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'values')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Metadata___ListOfStrings clone() =>
      Metadata___ListOfStrings()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Metadata___ListOfStrings copyWith(
          void Function(Metadata___ListOfStrings) updates) =>
      super.copyWith((message) => updates(message as Metadata___ListOfStrings))
          as Metadata___ListOfStrings;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Metadata___ListOfStrings create() => Metadata___ListOfStrings._();
  Metadata___ListOfStrings createEmptyInstance() => create();
  static $pb.PbList<Metadata___ListOfStrings> createRepeated() =>
      $pb.PbList<Metadata___ListOfStrings>();
  @$core.pragma('dart2js:noInline')
  static Metadata___ListOfStrings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Metadata___ListOfStrings>(create);
  static Metadata___ListOfStrings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get values => $_getList(0);
}

enum Metadata__Value {
  stringValue,
  integerValue,
  doubleValue,
  booleanValue,
  listOfStringsValue,
  notSet
}

class Metadata_ extends $pb.GeneratedMessage {
  factory Metadata_({
    $core.String? field_1,
    $core.String? stringValue,
    $fixnum.Int64? integerValue,
    $core.double? doubleValue,
    $core.bool? booleanValue,
    Metadata___ListOfStrings? listOfStringsValue,
  }) {
    final $result = create();
    if (field_1 != null) {
      $result.field_1 = field_1;
    }
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (integerValue != null) {
      $result.integerValue = integerValue;
    }
    if (doubleValue != null) {
      $result.doubleValue = doubleValue;
    }
    if (booleanValue != null) {
      $result.booleanValue = booleanValue;
    }
    if (listOfStringsValue != null) {
      $result.listOfStringsValue = listOfStringsValue;
    }
    return $result;
  }
  Metadata_._() : super();
  factory Metadata_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Metadata_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Metadata__Value> _Metadata__ValueByTag = {
    2: Metadata__Value.stringValue,
    3: Metadata__Value.integerValue,
    4: Metadata__Value.doubleValue,
    5: Metadata__Value.booleanValue,
    6: Metadata__Value.listOfStringsValue,
    0: Metadata__Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Metadata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'field')
    ..aOS(2, _omitFieldNames ? '' : 'stringValue')
    ..aInt64(3, _omitFieldNames ? '' : 'integerValue')
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..aOB(5, _omitFieldNames ? '' : 'booleanValue')
    ..aOM<Metadata___ListOfStrings>(
        6, _omitFieldNames ? '' : 'listOfStringsValue',
        subBuilder: Metadata___ListOfStrings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Metadata_ clone() => Metadata_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Metadata_ copyWith(void Function(Metadata_) updates) =>
      super.copyWith((message) => updates(message as Metadata_)) as Metadata_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Metadata_ create() => Metadata_._();
  Metadata_ createEmptyInstance() => create();
  static $pb.PbList<Metadata_> createRepeated() => $pb.PbList<Metadata_>();
  @$core.pragma('dart2js:noInline')
  static Metadata_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata_>(create);
  static Metadata_? _defaultInstance;

  Metadata__Value whichValue() => _Metadata__ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get field_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set field_1($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get integerValue => $_getI64(2);
  @$pb.TagNumber(3)
  set integerValue($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIntegerValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntegerValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get doubleValue => $_getN(3);
  @$pb.TagNumber(4)
  set doubleValue($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDoubleValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoubleValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get booleanValue => $_getBF(4);
  @$pb.TagNumber(5)
  set booleanValue($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBooleanValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearBooleanValue() => clearField(5);

  @$pb.TagNumber(6)
  Metadata___ListOfStrings get listOfStringsValue => $_getN(5);
  @$pb.TagNumber(6)
  set listOfStringsValue(Metadata___ListOfStrings v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasListOfStringsValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearListOfStringsValue() => clearField(6);
  @$pb.TagNumber(6)
  Metadata___ListOfStrings ensureListOfStringsValue() => $_ensure(5);
}

class MetadataRequest__Some extends $pb.GeneratedMessage {
  factory MetadataRequest__Some({
    $core.Iterable<$core.String>? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  MetadataRequest__Some._() : super();
  factory MetadataRequest__Some.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MetadataRequest__Some.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_MetadataRequest.Some',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'fields')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MetadataRequest__Some clone() =>
      MetadataRequest__Some()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MetadataRequest__Some copyWith(
          void Function(MetadataRequest__Some) updates) =>
      super.copyWith((message) => updates(message as MetadataRequest__Some))
          as MetadataRequest__Some;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetadataRequest__Some create() => MetadataRequest__Some._();
  MetadataRequest__Some createEmptyInstance() => create();
  static $pb.PbList<MetadataRequest__Some> createRepeated() =>
      $pb.PbList<MetadataRequest__Some>();
  @$core.pragma('dart2js:noInline')
  static MetadataRequest__Some getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MetadataRequest__Some>(create);
  static MetadataRequest__Some? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fields => $_getList(0);
}

class MetadataRequest__All extends $pb.GeneratedMessage {
  factory MetadataRequest__All() => create();
  MetadataRequest__All._() : super();
  factory MetadataRequest__All.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MetadataRequest__All.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_MetadataRequest.All',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MetadataRequest__All clone() =>
      MetadataRequest__All()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MetadataRequest__All copyWith(void Function(MetadataRequest__All) updates) =>
      super.copyWith((message) => updates(message as MetadataRequest__All))
          as MetadataRequest__All;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetadataRequest__All create() => MetadataRequest__All._();
  MetadataRequest__All createEmptyInstance() => create();
  static $pb.PbList<MetadataRequest__All> createRepeated() =>
      $pb.PbList<MetadataRequest__All>();
  @$core.pragma('dart2js:noInline')
  static MetadataRequest__All getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MetadataRequest__All>(create);
  static MetadataRequest__All? _defaultInstance;
}

enum MetadataRequest__Kind { some, all, notSet }

class MetadataRequest_ extends $pb.GeneratedMessage {
  factory MetadataRequest_({
    MetadataRequest__Some? some,
    MetadataRequest__All? all,
  }) {
    final $result = create();
    if (some != null) {
      $result.some = some;
    }
    if (all != null) {
      $result.all = all;
    }
    return $result;
  }
  MetadataRequest_._() : super();
  factory MetadataRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MetadataRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MetadataRequest__Kind>
      _MetadataRequest__KindByTag = {
    2: MetadataRequest__Kind.some,
    3: MetadataRequest__Kind.all,
    0: MetadataRequest__Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_MetadataRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<MetadataRequest__Some>(2, _omitFieldNames ? '' : 'some',
        subBuilder: MetadataRequest__Some.create)
    ..aOM<MetadataRequest__All>(3, _omitFieldNames ? '' : 'all',
        subBuilder: MetadataRequest__All.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MetadataRequest_ clone() => MetadataRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MetadataRequest_ copyWith(void Function(MetadataRequest_) updates) =>
      super.copyWith((message) => updates(message as MetadataRequest_))
          as MetadataRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetadataRequest_ create() => MetadataRequest_._();
  MetadataRequest_ createEmptyInstance() => create();
  static $pb.PbList<MetadataRequest_> createRepeated() =>
      $pb.PbList<MetadataRequest_>();
  @$core.pragma('dart2js:noInline')
  static MetadataRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MetadataRequest_>(create);
  static MetadataRequest_? _defaultInstance;

  MetadataRequest__Kind whichKind() =>
      _MetadataRequest__KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  MetadataRequest__Some get some => $_getN(0);
  @$pb.TagNumber(2)
  set some(MetadataRequest__Some v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSome() => $_has(0);
  @$pb.TagNumber(2)
  void clearSome() => clearField(2);
  @$pb.TagNumber(2)
  MetadataRequest__Some ensureSome() => $_ensure(0);

  @$pb.TagNumber(3)
  MetadataRequest__All get all => $_getN(1);
  @$pb.TagNumber(3)
  set all(MetadataRequest__All v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAll() => $_has(1);
  @$pb.TagNumber(3)
  void clearAll() => clearField(3);
  @$pb.TagNumber(3)
  MetadataRequest__All ensureAll() => $_ensure(1);
}

class NoScoreThreshold_ extends $pb.GeneratedMessage {
  factory NoScoreThreshold_() => create();
  NoScoreThreshold_._() : super();
  factory NoScoreThreshold_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NoScoreThreshold_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_NoScoreThreshold',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NoScoreThreshold_ clone() => NoScoreThreshold_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NoScoreThreshold_ copyWith(void Function(NoScoreThreshold_) updates) =>
      super.copyWith((message) => updates(message as NoScoreThreshold_))
          as NoScoreThreshold_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoScoreThreshold_ create() => NoScoreThreshold_._();
  NoScoreThreshold_ createEmptyInstance() => create();
  static $pb.PbList<NoScoreThreshold_> createRepeated() =>
      $pb.PbList<NoScoreThreshold_>();
  @$core.pragma('dart2js:noInline')
  static NoScoreThreshold_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NoScoreThreshold_>(create);
  static NoScoreThreshold_? _defaultInstance;
}

enum SearchRequest__Threshold { scoreThreshold, noScoreThreshold, notSet }

class SearchRequest_ extends $pb.GeneratedMessage {
  factory SearchRequest_({
    $core.String? indexName,
    $core.int? topK,
    Vector_? queryVector,
    MetadataRequest_? metadataFields,
    $core.double? scoreThreshold,
    NoScoreThreshold_? noScoreThreshold,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (topK != null) {
      $result.topK = topK;
    }
    if (queryVector != null) {
      $result.queryVector = queryVector;
    }
    if (metadataFields != null) {
      $result.metadataFields = metadataFields;
    }
    if (scoreThreshold != null) {
      $result.scoreThreshold = scoreThreshold;
    }
    if (noScoreThreshold != null) {
      $result.noScoreThreshold = noScoreThreshold;
    }
    return $result;
  }
  SearchRequest_._() : super();
  factory SearchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SearchRequest__Threshold>
      _SearchRequest__ThresholdByTag = {
    5: SearchRequest__Threshold.scoreThreshold,
    6: SearchRequest__Threshold.noScoreThreshold,
    0: SearchRequest__Threshold.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SearchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'topK', $pb.PbFieldType.OU3)
    ..aOM<Vector_>(3, _omitFieldNames ? '' : 'queryVector',
        subBuilder: Vector_.create)
    ..aOM<MetadataRequest_>(4, _omitFieldNames ? '' : 'metadataFields',
        subBuilder: MetadataRequest_.create)
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'scoreThreshold', $pb.PbFieldType.OF)
    ..aOM<NoScoreThreshold_>(6, _omitFieldNames ? '' : 'noScoreThreshold',
        subBuilder: NoScoreThreshold_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchRequest_ clone() => SearchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchRequest_ copyWith(void Function(SearchRequest_) updates) =>
      super.copyWith((message) => updates(message as SearchRequest_))
          as SearchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchRequest_ create() => SearchRequest_._();
  SearchRequest_ createEmptyInstance() => create();
  static $pb.PbList<SearchRequest_> createRepeated() =>
      $pb.PbList<SearchRequest_>();
  @$core.pragma('dart2js:noInline')
  static SearchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchRequest_>(create);
  static SearchRequest_? _defaultInstance;

  SearchRequest__Threshold whichThreshold() =>
      _SearchRequest__ThresholdByTag[$_whichOneof(0)]!;
  void clearThreshold() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get indexName => $_getSZ(0);
  @$pb.TagNumber(1)
  set indexName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIndexName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndexName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get topK => $_getIZ(1);
  @$pb.TagNumber(2)
  set topK($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopK() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopK() => clearField(2);

  @$pb.TagNumber(3)
  Vector_ get queryVector => $_getN(2);
  @$pb.TagNumber(3)
  set queryVector(Vector_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasQueryVector() => $_has(2);
  @$pb.TagNumber(3)
  void clearQueryVector() => clearField(3);
  @$pb.TagNumber(3)
  Vector_ ensureQueryVector() => $_ensure(2);

  @$pb.TagNumber(4)
  MetadataRequest_ get metadataFields => $_getN(3);
  @$pb.TagNumber(4)
  set metadataFields(MetadataRequest_ v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMetadataFields() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadataFields() => clearField(4);
  @$pb.TagNumber(4)
  MetadataRequest_ ensureMetadataFields() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get scoreThreshold => $_getN(4);
  @$pb.TagNumber(5)
  set scoreThreshold($core.double v) {
    $_setFloat(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasScoreThreshold() => $_has(4);
  @$pb.TagNumber(5)
  void clearScoreThreshold() => clearField(5);

  @$pb.TagNumber(6)
  NoScoreThreshold_ get noScoreThreshold => $_getN(5);
  @$pb.TagNumber(6)
  set noScoreThreshold(NoScoreThreshold_ v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNoScoreThreshold() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoScoreThreshold() => clearField(6);
  @$pb.TagNumber(6)
  NoScoreThreshold_ ensureNoScoreThreshold() => $_ensure(5);
}

enum SearchAndFetchVectorsRequest__Threshold {
  scoreThreshold,
  noScoreThreshold,
  notSet
}

class SearchAndFetchVectorsRequest_ extends $pb.GeneratedMessage {
  factory SearchAndFetchVectorsRequest_({
    $core.String? indexName,
    $core.int? topK,
    Vector_? queryVector,
    MetadataRequest_? metadataFields,
    $core.double? scoreThreshold,
    NoScoreThreshold_? noScoreThreshold,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (topK != null) {
      $result.topK = topK;
    }
    if (queryVector != null) {
      $result.queryVector = queryVector;
    }
    if (metadataFields != null) {
      $result.metadataFields = metadataFields;
    }
    if (scoreThreshold != null) {
      $result.scoreThreshold = scoreThreshold;
    }
    if (noScoreThreshold != null) {
      $result.noScoreThreshold = noScoreThreshold;
    }
    return $result;
  }
  SearchAndFetchVectorsRequest_._() : super();
  factory SearchAndFetchVectorsRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchAndFetchVectorsRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SearchAndFetchVectorsRequest__Threshold>
      _SearchAndFetchVectorsRequest__ThresholdByTag = {
    5: SearchAndFetchVectorsRequest__Threshold.scoreThreshold,
    6: SearchAndFetchVectorsRequest__Threshold.noScoreThreshold,
    0: SearchAndFetchVectorsRequest__Threshold.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SearchAndFetchVectorsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'topK', $pb.PbFieldType.OU3)
    ..aOM<Vector_>(3, _omitFieldNames ? '' : 'queryVector',
        subBuilder: Vector_.create)
    ..aOM<MetadataRequest_>(4, _omitFieldNames ? '' : 'metadataFields',
        subBuilder: MetadataRequest_.create)
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'scoreThreshold', $pb.PbFieldType.OF)
    ..aOM<NoScoreThreshold_>(6, _omitFieldNames ? '' : 'noScoreThreshold',
        subBuilder: NoScoreThreshold_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchAndFetchVectorsRequest_ clone() =>
      SearchAndFetchVectorsRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchAndFetchVectorsRequest_ copyWith(
          void Function(SearchAndFetchVectorsRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as SearchAndFetchVectorsRequest_))
          as SearchAndFetchVectorsRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchAndFetchVectorsRequest_ create() =>
      SearchAndFetchVectorsRequest_._();
  SearchAndFetchVectorsRequest_ createEmptyInstance() => create();
  static $pb.PbList<SearchAndFetchVectorsRequest_> createRepeated() =>
      $pb.PbList<SearchAndFetchVectorsRequest_>();
  @$core.pragma('dart2js:noInline')
  static SearchAndFetchVectorsRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchAndFetchVectorsRequest_>(create);
  static SearchAndFetchVectorsRequest_? _defaultInstance;

  SearchAndFetchVectorsRequest__Threshold whichThreshold() =>
      _SearchAndFetchVectorsRequest__ThresholdByTag[$_whichOneof(0)]!;
  void clearThreshold() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get indexName => $_getSZ(0);
  @$pb.TagNumber(1)
  set indexName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIndexName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndexName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get topK => $_getIZ(1);
  @$pb.TagNumber(2)
  set topK($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopK() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopK() => clearField(2);

  @$pb.TagNumber(3)
  Vector_ get queryVector => $_getN(2);
  @$pb.TagNumber(3)
  set queryVector(Vector_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasQueryVector() => $_has(2);
  @$pb.TagNumber(3)
  void clearQueryVector() => clearField(3);
  @$pb.TagNumber(3)
  Vector_ ensureQueryVector() => $_ensure(2);

  @$pb.TagNumber(4)
  MetadataRequest_ get metadataFields => $_getN(3);
  @$pb.TagNumber(4)
  set metadataFields(MetadataRequest_ v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMetadataFields() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadataFields() => clearField(4);
  @$pb.TagNumber(4)
  MetadataRequest_ ensureMetadataFields() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get scoreThreshold => $_getN(4);
  @$pb.TagNumber(5)
  set scoreThreshold($core.double v) {
    $_setFloat(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasScoreThreshold() => $_has(4);
  @$pb.TagNumber(5)
  void clearScoreThreshold() => clearField(5);

  @$pb.TagNumber(6)
  NoScoreThreshold_ get noScoreThreshold => $_getN(5);
  @$pb.TagNumber(6)
  set noScoreThreshold(NoScoreThreshold_ v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNoScoreThreshold() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoScoreThreshold() => clearField(6);
  @$pb.TagNumber(6)
  NoScoreThreshold_ ensureNoScoreThreshold() => $_ensure(5);
}

class SearchHit_ extends $pb.GeneratedMessage {
  factory SearchHit_({
    $core.String? id,
    $core.double? score,
    $core.Iterable<Metadata_>? metadata,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (score != null) {
      $result.score = score;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  SearchHit_._() : super();
  factory SearchHit_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchHit_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SearchHit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..pc<Metadata_>(3, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PM,
        subBuilder: Metadata_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchHit_ clone() => SearchHit_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchHit_ copyWith(void Function(SearchHit_) updates) =>
      super.copyWith((message) => updates(message as SearchHit_)) as SearchHit_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchHit_ create() => SearchHit_._();
  SearchHit_ createEmptyInstance() => create();
  static $pb.PbList<SearchHit_> createRepeated() => $pb.PbList<SearchHit_>();
  @$core.pragma('dart2js:noInline')
  static SearchHit_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchHit_>(create);
  static SearchHit_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) {
    $_setFloat(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Metadata_> get metadata => $_getList(2);
}

class SearchAndFetchVectorsHit_ extends $pb.GeneratedMessage {
  factory SearchAndFetchVectorsHit_({
    $core.String? id,
    $core.double? score,
    $core.Iterable<Metadata_>? metadata,
    Vector_? vector,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (score != null) {
      $result.score = score;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    if (vector != null) {
      $result.vector = vector;
    }
    return $result;
  }
  SearchAndFetchVectorsHit_._() : super();
  factory SearchAndFetchVectorsHit_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchAndFetchVectorsHit_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SearchAndFetchVectorsHit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..pc<Metadata_>(3, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PM,
        subBuilder: Metadata_.create)
    ..aOM<Vector_>(4, _omitFieldNames ? '' : 'vector',
        subBuilder: Vector_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchAndFetchVectorsHit_ clone() =>
      SearchAndFetchVectorsHit_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchAndFetchVectorsHit_ copyWith(
          void Function(SearchAndFetchVectorsHit_) updates) =>
      super.copyWith((message) => updates(message as SearchAndFetchVectorsHit_))
          as SearchAndFetchVectorsHit_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchAndFetchVectorsHit_ create() => SearchAndFetchVectorsHit_._();
  SearchAndFetchVectorsHit_ createEmptyInstance() => create();
  static $pb.PbList<SearchAndFetchVectorsHit_> createRepeated() =>
      $pb.PbList<SearchAndFetchVectorsHit_>();
  @$core.pragma('dart2js:noInline')
  static SearchAndFetchVectorsHit_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchAndFetchVectorsHit_>(create);
  static SearchAndFetchVectorsHit_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) {
    $_setFloat(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Metadata_> get metadata => $_getList(2);

  @$pb.TagNumber(4)
  Vector_ get vector => $_getN(3);
  @$pb.TagNumber(4)
  set vector(Vector_ v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVector() => $_has(3);
  @$pb.TagNumber(4)
  void clearVector() => clearField(4);
  @$pb.TagNumber(4)
  Vector_ ensureVector() => $_ensure(3);
}

class SearchResponse_ extends $pb.GeneratedMessage {
  factory SearchResponse_({
    $core.Iterable<SearchHit_>? hits,
  }) {
    final $result = create();
    if (hits != null) {
      $result.hits.addAll(hits);
    }
    return $result;
  }
  SearchResponse_._() : super();
  factory SearchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SearchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..pc<SearchHit_>(1, _omitFieldNames ? '' : 'hits', $pb.PbFieldType.PM,
        subBuilder: SearchHit_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchResponse_ clone() => SearchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchResponse_ copyWith(void Function(SearchResponse_) updates) =>
      super.copyWith((message) => updates(message as SearchResponse_))
          as SearchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchResponse_ create() => SearchResponse_._();
  SearchResponse_ createEmptyInstance() => create();
  static $pb.PbList<SearchResponse_> createRepeated() =>
      $pb.PbList<SearchResponse_>();
  @$core.pragma('dart2js:noInline')
  static SearchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchResponse_>(create);
  static SearchResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SearchHit_> get hits => $_getList(0);
}

class SearchAndFetchVectorsResponse_ extends $pb.GeneratedMessage {
  factory SearchAndFetchVectorsResponse_({
    $core.Iterable<SearchAndFetchVectorsHit_>? hits,
  }) {
    final $result = create();
    if (hits != null) {
      $result.hits.addAll(hits);
    }
    return $result;
  }
  SearchAndFetchVectorsResponse_._() : super();
  factory SearchAndFetchVectorsResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchAndFetchVectorsResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SearchAndFetchVectorsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..pc<SearchAndFetchVectorsHit_>(
        1, _omitFieldNames ? '' : 'hits', $pb.PbFieldType.PM,
        subBuilder: SearchAndFetchVectorsHit_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchAndFetchVectorsResponse_ clone() =>
      SearchAndFetchVectorsResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchAndFetchVectorsResponse_ copyWith(
          void Function(SearchAndFetchVectorsResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as SearchAndFetchVectorsResponse_))
          as SearchAndFetchVectorsResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchAndFetchVectorsResponse_ create() =>
      SearchAndFetchVectorsResponse_._();
  SearchAndFetchVectorsResponse_ createEmptyInstance() => create();
  static $pb.PbList<SearchAndFetchVectorsResponse_> createRepeated() =>
      $pb.PbList<SearchAndFetchVectorsResponse_>();
  @$core.pragma('dart2js:noInline')
  static SearchAndFetchVectorsResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchAndFetchVectorsResponse_>(create);
  static SearchAndFetchVectorsResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SearchAndFetchVectorsHit_> get hits => $_getList(0);
}

class GetItemMetadataBatchRequest_ extends $pb.GeneratedMessage {
  factory GetItemMetadataBatchRequest_({
    $core.String? indexName,
    $core.Iterable<$core.String>? ids,
    MetadataRequest_? metadataFields,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    if (metadataFields != null) {
      $result.metadataFields = metadataFields;
    }
    return $result;
  }
  GetItemMetadataBatchRequest_._() : super();
  factory GetItemMetadataBatchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetItemMetadataBatchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetItemMetadataBatchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..pPS(2, _omitFieldNames ? '' : 'ids')
    ..aOM<MetadataRequest_>(3, _omitFieldNames ? '' : 'metadataFields',
        subBuilder: MetadataRequest_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetItemMetadataBatchRequest_ clone() =>
      GetItemMetadataBatchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetItemMetadataBatchRequest_ copyWith(
          void Function(GetItemMetadataBatchRequest_) updates) =>
      super.copyWith(
              (message) => updates(message as GetItemMetadataBatchRequest_))
          as GetItemMetadataBatchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetItemMetadataBatchRequest_ create() =>
      GetItemMetadataBatchRequest_._();
  GetItemMetadataBatchRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetItemMetadataBatchRequest_> createRepeated() =>
      $pb.PbList<GetItemMetadataBatchRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetItemMetadataBatchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetItemMetadataBatchRequest_>(create);
  static GetItemMetadataBatchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get indexName => $_getSZ(0);
  @$pb.TagNumber(1)
  set indexName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIndexName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndexName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get ids => $_getList(1);

  @$pb.TagNumber(3)
  MetadataRequest_ get metadataFields => $_getN(2);
  @$pb.TagNumber(3)
  set metadataFields(MetadataRequest_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMetadataFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetadataFields() => clearField(3);
  @$pb.TagNumber(3)
  MetadataRequest_ ensureMetadataFields() => $_ensure(2);
}

class ItemMetadataResponse___Miss extends $pb.GeneratedMessage {
  factory ItemMetadataResponse___Miss() => create();
  ItemMetadataResponse___Miss._() : super();
  factory ItemMetadataResponse___Miss.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemMetadataResponse___Miss.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemMetadataResponse._Miss',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemMetadataResponse___Miss clone() =>
      ItemMetadataResponse___Miss()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemMetadataResponse___Miss copyWith(
          void Function(ItemMetadataResponse___Miss) updates) =>
      super.copyWith(
              (message) => updates(message as ItemMetadataResponse___Miss))
          as ItemMetadataResponse___Miss;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemMetadataResponse___Miss create() =>
      ItemMetadataResponse___Miss._();
  ItemMetadataResponse___Miss createEmptyInstance() => create();
  static $pb.PbList<ItemMetadataResponse___Miss> createRepeated() =>
      $pb.PbList<ItemMetadataResponse___Miss>();
  @$core.pragma('dart2js:noInline')
  static ItemMetadataResponse___Miss getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemMetadataResponse___Miss>(create);
  static ItemMetadataResponse___Miss? _defaultInstance;
}

class ItemMetadataResponse___Hit extends $pb.GeneratedMessage {
  factory ItemMetadataResponse___Hit({
    $core.String? id,
    $core.Iterable<Metadata_>? metadata,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  ItemMetadataResponse___Hit._() : super();
  factory ItemMetadataResponse___Hit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemMetadataResponse___Hit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemMetadataResponse._Hit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<Metadata_>(2, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PM,
        subBuilder: Metadata_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemMetadataResponse___Hit clone() =>
      ItemMetadataResponse___Hit()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemMetadataResponse___Hit copyWith(
          void Function(ItemMetadataResponse___Hit) updates) =>
      super.copyWith(
              (message) => updates(message as ItemMetadataResponse___Hit))
          as ItemMetadataResponse___Hit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemMetadataResponse___Hit create() => ItemMetadataResponse___Hit._();
  ItemMetadataResponse___Hit createEmptyInstance() => create();
  static $pb.PbList<ItemMetadataResponse___Hit> createRepeated() =>
      $pb.PbList<ItemMetadataResponse___Hit>();
  @$core.pragma('dart2js:noInline')
  static ItemMetadataResponse___Hit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemMetadataResponse___Hit>(create);
  static ItemMetadataResponse___Hit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Metadata_> get metadata => $_getList(1);
}

enum ItemMetadataResponse__Response { miss, hit, notSet }

class ItemMetadataResponse_ extends $pb.GeneratedMessage {
  factory ItemMetadataResponse_({
    ItemMetadataResponse___Miss? miss,
    ItemMetadataResponse___Hit? hit,
  }) {
    final $result = create();
    if (miss != null) {
      $result.miss = miss;
    }
    if (hit != null) {
      $result.hit = hit;
    }
    return $result;
  }
  ItemMetadataResponse_._() : super();
  factory ItemMetadataResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemMetadataResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ItemMetadataResponse__Response>
      _ItemMetadataResponse__ResponseByTag = {
    1: ItemMetadataResponse__Response.miss,
    2: ItemMetadataResponse__Response.hit,
    0: ItemMetadataResponse__Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemMetadataResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ItemMetadataResponse___Miss>(1, _omitFieldNames ? '' : 'miss',
        subBuilder: ItemMetadataResponse___Miss.create)
    ..aOM<ItemMetadataResponse___Hit>(2, _omitFieldNames ? '' : 'hit',
        subBuilder: ItemMetadataResponse___Hit.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemMetadataResponse_ clone() =>
      ItemMetadataResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemMetadataResponse_ copyWith(
          void Function(ItemMetadataResponse_) updates) =>
      super.copyWith((message) => updates(message as ItemMetadataResponse_))
          as ItemMetadataResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemMetadataResponse_ create() => ItemMetadataResponse_._();
  ItemMetadataResponse_ createEmptyInstance() => create();
  static $pb.PbList<ItemMetadataResponse_> createRepeated() =>
      $pb.PbList<ItemMetadataResponse_>();
  @$core.pragma('dart2js:noInline')
  static ItemMetadataResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemMetadataResponse_>(create);
  static ItemMetadataResponse_? _defaultInstance;

  ItemMetadataResponse__Response whichResponse() =>
      _ItemMetadataResponse__ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ItemMetadataResponse___Miss get miss => $_getN(0);
  @$pb.TagNumber(1)
  set miss(ItemMetadataResponse___Miss v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMiss() => $_has(0);
  @$pb.TagNumber(1)
  void clearMiss() => clearField(1);
  @$pb.TagNumber(1)
  ItemMetadataResponse___Miss ensureMiss() => $_ensure(0);

  @$pb.TagNumber(2)
  ItemMetadataResponse___Hit get hit => $_getN(1);
  @$pb.TagNumber(2)
  set hit(ItemMetadataResponse___Hit v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHit() => $_has(1);
  @$pb.TagNumber(2)
  void clearHit() => clearField(2);
  @$pb.TagNumber(2)
  ItemMetadataResponse___Hit ensureHit() => $_ensure(1);
}

class GetItemMetadataBatchResponse_ extends $pb.GeneratedMessage {
  factory GetItemMetadataBatchResponse_({
    $core.Iterable<ItemMetadataResponse_>? itemMetadataResponse,
  }) {
    final $result = create();
    if (itemMetadataResponse != null) {
      $result.itemMetadataResponse.addAll(itemMetadataResponse);
    }
    return $result;
  }
  GetItemMetadataBatchResponse_._() : super();
  factory GetItemMetadataBatchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetItemMetadataBatchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetItemMetadataBatchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..pc<ItemMetadataResponse_>(
        1, _omitFieldNames ? '' : 'itemMetadataResponse', $pb.PbFieldType.PM,
        subBuilder: ItemMetadataResponse_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetItemMetadataBatchResponse_ clone() =>
      GetItemMetadataBatchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetItemMetadataBatchResponse_ copyWith(
          void Function(GetItemMetadataBatchResponse_) updates) =>
      super.copyWith(
              (message) => updates(message as GetItemMetadataBatchResponse_))
          as GetItemMetadataBatchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetItemMetadataBatchResponse_ create() =>
      GetItemMetadataBatchResponse_._();
  GetItemMetadataBatchResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetItemMetadataBatchResponse_> createRepeated() =>
      $pb.PbList<GetItemMetadataBatchResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetItemMetadataBatchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetItemMetadataBatchResponse_>(create);
  static GetItemMetadataBatchResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ItemMetadataResponse_> get itemMetadataResponse => $_getList(0);
}

class GetItemBatchRequest_ extends $pb.GeneratedMessage {
  factory GetItemBatchRequest_({
    $core.String? indexName,
    $core.Iterable<$core.String>? ids,
    MetadataRequest_? metadataFields,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    if (metadataFields != null) {
      $result.metadataFields = metadataFields;
    }
    return $result;
  }
  GetItemBatchRequest_._() : super();
  factory GetItemBatchRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetItemBatchRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetItemBatchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..pPS(2, _omitFieldNames ? '' : 'ids')
    ..aOM<MetadataRequest_>(3, _omitFieldNames ? '' : 'metadataFields',
        subBuilder: MetadataRequest_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetItemBatchRequest_ clone() =>
      GetItemBatchRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetItemBatchRequest_ copyWith(void Function(GetItemBatchRequest_) updates) =>
      super.copyWith((message) => updates(message as GetItemBatchRequest_))
          as GetItemBatchRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetItemBatchRequest_ create() => GetItemBatchRequest_._();
  GetItemBatchRequest_ createEmptyInstance() => create();
  static $pb.PbList<GetItemBatchRequest_> createRepeated() =>
      $pb.PbList<GetItemBatchRequest_>();
  @$core.pragma('dart2js:noInline')
  static GetItemBatchRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetItemBatchRequest_>(create);
  static GetItemBatchRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get indexName => $_getSZ(0);
  @$pb.TagNumber(1)
  set indexName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIndexName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndexName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get ids => $_getList(1);

  @$pb.TagNumber(3)
  MetadataRequest_ get metadataFields => $_getN(2);
  @$pb.TagNumber(3)
  set metadataFields(MetadataRequest_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMetadataFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetadataFields() => clearField(3);
  @$pb.TagNumber(3)
  MetadataRequest_ ensureMetadataFields() => $_ensure(2);
}

class ItemResponse___Miss extends $pb.GeneratedMessage {
  factory ItemResponse___Miss() => create();
  ItemResponse___Miss._() : super();
  factory ItemResponse___Miss.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemResponse___Miss.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemResponse._Miss',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemResponse___Miss clone() => ItemResponse___Miss()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemResponse___Miss copyWith(void Function(ItemResponse___Miss) updates) =>
      super.copyWith((message) => updates(message as ItemResponse___Miss))
          as ItemResponse___Miss;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemResponse___Miss create() => ItemResponse___Miss._();
  ItemResponse___Miss createEmptyInstance() => create();
  static $pb.PbList<ItemResponse___Miss> createRepeated() =>
      $pb.PbList<ItemResponse___Miss>();
  @$core.pragma('dart2js:noInline')
  static ItemResponse___Miss getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemResponse___Miss>(create);
  static ItemResponse___Miss? _defaultInstance;
}

class ItemResponse___Hit extends $pb.GeneratedMessage {
  factory ItemResponse___Hit({
    $core.String? id,
    Vector_? vector,
    $core.Iterable<Metadata_>? metadata,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (vector != null) {
      $result.vector = vector;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  ItemResponse___Hit._() : super();
  factory ItemResponse___Hit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemResponse___Hit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemResponse._Hit',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<Vector_>(2, _omitFieldNames ? '' : 'vector',
        subBuilder: Vector_.create)
    ..pc<Metadata_>(3, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.PM,
        subBuilder: Metadata_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemResponse___Hit clone() => ItemResponse___Hit()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemResponse___Hit copyWith(void Function(ItemResponse___Hit) updates) =>
      super.copyWith((message) => updates(message as ItemResponse___Hit))
          as ItemResponse___Hit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemResponse___Hit create() => ItemResponse___Hit._();
  ItemResponse___Hit createEmptyInstance() => create();
  static $pb.PbList<ItemResponse___Hit> createRepeated() =>
      $pb.PbList<ItemResponse___Hit>();
  @$core.pragma('dart2js:noInline')
  static ItemResponse___Hit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemResponse___Hit>(create);
  static ItemResponse___Hit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Vector_ get vector => $_getN(1);
  @$pb.TagNumber(2)
  set vector(Vector_ v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVector() => $_has(1);
  @$pb.TagNumber(2)
  void clearVector() => clearField(2);
  @$pb.TagNumber(2)
  Vector_ ensureVector() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<Metadata_> get metadata => $_getList(2);
}

enum ItemResponse__Response { miss, hit, notSet }

class ItemResponse_ extends $pb.GeneratedMessage {
  factory ItemResponse_({
    ItemResponse___Miss? miss,
    ItemResponse___Hit? hit,
  }) {
    final $result = create();
    if (miss != null) {
      $result.miss = miss;
    }
    if (hit != null) {
      $result.hit = hit;
    }
    return $result;
  }
  ItemResponse_._() : super();
  factory ItemResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ItemResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ItemResponse__Response>
      _ItemResponse__ResponseByTag = {
    1: ItemResponse__Response.miss,
    2: ItemResponse__Response.hit,
    0: ItemResponse__Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ItemResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ItemResponse___Miss>(1, _omitFieldNames ? '' : 'miss',
        subBuilder: ItemResponse___Miss.create)
    ..aOM<ItemResponse___Hit>(2, _omitFieldNames ? '' : 'hit',
        subBuilder: ItemResponse___Hit.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ItemResponse_ clone() => ItemResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ItemResponse_ copyWith(void Function(ItemResponse_) updates) =>
      super.copyWith((message) => updates(message as ItemResponse_))
          as ItemResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemResponse_ create() => ItemResponse_._();
  ItemResponse_ createEmptyInstance() => create();
  static $pb.PbList<ItemResponse_> createRepeated() =>
      $pb.PbList<ItemResponse_>();
  @$core.pragma('dart2js:noInline')
  static ItemResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ItemResponse_>(create);
  static ItemResponse_? _defaultInstance;

  ItemResponse__Response whichResponse() =>
      _ItemResponse__ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ItemResponse___Miss get miss => $_getN(0);
  @$pb.TagNumber(1)
  set miss(ItemResponse___Miss v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMiss() => $_has(0);
  @$pb.TagNumber(1)
  void clearMiss() => clearField(1);
  @$pb.TagNumber(1)
  ItemResponse___Miss ensureMiss() => $_ensure(0);

  @$pb.TagNumber(2)
  ItemResponse___Hit get hit => $_getN(1);
  @$pb.TagNumber(2)
  set hit(ItemResponse___Hit v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHit() => $_has(1);
  @$pb.TagNumber(2)
  void clearHit() => clearField(2);
  @$pb.TagNumber(2)
  ItemResponse___Hit ensureHit() => $_ensure(1);
}

class GetItemBatchResponse_ extends $pb.GeneratedMessage {
  factory GetItemBatchResponse_({
    $core.Iterable<ItemResponse_>? itemResponse,
  }) {
    final $result = create();
    if (itemResponse != null) {
      $result.itemResponse.addAll(itemResponse);
    }
    return $result;
  }
  GetItemBatchResponse_._() : super();
  factory GetItemBatchResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetItemBatchResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_GetItemBatchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vectorindex'),
      createEmptyInstance: create)
    ..pc<ItemResponse_>(
        1, _omitFieldNames ? '' : 'itemResponse', $pb.PbFieldType.PM,
        subBuilder: ItemResponse_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetItemBatchResponse_ clone() =>
      GetItemBatchResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetItemBatchResponse_ copyWith(
          void Function(GetItemBatchResponse_) updates) =>
      super.copyWith((message) => updates(message as GetItemBatchResponse_))
          as GetItemBatchResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetItemBatchResponse_ create() => GetItemBatchResponse_._();
  GetItemBatchResponse_ createEmptyInstance() => create();
  static $pb.PbList<GetItemBatchResponse_> createRepeated() =>
      $pb.PbList<GetItemBatchResponse_>();
  @$core.pragma('dart2js:noInline')
  static GetItemBatchResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetItemBatchResponse_>(create);
  static GetItemBatchResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ItemResponse_> get itemResponse => $_getList(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
