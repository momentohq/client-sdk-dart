//
//  Generated code. Do not modify.
//  source: controlclient.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CreateStoreRequest_ extends $pb.GeneratedMessage {
  factory CreateStoreRequest_({
    $core.String? storeName,
  }) {
    final $result = create();
    if (storeName != null) {
      $result.storeName = storeName;
    }
    return $result;
  }
  CreateStoreRequest_._() : super();
  factory CreateStoreRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateStoreRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateStoreRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'storeName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateStoreRequest_ clone() => CreateStoreRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateStoreRequest_ copyWith(void Function(CreateStoreRequest_) updates) =>
      super.copyWith((message) => updates(message as CreateStoreRequest_))
          as CreateStoreRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStoreRequest_ create() => CreateStoreRequest_._();
  CreateStoreRequest_ createEmptyInstance() => create();
  static $pb.PbList<CreateStoreRequest_> createRepeated() =>
      $pb.PbList<CreateStoreRequest_>();
  @$core.pragma('dart2js:noInline')
  static CreateStoreRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateStoreRequest_>(create);
  static CreateStoreRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStoreName() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreName() => clearField(1);
}

class CreateStoreResponse_ extends $pb.GeneratedMessage {
  factory CreateStoreResponse_() => create();
  CreateStoreResponse_._() : super();
  factory CreateStoreResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateStoreResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateStoreResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateStoreResponse_ clone() =>
      CreateStoreResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateStoreResponse_ copyWith(void Function(CreateStoreResponse_) updates) =>
      super.copyWith((message) => updates(message as CreateStoreResponse_))
          as CreateStoreResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStoreResponse_ create() => CreateStoreResponse_._();
  CreateStoreResponse_ createEmptyInstance() => create();
  static $pb.PbList<CreateStoreResponse_> createRepeated() =>
      $pb.PbList<CreateStoreResponse_>();
  @$core.pragma('dart2js:noInline')
  static CreateStoreResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateStoreResponse_>(create);
  static CreateStoreResponse_? _defaultInstance;
}

class DeleteStoreRequest_ extends $pb.GeneratedMessage {
  factory DeleteStoreRequest_({
    $core.String? storeName,
  }) {
    final $result = create();
    if (storeName != null) {
      $result.storeName = storeName;
    }
    return $result;
  }
  DeleteStoreRequest_._() : super();
  factory DeleteStoreRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteStoreRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteStoreRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'storeName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteStoreRequest_ clone() => DeleteStoreRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteStoreRequest_ copyWith(void Function(DeleteStoreRequest_) updates) =>
      super.copyWith((message) => updates(message as DeleteStoreRequest_))
          as DeleteStoreRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStoreRequest_ create() => DeleteStoreRequest_._();
  DeleteStoreRequest_ createEmptyInstance() => create();
  static $pb.PbList<DeleteStoreRequest_> createRepeated() =>
      $pb.PbList<DeleteStoreRequest_>();
  @$core.pragma('dart2js:noInline')
  static DeleteStoreRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteStoreRequest_>(create);
  static DeleteStoreRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStoreName() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreName() => clearField(1);
}

class DeleteStoreResponse_ extends $pb.GeneratedMessage {
  factory DeleteStoreResponse_() => create();
  DeleteStoreResponse_._() : super();
  factory DeleteStoreResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteStoreResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteStoreResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteStoreResponse_ clone() =>
      DeleteStoreResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteStoreResponse_ copyWith(void Function(DeleteStoreResponse_) updates) =>
      super.copyWith((message) => updates(message as DeleteStoreResponse_))
          as DeleteStoreResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStoreResponse_ create() => DeleteStoreResponse_._();
  DeleteStoreResponse_ createEmptyInstance() => create();
  static $pb.PbList<DeleteStoreResponse_> createRepeated() =>
      $pb.PbList<DeleteStoreResponse_>();
  @$core.pragma('dart2js:noInline')
  static DeleteStoreResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteStoreResponse_>(create);
  static DeleteStoreResponse_? _defaultInstance;
}

class ListStoresRequest_ extends $pb.GeneratedMessage {
  factory ListStoresRequest_({
    $core.String? nextToken,
  }) {
    final $result = create();
    if (nextToken != null) {
      $result.nextToken = nextToken;
    }
    return $result;
  }
  ListStoresRequest_._() : super();
  factory ListStoresRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListStoresRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListStoresRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListStoresRequest_ clone() => ListStoresRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListStoresRequest_ copyWith(void Function(ListStoresRequest_) updates) =>
      super.copyWith((message) => updates(message as ListStoresRequest_))
          as ListStoresRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStoresRequest_ create() => ListStoresRequest_._();
  ListStoresRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListStoresRequest_> createRepeated() =>
      $pb.PbList<ListStoresRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListStoresRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListStoresRequest_>(create);
  static ListStoresRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nextToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set nextToken($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNextToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearNextToken() => clearField(1);
}

class ListStoresResponse_ extends $pb.GeneratedMessage {
  factory ListStoresResponse_({
    $core.Iterable<Store_>? store,
    $core.String? nextToken,
  }) {
    final $result = create();
    if (store != null) {
      $result.store.addAll(store);
    }
    if (nextToken != null) {
      $result.nextToken = nextToken;
    }
    return $result;
  }
  ListStoresResponse_._() : super();
  factory ListStoresResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListStoresResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListStoresResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..pc<Store_>(1, _omitFieldNames ? '' : 'store', $pb.PbFieldType.PM,
        subBuilder: Store_.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListStoresResponse_ clone() => ListStoresResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListStoresResponse_ copyWith(void Function(ListStoresResponse_) updates) =>
      super.copyWith((message) => updates(message as ListStoresResponse_))
          as ListStoresResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStoresResponse_ create() => ListStoresResponse_._();
  ListStoresResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListStoresResponse_> createRepeated() =>
      $pb.PbList<ListStoresResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListStoresResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListStoresResponse_>(create);
  static ListStoresResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Store_> get store => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextToken() => clearField(2);
}

class Store_ extends $pb.GeneratedMessage {
  factory Store_({
    $core.String? storeName,
  }) {
    final $result = create();
    if (storeName != null) {
      $result.storeName = storeName;
    }
    return $result;
  }
  Store_._() : super();
  factory Store_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Store_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Store',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'storeName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Store_ clone() => Store_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Store_ copyWith(void Function(Store_) updates) =>
      super.copyWith((message) => updates(message as Store_)) as Store_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Store_ create() => Store_._();
  Store_ createEmptyInstance() => create();
  static $pb.PbList<Store_> createRepeated() => $pb.PbList<Store_>();
  @$core.pragma('dart2js:noInline')
  static Store_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Store_>(create);
  static Store_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStoreName() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreName() => clearField(1);
}

class SimilarityMetric___EuclideanSimilarity extends $pb.GeneratedMessage {
  factory SimilarityMetric___EuclideanSimilarity() => create();
  SimilarityMetric___EuclideanSimilarity._() : super();
  factory SimilarityMetric___EuclideanSimilarity.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SimilarityMetric___EuclideanSimilarity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SimilarityMetric._EuclideanSimilarity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SimilarityMetric___EuclideanSimilarity clone() =>
      SimilarityMetric___EuclideanSimilarity()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SimilarityMetric___EuclideanSimilarity copyWith(
          void Function(SimilarityMetric___EuclideanSimilarity) updates) =>
      super.copyWith((message) =>
              updates(message as SimilarityMetric___EuclideanSimilarity))
          as SimilarityMetric___EuclideanSimilarity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimilarityMetric___EuclideanSimilarity create() =>
      SimilarityMetric___EuclideanSimilarity._();
  SimilarityMetric___EuclideanSimilarity createEmptyInstance() => create();
  static $pb.PbList<SimilarityMetric___EuclideanSimilarity> createRepeated() =>
      $pb.PbList<SimilarityMetric___EuclideanSimilarity>();
  @$core.pragma('dart2js:noInline')
  static SimilarityMetric___EuclideanSimilarity getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SimilarityMetric___EuclideanSimilarity>(create);
  static SimilarityMetric___EuclideanSimilarity? _defaultInstance;
}

class SimilarityMetric___InnerProduct extends $pb.GeneratedMessage {
  factory SimilarityMetric___InnerProduct() => create();
  SimilarityMetric___InnerProduct._() : super();
  factory SimilarityMetric___InnerProduct.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SimilarityMetric___InnerProduct.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SimilarityMetric._InnerProduct',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SimilarityMetric___InnerProduct clone() =>
      SimilarityMetric___InnerProduct()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SimilarityMetric___InnerProduct copyWith(
          void Function(SimilarityMetric___InnerProduct) updates) =>
      super.copyWith(
              (message) => updates(message as SimilarityMetric___InnerProduct))
          as SimilarityMetric___InnerProduct;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimilarityMetric___InnerProduct create() =>
      SimilarityMetric___InnerProduct._();
  SimilarityMetric___InnerProduct createEmptyInstance() => create();
  static $pb.PbList<SimilarityMetric___InnerProduct> createRepeated() =>
      $pb.PbList<SimilarityMetric___InnerProduct>();
  @$core.pragma('dart2js:noInline')
  static SimilarityMetric___InnerProduct getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimilarityMetric___InnerProduct>(
          create);
  static SimilarityMetric___InnerProduct? _defaultInstance;
}

class SimilarityMetric___CosineSimilarity extends $pb.GeneratedMessage {
  factory SimilarityMetric___CosineSimilarity() => create();
  SimilarityMetric___CosineSimilarity._() : super();
  factory SimilarityMetric___CosineSimilarity.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SimilarityMetric___CosineSimilarity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SimilarityMetric._CosineSimilarity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SimilarityMetric___CosineSimilarity clone() =>
      SimilarityMetric___CosineSimilarity()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SimilarityMetric___CosineSimilarity copyWith(
          void Function(SimilarityMetric___CosineSimilarity) updates) =>
      super.copyWith((message) =>
              updates(message as SimilarityMetric___CosineSimilarity))
          as SimilarityMetric___CosineSimilarity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimilarityMetric___CosineSimilarity create() =>
      SimilarityMetric___CosineSimilarity._();
  SimilarityMetric___CosineSimilarity createEmptyInstance() => create();
  static $pb.PbList<SimilarityMetric___CosineSimilarity> createRepeated() =>
      $pb.PbList<SimilarityMetric___CosineSimilarity>();
  @$core.pragma('dart2js:noInline')
  static SimilarityMetric___CosineSimilarity getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SimilarityMetric___CosineSimilarity>(create);
  static SimilarityMetric___CosineSimilarity? _defaultInstance;
}

enum SimilarityMetric__SimilarityMetric {
  euclideanSimilarity,
  innerProduct,
  cosineSimilarity,
  notSet
}

class SimilarityMetric_ extends $pb.GeneratedMessage {
  factory SimilarityMetric_({
    SimilarityMetric___EuclideanSimilarity? euclideanSimilarity,
    SimilarityMetric___InnerProduct? innerProduct,
    SimilarityMetric___CosineSimilarity? cosineSimilarity,
  }) {
    final $result = create();
    if (euclideanSimilarity != null) {
      $result.euclideanSimilarity = euclideanSimilarity;
    }
    if (innerProduct != null) {
      $result.innerProduct = innerProduct;
    }
    if (cosineSimilarity != null) {
      $result.cosineSimilarity = cosineSimilarity;
    }
    return $result;
  }
  SimilarityMetric_._() : super();
  factory SimilarityMetric_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SimilarityMetric_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SimilarityMetric__SimilarityMetric>
      _SimilarityMetric__SimilarityMetricByTag = {
    1: SimilarityMetric__SimilarityMetric.euclideanSimilarity,
    2: SimilarityMetric__SimilarityMetric.innerProduct,
    3: SimilarityMetric__SimilarityMetric.cosineSimilarity,
    0: SimilarityMetric__SimilarityMetric.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SimilarityMetric',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<SimilarityMetric___EuclideanSimilarity>(
        1, _omitFieldNames ? '' : 'euclideanSimilarity',
        subBuilder: SimilarityMetric___EuclideanSimilarity.create)
    ..aOM<SimilarityMetric___InnerProduct>(
        2, _omitFieldNames ? '' : 'innerProduct',
        subBuilder: SimilarityMetric___InnerProduct.create)
    ..aOM<SimilarityMetric___CosineSimilarity>(
        3, _omitFieldNames ? '' : 'cosineSimilarity',
        subBuilder: SimilarityMetric___CosineSimilarity.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SimilarityMetric_ clone() => SimilarityMetric_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SimilarityMetric_ copyWith(void Function(SimilarityMetric_) updates) =>
      super.copyWith((message) => updates(message as SimilarityMetric_))
          as SimilarityMetric_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimilarityMetric_ create() => SimilarityMetric_._();
  SimilarityMetric_ createEmptyInstance() => create();
  static $pb.PbList<SimilarityMetric_> createRepeated() =>
      $pb.PbList<SimilarityMetric_>();
  @$core.pragma('dart2js:noInline')
  static SimilarityMetric_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimilarityMetric_>(create);
  static SimilarityMetric_? _defaultInstance;

  SimilarityMetric__SimilarityMetric whichSimilarityMetric() =>
      _SimilarityMetric__SimilarityMetricByTag[$_whichOneof(0)]!;
  void clearSimilarityMetric() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SimilarityMetric___EuclideanSimilarity get euclideanSimilarity => $_getN(0);
  @$pb.TagNumber(1)
  set euclideanSimilarity(SimilarityMetric___EuclideanSimilarity v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEuclideanSimilarity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEuclideanSimilarity() => clearField(1);
  @$pb.TagNumber(1)
  SimilarityMetric___EuclideanSimilarity ensureEuclideanSimilarity() =>
      $_ensure(0);

  @$pb.TagNumber(2)
  SimilarityMetric___InnerProduct get innerProduct => $_getN(1);
  @$pb.TagNumber(2)
  set innerProduct(SimilarityMetric___InnerProduct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInnerProduct() => $_has(1);
  @$pb.TagNumber(2)
  void clearInnerProduct() => clearField(2);
  @$pb.TagNumber(2)
  SimilarityMetric___InnerProduct ensureInnerProduct() => $_ensure(1);

  @$pb.TagNumber(3)
  SimilarityMetric___CosineSimilarity get cosineSimilarity => $_getN(2);
  @$pb.TagNumber(3)
  set cosineSimilarity(SimilarityMetric___CosineSimilarity v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCosineSimilarity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCosineSimilarity() => clearField(3);
  @$pb.TagNumber(3)
  SimilarityMetric___CosineSimilarity ensureCosineSimilarity() => $_ensure(2);
}

class CreateIndexRequest_ extends $pb.GeneratedMessage {
  factory CreateIndexRequest_({
    $core.String? indexName,
    $fixnum.Int64? numDimensions,
    SimilarityMetric_? similarityMetric,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (numDimensions != null) {
      $result.numDimensions = numDimensions;
    }
    if (similarityMetric != null) {
      $result.similarityMetric = similarityMetric;
    }
    return $result;
  }
  CreateIndexRequest_._() : super();
  factory CreateIndexRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateIndexRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateIndexRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'numDimensions', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<SimilarityMetric_>(3, _omitFieldNames ? '' : 'similarityMetric',
        subBuilder: SimilarityMetric_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateIndexRequest_ clone() => CreateIndexRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateIndexRequest_ copyWith(void Function(CreateIndexRequest_) updates) =>
      super.copyWith((message) => updates(message as CreateIndexRequest_))
          as CreateIndexRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateIndexRequest_ create() => CreateIndexRequest_._();
  CreateIndexRequest_ createEmptyInstance() => create();
  static $pb.PbList<CreateIndexRequest_> createRepeated() =>
      $pb.PbList<CreateIndexRequest_>();
  @$core.pragma('dart2js:noInline')
  static CreateIndexRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateIndexRequest_>(create);
  static CreateIndexRequest_? _defaultInstance;

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
  $fixnum.Int64 get numDimensions => $_getI64(1);
  @$pb.TagNumber(2)
  set numDimensions($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumDimensions() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumDimensions() => clearField(2);

  @$pb.TagNumber(3)
  SimilarityMetric_ get similarityMetric => $_getN(2);
  @$pb.TagNumber(3)
  set similarityMetric(SimilarityMetric_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSimilarityMetric() => $_has(2);
  @$pb.TagNumber(3)
  void clearSimilarityMetric() => clearField(3);
  @$pb.TagNumber(3)
  SimilarityMetric_ ensureSimilarityMetric() => $_ensure(2);
}

class CreateIndexResponse_ extends $pb.GeneratedMessage {
  factory CreateIndexResponse_() => create();
  CreateIndexResponse_._() : super();
  factory CreateIndexResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateIndexResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateIndexResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateIndexResponse_ clone() =>
      CreateIndexResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateIndexResponse_ copyWith(void Function(CreateIndexResponse_) updates) =>
      super.copyWith((message) => updates(message as CreateIndexResponse_))
          as CreateIndexResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateIndexResponse_ create() => CreateIndexResponse_._();
  CreateIndexResponse_ createEmptyInstance() => create();
  static $pb.PbList<CreateIndexResponse_> createRepeated() =>
      $pb.PbList<CreateIndexResponse_>();
  @$core.pragma('dart2js:noInline')
  static CreateIndexResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateIndexResponse_>(create);
  static CreateIndexResponse_? _defaultInstance;
}

class DeleteIndexRequest_ extends $pb.GeneratedMessage {
  factory DeleteIndexRequest_({
    $core.String? indexName,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    return $result;
  }
  DeleteIndexRequest_._() : super();
  factory DeleteIndexRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteIndexRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteIndexRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteIndexRequest_ clone() => DeleteIndexRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteIndexRequest_ copyWith(void Function(DeleteIndexRequest_) updates) =>
      super.copyWith((message) => updates(message as DeleteIndexRequest_))
          as DeleteIndexRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteIndexRequest_ create() => DeleteIndexRequest_._();
  DeleteIndexRequest_ createEmptyInstance() => create();
  static $pb.PbList<DeleteIndexRequest_> createRepeated() =>
      $pb.PbList<DeleteIndexRequest_>();
  @$core.pragma('dart2js:noInline')
  static DeleteIndexRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteIndexRequest_>(create);
  static DeleteIndexRequest_? _defaultInstance;

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
}

class DeleteIndexResponse_ extends $pb.GeneratedMessage {
  factory DeleteIndexResponse_() => create();
  DeleteIndexResponse_._() : super();
  factory DeleteIndexResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteIndexResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteIndexResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteIndexResponse_ clone() =>
      DeleteIndexResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteIndexResponse_ copyWith(void Function(DeleteIndexResponse_) updates) =>
      super.copyWith((message) => updates(message as DeleteIndexResponse_))
          as DeleteIndexResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteIndexResponse_ create() => DeleteIndexResponse_._();
  DeleteIndexResponse_ createEmptyInstance() => create();
  static $pb.PbList<DeleteIndexResponse_> createRepeated() =>
      $pb.PbList<DeleteIndexResponse_>();
  @$core.pragma('dart2js:noInline')
  static DeleteIndexResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteIndexResponse_>(create);
  static DeleteIndexResponse_? _defaultInstance;
}

class ListIndexesRequest_ extends $pb.GeneratedMessage {
  factory ListIndexesRequest_() => create();
  ListIndexesRequest_._() : super();
  factory ListIndexesRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListIndexesRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListIndexesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListIndexesRequest_ clone() => ListIndexesRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListIndexesRequest_ copyWith(void Function(ListIndexesRequest_) updates) =>
      super.copyWith((message) => updates(message as ListIndexesRequest_))
          as ListIndexesRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListIndexesRequest_ create() => ListIndexesRequest_._();
  ListIndexesRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListIndexesRequest_> createRepeated() =>
      $pb.PbList<ListIndexesRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListIndexesRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListIndexesRequest_>(create);
  static ListIndexesRequest_? _defaultInstance;
}

class ListIndexesResponse___Index extends $pb.GeneratedMessage {
  factory ListIndexesResponse___Index({
    $core.String? indexName,
    $fixnum.Int64? numDimensions,
    SimilarityMetric_? similarityMetric,
  }) {
    final $result = create();
    if (indexName != null) {
      $result.indexName = indexName;
    }
    if (numDimensions != null) {
      $result.numDimensions = numDimensions;
    }
    if (similarityMetric != null) {
      $result.similarityMetric = similarityMetric;
    }
    return $result;
  }
  ListIndexesResponse___Index._() : super();
  factory ListIndexesResponse___Index.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListIndexesResponse___Index.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListIndexesResponse._Index',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'indexName')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'numDimensions', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<SimilarityMetric_>(3, _omitFieldNames ? '' : 'similarityMetric',
        subBuilder: SimilarityMetric_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListIndexesResponse___Index clone() =>
      ListIndexesResponse___Index()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListIndexesResponse___Index copyWith(
          void Function(ListIndexesResponse___Index) updates) =>
      super.copyWith(
              (message) => updates(message as ListIndexesResponse___Index))
          as ListIndexesResponse___Index;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListIndexesResponse___Index create() =>
      ListIndexesResponse___Index._();
  ListIndexesResponse___Index createEmptyInstance() => create();
  static $pb.PbList<ListIndexesResponse___Index> createRepeated() =>
      $pb.PbList<ListIndexesResponse___Index>();
  @$core.pragma('dart2js:noInline')
  static ListIndexesResponse___Index getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListIndexesResponse___Index>(create);
  static ListIndexesResponse___Index? _defaultInstance;

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
  $fixnum.Int64 get numDimensions => $_getI64(1);
  @$pb.TagNumber(2)
  set numDimensions($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNumDimensions() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumDimensions() => clearField(2);

  @$pb.TagNumber(3)
  SimilarityMetric_ get similarityMetric => $_getN(2);
  @$pb.TagNumber(3)
  set similarityMetric(SimilarityMetric_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSimilarityMetric() => $_has(2);
  @$pb.TagNumber(3)
  void clearSimilarityMetric() => clearField(3);
  @$pb.TagNumber(3)
  SimilarityMetric_ ensureSimilarityMetric() => $_ensure(2);
}

class ListIndexesResponse_ extends $pb.GeneratedMessage {
  factory ListIndexesResponse_({
    $core.Iterable<ListIndexesResponse___Index>? indexes,
  }) {
    final $result = create();
    if (indexes != null) {
      $result.indexes.addAll(indexes);
    }
    return $result;
  }
  ListIndexesResponse_._() : super();
  factory ListIndexesResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListIndexesResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListIndexesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..pc<ListIndexesResponse___Index>(
        1, _omitFieldNames ? '' : 'indexes', $pb.PbFieldType.PM,
        subBuilder: ListIndexesResponse___Index.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListIndexesResponse_ clone() =>
      ListIndexesResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListIndexesResponse_ copyWith(void Function(ListIndexesResponse_) updates) =>
      super.copyWith((message) => updates(message as ListIndexesResponse_))
          as ListIndexesResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListIndexesResponse_ create() => ListIndexesResponse_._();
  ListIndexesResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListIndexesResponse_> createRepeated() =>
      $pb.PbList<ListIndexesResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListIndexesResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListIndexesResponse_>(create);
  static ListIndexesResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ListIndexesResponse___Index> get indexes => $_getList(0);
}

class DeleteCacheRequest_ extends $pb.GeneratedMessage {
  factory DeleteCacheRequest_({
    $core.String? cacheName,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    return $result;
  }
  DeleteCacheRequest_._() : super();
  factory DeleteCacheRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteCacheRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteCacheRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteCacheRequest_ clone() => DeleteCacheRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteCacheRequest_ copyWith(void Function(DeleteCacheRequest_) updates) =>
      super.copyWith((message) => updates(message as DeleteCacheRequest_))
          as DeleteCacheRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCacheRequest_ create() => DeleteCacheRequest_._();
  DeleteCacheRequest_ createEmptyInstance() => create();
  static $pb.PbList<DeleteCacheRequest_> createRepeated() =>
      $pb.PbList<DeleteCacheRequest_>();
  @$core.pragma('dart2js:noInline')
  static DeleteCacheRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteCacheRequest_>(create);
  static DeleteCacheRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);
}

class DeleteCacheResponse_ extends $pb.GeneratedMessage {
  factory DeleteCacheResponse_() => create();
  DeleteCacheResponse_._() : super();
  factory DeleteCacheResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteCacheResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_DeleteCacheResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteCacheResponse_ clone() =>
      DeleteCacheResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteCacheResponse_ copyWith(void Function(DeleteCacheResponse_) updates) =>
      super.copyWith((message) => updates(message as DeleteCacheResponse_))
          as DeleteCacheResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCacheResponse_ create() => DeleteCacheResponse_._();
  DeleteCacheResponse_ createEmptyInstance() => create();
  static $pb.PbList<DeleteCacheResponse_> createRepeated() =>
      $pb.PbList<DeleteCacheResponse_>();
  @$core.pragma('dart2js:noInline')
  static DeleteCacheResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteCacheResponse_>(create);
  static DeleteCacheResponse_? _defaultInstance;
}

class CreateCacheRequest_ extends $pb.GeneratedMessage {
  factory CreateCacheRequest_({
    $core.String? cacheName,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    return $result;
  }
  CreateCacheRequest_._() : super();
  factory CreateCacheRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCacheRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateCacheRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateCacheRequest_ clone() => CreateCacheRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateCacheRequest_ copyWith(void Function(CreateCacheRequest_) updates) =>
      super.copyWith((message) => updates(message as CreateCacheRequest_))
          as CreateCacheRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCacheRequest_ create() => CreateCacheRequest_._();
  CreateCacheRequest_ createEmptyInstance() => create();
  static $pb.PbList<CreateCacheRequest_> createRepeated() =>
      $pb.PbList<CreateCacheRequest_>();
  @$core.pragma('dart2js:noInline')
  static CreateCacheRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateCacheRequest_>(create);
  static CreateCacheRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);
}

class CreateCacheResponse_ extends $pb.GeneratedMessage {
  factory CreateCacheResponse_() => create();
  CreateCacheResponse_._() : super();
  factory CreateCacheResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCacheResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateCacheResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateCacheResponse_ clone() =>
      CreateCacheResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateCacheResponse_ copyWith(void Function(CreateCacheResponse_) updates) =>
      super.copyWith((message) => updates(message as CreateCacheResponse_))
          as CreateCacheResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCacheResponse_ create() => CreateCacheResponse_._();
  CreateCacheResponse_ createEmptyInstance() => create();
  static $pb.PbList<CreateCacheResponse_> createRepeated() =>
      $pb.PbList<CreateCacheResponse_>();
  @$core.pragma('dart2js:noInline')
  static CreateCacheResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateCacheResponse_>(create);
  static CreateCacheResponse_? _defaultInstance;
}

class ListCachesRequest_ extends $pb.GeneratedMessage {
  factory ListCachesRequest_({
    $core.String? nextToken,
  }) {
    final $result = create();
    if (nextToken != null) {
      $result.nextToken = nextToken;
    }
    return $result;
  }
  ListCachesRequest_._() : super();
  factory ListCachesRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCachesRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListCachesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCachesRequest_ clone() => ListCachesRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCachesRequest_ copyWith(void Function(ListCachesRequest_) updates) =>
      super.copyWith((message) => updates(message as ListCachesRequest_))
          as ListCachesRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCachesRequest_ create() => ListCachesRequest_._();
  ListCachesRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListCachesRequest_> createRepeated() =>
      $pb.PbList<ListCachesRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListCachesRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCachesRequest_>(create);
  static ListCachesRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nextToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set nextToken($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNextToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearNextToken() => clearField(1);
}

class CacheLimits_ extends $pb.GeneratedMessage {
  factory CacheLimits_({
    $core.int? maxTrafficRate,
    $core.int? maxThroughputKbps,
    $core.int? maxItemSizeKb,
    $fixnum.Int64? maxTtlSeconds,
  }) {
    final $result = create();
    if (maxTrafficRate != null) {
      $result.maxTrafficRate = maxTrafficRate;
    }
    if (maxThroughputKbps != null) {
      $result.maxThroughputKbps = maxThroughputKbps;
    }
    if (maxItemSizeKb != null) {
      $result.maxItemSizeKb = maxItemSizeKb;
    }
    if (maxTtlSeconds != null) {
      $result.maxTtlSeconds = maxTtlSeconds;
    }
    return $result;
  }
  CacheLimits_._() : super();
  factory CacheLimits_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CacheLimits_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CacheLimits',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'maxTrafficRate', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'maxThroughputKbps', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'maxItemSizeKb', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'maxTtlSeconds', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CacheLimits_ clone() => CacheLimits_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CacheLimits_ copyWith(void Function(CacheLimits_) updates) =>
      super.copyWith((message) => updates(message as CacheLimits_))
          as CacheLimits_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CacheLimits_ create() => CacheLimits_._();
  CacheLimits_ createEmptyInstance() => create();
  static $pb.PbList<CacheLimits_> createRepeated() =>
      $pb.PbList<CacheLimits_>();
  @$core.pragma('dart2js:noInline')
  static CacheLimits_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CacheLimits_>(create);
  static CacheLimits_? _defaultInstance;

  /// The amount of transactions per second that can be exercised
  @$pb.TagNumber(1)
  $core.int get maxTrafficRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set maxTrafficRate($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMaxTrafficRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxTrafficRate() => clearField(1);

  /// The amount of traffic per second that can be exercised in KiB
  @$pb.TagNumber(2)
  $core.int get maxThroughputKbps => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxThroughputKbps($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMaxThroughputKbps() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxThroughputKbps() => clearField(2);

  /// The maximum size of a single item in KiB
  @$pb.TagNumber(3)
  $core.int get maxItemSizeKb => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxItemSizeKb($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaxItemSizeKb() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxItemSizeKb() => clearField(3);

  /// The maximum TTL allowed for a single item, in seconds
  @$pb.TagNumber(4)
  $fixnum.Int64 get maxTtlSeconds => $_getI64(3);
  @$pb.TagNumber(4)
  set maxTtlSeconds($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMaxTtlSeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxTtlSeconds() => clearField(4);
}

class TopicLimits_ extends $pb.GeneratedMessage {
  factory TopicLimits_({
    $core.int? maxPublishRate,
    $core.int? maxSubscriptionCount,
    $core.int? maxPublishMessageSizeKb,
  }) {
    final $result = create();
    if (maxPublishRate != null) {
      $result.maxPublishRate = maxPublishRate;
    }
    if (maxSubscriptionCount != null) {
      $result.maxSubscriptionCount = maxSubscriptionCount;
    }
    if (maxPublishMessageSizeKb != null) {
      $result.maxPublishMessageSizeKb = maxPublishMessageSizeKb;
    }
    return $result;
  }
  TopicLimits_._() : super();
  factory TopicLimits_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicLimits_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_TopicLimits',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'maxPublishRate', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'maxSubscriptionCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxPublishMessageSizeKb',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicLimits_ clone() => TopicLimits_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicLimits_ copyWith(void Function(TopicLimits_) updates) =>
      super.copyWith((message) => updates(message as TopicLimits_))
          as TopicLimits_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicLimits_ create() => TopicLimits_._();
  TopicLimits_ createEmptyInstance() => create();
  static $pb.PbList<TopicLimits_> createRepeated() =>
      $pb.PbList<TopicLimits_>();
  @$core.pragma('dart2js:noInline')
  static TopicLimits_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicLimits_>(create);
  static TopicLimits_? _defaultInstance;

  /// The amount of messages that can be published per second
  @$pb.TagNumber(1)
  $core.int get maxPublishRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set maxPublishRate($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMaxPublishRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxPublishRate() => clearField(1);

  /// The maximum amount of active subscriptions per cache
  @$pb.TagNumber(2)
  $core.int get maxSubscriptionCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxSubscriptionCount($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMaxSubscriptionCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxSubscriptionCount() => clearField(2);

  /// The maximum size of a single publish message, in KiB
  @$pb.TagNumber(3)
  $core.int get maxPublishMessageSizeKb => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxPublishMessageSizeKb($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaxPublishMessageSizeKb() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxPublishMessageSizeKb() => clearField(3);
}

class Cache_ extends $pb.GeneratedMessage {
  factory Cache_({
    $core.String? cacheName,
    CacheLimits_? cacheLimits,
    TopicLimits_? topicLimits,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    if (cacheLimits != null) {
      $result.cacheLimits = cacheLimits;
    }
    if (topicLimits != null) {
      $result.topicLimits = topicLimits;
    }
    return $result;
  }
  Cache_._() : super();
  factory Cache_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Cache_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_Cache',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..aOM<CacheLimits_>(2, _omitFieldNames ? '' : 'cacheLimits',
        subBuilder: CacheLimits_.create)
    ..aOM<TopicLimits_>(3, _omitFieldNames ? '' : 'topicLimits',
        subBuilder: TopicLimits_.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Cache_ clone() => Cache_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Cache_ copyWith(void Function(Cache_) updates) =>
      super.copyWith((message) => updates(message as Cache_)) as Cache_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cache_ create() => Cache_._();
  Cache_ createEmptyInstance() => create();
  static $pb.PbList<Cache_> createRepeated() => $pb.PbList<Cache_>();
  @$core.pragma('dart2js:noInline')
  static Cache_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cache_>(create);
  static Cache_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);

  @$pb.TagNumber(2)
  CacheLimits_ get cacheLimits => $_getN(1);
  @$pb.TagNumber(2)
  set cacheLimits(CacheLimits_ v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCacheLimits() => $_has(1);
  @$pb.TagNumber(2)
  void clearCacheLimits() => clearField(2);
  @$pb.TagNumber(2)
  CacheLimits_ ensureCacheLimits() => $_ensure(1);

  @$pb.TagNumber(3)
  TopicLimits_ get topicLimits => $_getN(2);
  @$pb.TagNumber(3)
  set topicLimits(TopicLimits_ v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTopicLimits() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopicLimits() => clearField(3);
  @$pb.TagNumber(3)
  TopicLimits_ ensureTopicLimits() => $_ensure(2);
}

class ListCachesResponse_ extends $pb.GeneratedMessage {
  factory ListCachesResponse_({
    $core.Iterable<Cache_>? cache,
    $core.String? nextToken,
  }) {
    final $result = create();
    if (cache != null) {
      $result.cache.addAll(cache);
    }
    if (nextToken != null) {
      $result.nextToken = nextToken;
    }
    return $result;
  }
  ListCachesResponse_._() : super();
  factory ListCachesResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCachesResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListCachesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..pc<Cache_>(1, _omitFieldNames ? '' : 'cache', $pb.PbFieldType.PM,
        subBuilder: Cache_.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCachesResponse_ clone() => ListCachesResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCachesResponse_ copyWith(void Function(ListCachesResponse_) updates) =>
      super.copyWith((message) => updates(message as ListCachesResponse_))
          as ListCachesResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCachesResponse_ create() => ListCachesResponse_._();
  ListCachesResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListCachesResponse_> createRepeated() =>
      $pb.PbList<ListCachesResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListCachesResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCachesResponse_>(create);
  static ListCachesResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Cache_> get cache => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextToken() => clearField(2);
}

class CreateSigningKeyRequest_ extends $pb.GeneratedMessage {
  factory CreateSigningKeyRequest_({
    $core.int? ttlMinutes,
  }) {
    final $result = create();
    if (ttlMinutes != null) {
      $result.ttlMinutes = ttlMinutes;
    }
    return $result;
  }
  CreateSigningKeyRequest_._() : super();
  factory CreateSigningKeyRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateSigningKeyRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateSigningKeyRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ttlMinutes', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateSigningKeyRequest_ clone() =>
      CreateSigningKeyRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateSigningKeyRequest_ copyWith(
          void Function(CreateSigningKeyRequest_) updates) =>
      super.copyWith((message) => updates(message as CreateSigningKeyRequest_))
          as CreateSigningKeyRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSigningKeyRequest_ create() => CreateSigningKeyRequest_._();
  CreateSigningKeyRequest_ createEmptyInstance() => create();
  static $pb.PbList<CreateSigningKeyRequest_> createRepeated() =>
      $pb.PbList<CreateSigningKeyRequest_>();
  @$core.pragma('dart2js:noInline')
  static CreateSigningKeyRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSigningKeyRequest_>(create);
  static CreateSigningKeyRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get ttlMinutes => $_getIZ(0);
  @$pb.TagNumber(1)
  set ttlMinutes($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTtlMinutes() => $_has(0);
  @$pb.TagNumber(1)
  void clearTtlMinutes() => clearField(1);
}

class CreateSigningKeyResponse_ extends $pb.GeneratedMessage {
  factory CreateSigningKeyResponse_({
    $core.String? key,
    $fixnum.Int64? expiresAt,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (expiresAt != null) {
      $result.expiresAt = expiresAt;
    }
    return $result;
  }
  CreateSigningKeyResponse_._() : super();
  factory CreateSigningKeyResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateSigningKeyResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_CreateSigningKeyResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'expiresAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateSigningKeyResponse_ clone() =>
      CreateSigningKeyResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateSigningKeyResponse_ copyWith(
          void Function(CreateSigningKeyResponse_) updates) =>
      super.copyWith((message) => updates(message as CreateSigningKeyResponse_))
          as CreateSigningKeyResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSigningKeyResponse_ create() => CreateSigningKeyResponse_._();
  CreateSigningKeyResponse_ createEmptyInstance() => create();
  static $pb.PbList<CreateSigningKeyResponse_> createRepeated() =>
      $pb.PbList<CreateSigningKeyResponse_>();
  @$core.pragma('dart2js:noInline')
  static CreateSigningKeyResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSigningKeyResponse_>(create);
  static CreateSigningKeyResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get expiresAt => $_getI64(1);
  @$pb.TagNumber(2)
  set expiresAt($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExpiresAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiresAt() => clearField(2);
}

class RevokeSigningKeyRequest_ extends $pb.GeneratedMessage {
  factory RevokeSigningKeyRequest_({
    $core.String? keyId,
  }) {
    final $result = create();
    if (keyId != null) {
      $result.keyId = keyId;
    }
    return $result;
  }
  RevokeSigningKeyRequest_._() : super();
  factory RevokeSigningKeyRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RevokeSigningKeyRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_RevokeSigningKeyRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RevokeSigningKeyRequest_ clone() =>
      RevokeSigningKeyRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RevokeSigningKeyRequest_ copyWith(
          void Function(RevokeSigningKeyRequest_) updates) =>
      super.copyWith((message) => updates(message as RevokeSigningKeyRequest_))
          as RevokeSigningKeyRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeSigningKeyRequest_ create() => RevokeSigningKeyRequest_._();
  RevokeSigningKeyRequest_ createEmptyInstance() => create();
  static $pb.PbList<RevokeSigningKeyRequest_> createRepeated() =>
      $pb.PbList<RevokeSigningKeyRequest_>();
  @$core.pragma('dart2js:noInline')
  static RevokeSigningKeyRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevokeSigningKeyRequest_>(create);
  static RevokeSigningKeyRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKeyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyId() => clearField(1);
}

class RevokeSigningKeyResponse_ extends $pb.GeneratedMessage {
  factory RevokeSigningKeyResponse_() => create();
  RevokeSigningKeyResponse_._() : super();
  factory RevokeSigningKeyResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RevokeSigningKeyResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_RevokeSigningKeyResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RevokeSigningKeyResponse_ clone() =>
      RevokeSigningKeyResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RevokeSigningKeyResponse_ copyWith(
          void Function(RevokeSigningKeyResponse_) updates) =>
      super.copyWith((message) => updates(message as RevokeSigningKeyResponse_))
          as RevokeSigningKeyResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeSigningKeyResponse_ create() => RevokeSigningKeyResponse_._();
  RevokeSigningKeyResponse_ createEmptyInstance() => create();
  static $pb.PbList<RevokeSigningKeyResponse_> createRepeated() =>
      $pb.PbList<RevokeSigningKeyResponse_>();
  @$core.pragma('dart2js:noInline')
  static RevokeSigningKeyResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevokeSigningKeyResponse_>(create);
  static RevokeSigningKeyResponse_? _defaultInstance;
}

class SigningKey_ extends $pb.GeneratedMessage {
  factory SigningKey_({
    $core.String? keyId,
    $fixnum.Int64? expiresAt,
  }) {
    final $result = create();
    if (keyId != null) {
      $result.keyId = keyId;
    }
    if (expiresAt != null) {
      $result.expiresAt = expiresAt;
    }
    return $result;
  }
  SigningKey_._() : super();
  factory SigningKey_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SigningKey_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_SigningKey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyId')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'expiresAt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SigningKey_ clone() => SigningKey_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SigningKey_ copyWith(void Function(SigningKey_) updates) =>
      super.copyWith((message) => updates(message as SigningKey_))
          as SigningKey_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SigningKey_ create() => SigningKey_._();
  SigningKey_ createEmptyInstance() => create();
  static $pb.PbList<SigningKey_> createRepeated() => $pb.PbList<SigningKey_>();
  @$core.pragma('dart2js:noInline')
  static SigningKey_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SigningKey_>(create);
  static SigningKey_? _defaultInstance;

  /// The id of the signing key
  @$pb.TagNumber(1)
  $core.String get keyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKeyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyId() => clearField(1);

  /// Epoch time in seconds when the signing key expires
  @$pb.TagNumber(2)
  $fixnum.Int64 get expiresAt => $_getI64(1);
  @$pb.TagNumber(2)
  set expiresAt($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExpiresAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiresAt() => clearField(2);
}

class ListSigningKeysRequest_ extends $pb.GeneratedMessage {
  factory ListSigningKeysRequest_({
    $core.String? nextToken,
  }) {
    final $result = create();
    if (nextToken != null) {
      $result.nextToken = nextToken;
    }
    return $result;
  }
  ListSigningKeysRequest_._() : super();
  factory ListSigningKeysRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSigningKeysRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListSigningKeysRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSigningKeysRequest_ clone() =>
      ListSigningKeysRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSigningKeysRequest_ copyWith(
          void Function(ListSigningKeysRequest_) updates) =>
      super.copyWith((message) => updates(message as ListSigningKeysRequest_))
          as ListSigningKeysRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSigningKeysRequest_ create() => ListSigningKeysRequest_._();
  ListSigningKeysRequest_ createEmptyInstance() => create();
  static $pb.PbList<ListSigningKeysRequest_> createRepeated() =>
      $pb.PbList<ListSigningKeysRequest_>();
  @$core.pragma('dart2js:noInline')
  static ListSigningKeysRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSigningKeysRequest_>(create);
  static ListSigningKeysRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nextToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set nextToken($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNextToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearNextToken() => clearField(1);
}

class ListSigningKeysResponse_ extends $pb.GeneratedMessage {
  factory ListSigningKeysResponse_({
    $core.Iterable<SigningKey_>? signingKey,
    $core.String? nextToken,
  }) {
    final $result = create();
    if (signingKey != null) {
      $result.signingKey.addAll(signingKey);
    }
    if (nextToken != null) {
      $result.nextToken = nextToken;
    }
    return $result;
  }
  ListSigningKeysResponse_._() : super();
  factory ListSigningKeysResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSigningKeysResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_ListSigningKeysResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..pc<SigningKey_>(
        1, _omitFieldNames ? '' : 'signingKey', $pb.PbFieldType.PM,
        subBuilder: SigningKey_.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSigningKeysResponse_ clone() =>
      ListSigningKeysResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSigningKeysResponse_ copyWith(
          void Function(ListSigningKeysResponse_) updates) =>
      super.copyWith((message) => updates(message as ListSigningKeysResponse_))
          as ListSigningKeysResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSigningKeysResponse_ create() => ListSigningKeysResponse_._();
  ListSigningKeysResponse_ createEmptyInstance() => create();
  static $pb.PbList<ListSigningKeysResponse_> createRepeated() =>
      $pb.PbList<ListSigningKeysResponse_>();
  @$core.pragma('dart2js:noInline')
  static ListSigningKeysResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSigningKeysResponse_>(create);
  static ListSigningKeysResponse_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SigningKey_> get signingKey => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextToken() => clearField(2);
}

class FlushCacheRequest_ extends $pb.GeneratedMessage {
  factory FlushCacheRequest_({
    $core.String? cacheName,
  }) {
    final $result = create();
    if (cacheName != null) {
      $result.cacheName = cacheName;
    }
    return $result;
  }
  FlushCacheRequest_._() : super();
  factory FlushCacheRequest_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FlushCacheRequest_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_FlushCacheRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cacheName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FlushCacheRequest_ clone() => FlushCacheRequest_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FlushCacheRequest_ copyWith(void Function(FlushCacheRequest_) updates) =>
      super.copyWith((message) => updates(message as FlushCacheRequest_))
          as FlushCacheRequest_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlushCacheRequest_ create() => FlushCacheRequest_._();
  FlushCacheRequest_ createEmptyInstance() => create();
  static $pb.PbList<FlushCacheRequest_> createRepeated() =>
      $pb.PbList<FlushCacheRequest_>();
  @$core.pragma('dart2js:noInline')
  static FlushCacheRequest_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FlushCacheRequest_>(create);
  static FlushCacheRequest_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cacheName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cacheName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCacheName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCacheName() => clearField(1);
}

class FlushCacheResponse_ extends $pb.GeneratedMessage {
  factory FlushCacheResponse_() => create();
  FlushCacheResponse_._() : super();
  factory FlushCacheResponse_.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FlushCacheResponse_.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : '_FlushCacheResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'control_client'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FlushCacheResponse_ clone() => FlushCacheResponse_()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FlushCacheResponse_ copyWith(void Function(FlushCacheResponse_) updates) =>
      super.copyWith((message) => updates(message as FlushCacheResponse_))
          as FlushCacheResponse_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlushCacheResponse_ create() => FlushCacheResponse_._();
  FlushCacheResponse_ createEmptyInstance() => create();
  static $pb.PbList<FlushCacheResponse_> createRepeated() =>
      $pb.PbList<FlushCacheResponse_>();
  @$core.pragma('dart2js:noInline')
  static FlushCacheResponse_ getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FlushCacheResponse_>(create);
  static FlushCacheResponse_? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
