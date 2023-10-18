//
//  Generated code. Do not modify.
//  source: example.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'example.pbenum.dart';

export 'example.pbenum.dart';

class MsgValueTypes extends $pb.GeneratedMessage {
  factory MsgValueTypes({
    $core.double? doubleType,
    $core.double? floatType,
    $core.int? int32Type,
    $fixnum.Int64? int64Type,
    $core.int? uint32Type,
    $fixnum.Int64? uint64Type,
    $core.int? sint32Type,
    $fixnum.Int64? sint64Type,
    $core.int? fixed32Type,
    $fixnum.Int64? fixed64Type,
    $core.int? sfixed32Type,
    $fixnum.Int64? sfixed64Type,
    $core.bool? boolType,
    $core.String? stringType,
    $core.List<$core.int>? bytesType,
  }) {
    final $result = create();
    if (doubleType != null) {
      $result.doubleType = doubleType;
    }
    if (floatType != null) {
      $result.floatType = floatType;
    }
    if (int32Type != null) {
      $result.int32Type = int32Type;
    }
    if (int64Type != null) {
      $result.int64Type = int64Type;
    }
    if (uint32Type != null) {
      $result.uint32Type = uint32Type;
    }
    if (uint64Type != null) {
      $result.uint64Type = uint64Type;
    }
    if (sint32Type != null) {
      $result.sint32Type = sint32Type;
    }
    if (sint64Type != null) {
      $result.sint64Type = sint64Type;
    }
    if (fixed32Type != null) {
      $result.fixed32Type = fixed32Type;
    }
    if (fixed64Type != null) {
      $result.fixed64Type = fixed64Type;
    }
    if (sfixed32Type != null) {
      $result.sfixed32Type = sfixed32Type;
    }
    if (sfixed64Type != null) {
      $result.sfixed64Type = sfixed64Type;
    }
    if (boolType != null) {
      $result.boolType = boolType;
    }
    if (stringType != null) {
      $result.stringType = stringType;
    }
    if (bytesType != null) {
      $result.bytesType = bytesType;
    }
    return $result;
  }
  MsgValueTypes._() : super();
  factory MsgValueTypes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgValueTypes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgValueTypes', package: const $pb.PackageName(_omitMessageNames ? '' : 'example'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'doubleType', $pb.PbFieldType.OD, protoName: 'doubleType')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'floatType', $pb.PbFieldType.OF, protoName: 'floatType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'int32Type', $pb.PbFieldType.O3, protoName: 'int32Type')
    ..aInt64(4, _omitFieldNames ? '' : 'int64Type', protoName: 'int64Type')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'uint32Type', $pb.PbFieldType.OU3, protoName: 'uint32Type')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'uint64Type', $pb.PbFieldType.OU6, protoName: 'uint64Type', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'sint32Type', $pb.PbFieldType.OS3, protoName: 'sint32Type')
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'sint64Type', $pb.PbFieldType.OS6, protoName: 'sint64Type', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'fixed32Type', $pb.PbFieldType.OF3, protoName: 'fixed32Type')
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'fixed64Type', $pb.PbFieldType.OF6, protoName: 'fixed64Type', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'sfixed32Type', $pb.PbFieldType.OSF3, protoName: 'sfixed32Type')
    ..a<$fixnum.Int64>(12, _omitFieldNames ? '' : 'sfixed64Type', $pb.PbFieldType.OSF6, protoName: 'sfixed64Type', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(13, _omitFieldNames ? '' : 'boolType', protoName: 'boolType')
    ..aOS(14, _omitFieldNames ? '' : 'stringType', protoName: 'stringType')
    ..a<$core.List<$core.int>>(15, _omitFieldNames ? '' : 'bytesType', $pb.PbFieldType.OY, protoName: 'bytesType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgValueTypes clone() => MsgValueTypes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgValueTypes copyWith(void Function(MsgValueTypes) updates) => super.copyWith((message) => updates(message as MsgValueTypes)) as MsgValueTypes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgValueTypes create() => MsgValueTypes._();
  MsgValueTypes createEmptyInstance() => create();
  static $pb.PbList<MsgValueTypes> createRepeated() => $pb.PbList<MsgValueTypes>();
  @$core.pragma('dart2js:noInline')
  static MsgValueTypes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgValueTypes>(create);
  static MsgValueTypes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get doubleType => $_getN(0);
  @$pb.TagNumber(1)
  set doubleType($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDoubleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDoubleType() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get floatType => $_getN(1);
  @$pb.TagNumber(2)
  set floatType($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFloatType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFloatType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get int32Type => $_getIZ(2);
  @$pb.TagNumber(3)
  set int32Type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInt32Type() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt32Type() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get int64Type => $_getI64(3);
  @$pb.TagNumber(4)
  set int64Type($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInt64Type() => $_has(3);
  @$pb.TagNumber(4)
  void clearInt64Type() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get uint32Type => $_getIZ(4);
  @$pb.TagNumber(5)
  set uint32Type($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUint32Type() => $_has(4);
  @$pb.TagNumber(5)
  void clearUint32Type() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get uint64Type => $_getI64(5);
  @$pb.TagNumber(6)
  set uint64Type($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUint64Type() => $_has(5);
  @$pb.TagNumber(6)
  void clearUint64Type() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get sint32Type => $_getIZ(6);
  @$pb.TagNumber(7)
  set sint32Type($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSint32Type() => $_has(6);
  @$pb.TagNumber(7)
  void clearSint32Type() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get sint64Type => $_getI64(7);
  @$pb.TagNumber(8)
  set sint64Type($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSint64Type() => $_has(7);
  @$pb.TagNumber(8)
  void clearSint64Type() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get fixed32Type => $_getIZ(8);
  @$pb.TagNumber(9)
  set fixed32Type($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFixed32Type() => $_has(8);
  @$pb.TagNumber(9)
  void clearFixed32Type() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get fixed64Type => $_getI64(9);
  @$pb.TagNumber(10)
  set fixed64Type($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFixed64Type() => $_has(9);
  @$pb.TagNumber(10)
  void clearFixed64Type() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get sfixed32Type => $_getIZ(10);
  @$pb.TagNumber(11)
  set sfixed32Type($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSfixed32Type() => $_has(10);
  @$pb.TagNumber(11)
  void clearSfixed32Type() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get sfixed64Type => $_getI64(11);
  @$pb.TagNumber(12)
  set sfixed64Type($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSfixed64Type() => $_has(11);
  @$pb.TagNumber(12)
  void clearSfixed64Type() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get boolType => $_getBF(12);
  @$pb.TagNumber(13)
  set boolType($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBoolType() => $_has(12);
  @$pb.TagNumber(13)
  void clearBoolType() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get stringType => $_getSZ(13);
  @$pb.TagNumber(14)
  set stringType($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStringType() => $_has(13);
  @$pb.TagNumber(14)
  void clearStringType() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get bytesType => $_getN(14);
  @$pb.TagNumber(15)
  set bytesType($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasBytesType() => $_has(14);
  @$pb.TagNumber(15)
  void clearBytesType() => clearField(15);
}

class MsgOne extends $pb.GeneratedMessage {
  factory MsgOne({
    $core.String? fieldOne,
    MsgTwo? fieldTwo,
    EnumOne? fieldThree,
    $core.String? fieldFour,
  }) {
    final $result = create();
    if (fieldOne != null) {
      $result.fieldOne = fieldOne;
    }
    if (fieldTwo != null) {
      $result.fieldTwo = fieldTwo;
    }
    if (fieldThree != null) {
      $result.fieldThree = fieldThree;
    }
    if (fieldFour != null) {
      $result.fieldFour = fieldFour;
    }
    return $result;
  }
  MsgOne._() : super();
  factory MsgOne.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgOne.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgOne', package: const $pb.PackageName(_omitMessageNames ? '' : 'example'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fieldOne', protoName: 'fieldOne')
    ..aOM<MsgTwo>(2, _omitFieldNames ? '' : 'fieldTwo', protoName: 'fieldTwo', subBuilder: MsgTwo.create)
    ..e<EnumOne>(3, _omitFieldNames ? '' : 'fieldThree', $pb.PbFieldType.OE, protoName: 'fieldThree', defaultOrMaker: EnumOne.one, valueOf: EnumOne.valueOf, enumValues: EnumOne.values)
    ..aOS(4, _omitFieldNames ? '' : 'fieldFour', protoName: 'fieldFour')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgOne clone() => MsgOne()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgOne copyWith(void Function(MsgOne) updates) => super.copyWith((message) => updates(message as MsgOne)) as MsgOne;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgOne create() => MsgOne._();
  MsgOne createEmptyInstance() => create();
  static $pb.PbList<MsgOne> createRepeated() => $pb.PbList<MsgOne>();
  @$core.pragma('dart2js:noInline')
  static MsgOne getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgOne>(create);
  static MsgOne? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fieldOne => $_getSZ(0);
  @$pb.TagNumber(1)
  set fieldOne($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldOne() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldOne() => clearField(1);

  @$pb.TagNumber(2)
  MsgTwo get fieldTwo => $_getN(1);
  @$pb.TagNumber(2)
  set fieldTwo(MsgTwo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldTwo() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldTwo() => clearField(2);
  @$pb.TagNumber(2)
  MsgTwo ensureFieldTwo() => $_ensure(1);

  @$pb.TagNumber(3)
  EnumOne get fieldThree => $_getN(2);
  @$pb.TagNumber(3)
  set fieldThree(EnumOne v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldThree() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldThree() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get fieldFour => $_getSZ(3);
  @$pb.TagNumber(4)
  set fieldFour($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFieldFour() => $_has(3);
  @$pb.TagNumber(4)
  void clearFieldFour() => clearField(4);
}

class MsgTwo extends $pb.GeneratedMessage {
  factory MsgTwo({
    $core.String? fieldOne,
  }) {
    final $result = create();
    if (fieldOne != null) {
      $result.fieldOne = fieldOne;
    }
    return $result;
  }
  MsgTwo._() : super();
  factory MsgTwo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgTwo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MsgTwo', package: const $pb.PackageName(_omitMessageNames ? '' : 'example'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fieldOne', protoName: 'fieldOne')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgTwo clone() => MsgTwo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgTwo copyWith(void Function(MsgTwo) updates) => super.copyWith((message) => updates(message as MsgTwo)) as MsgTwo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgTwo create() => MsgTwo._();
  MsgTwo createEmptyInstance() => create();
  static $pb.PbList<MsgTwo> createRepeated() => $pb.PbList<MsgTwo>();
  @$core.pragma('dart2js:noInline')
  static MsgTwo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgTwo>(create);
  static MsgTwo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fieldOne => $_getSZ(0);
  @$pb.TagNumber(1)
  set fieldOne($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldOne() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldOne() => clearField(1);
}

class GetMsgRequest extends $pb.GeneratedMessage {
  factory GetMsgRequest({
    $core.int? arg,
  }) {
    final $result = create();
    if (arg != null) {
      $result.arg = arg;
    }
    return $result;
  }
  GetMsgRequest._() : super();
  factory GetMsgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMsgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMsgRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'example'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'arg', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMsgRequest clone() => GetMsgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMsgRequest copyWith(void Function(GetMsgRequest) updates) => super.copyWith((message) => updates(message as GetMsgRequest)) as GetMsgRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMsgRequest create() => GetMsgRequest._();
  GetMsgRequest createEmptyInstance() => create();
  static $pb.PbList<GetMsgRequest> createRepeated() => $pb.PbList<GetMsgRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMsgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMsgRequest>(create);
  static GetMsgRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get arg => $_getIZ(0);
  @$pb.TagNumber(1)
  set arg($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArg() => $_has(0);
  @$pb.TagNumber(1)
  void clearArg() => clearField(1);
}

class GetMsgResponse extends $pb.GeneratedMessage {
  factory GetMsgResponse({
    $core.int? arg,
  }) {
    final $result = create();
    if (arg != null) {
      $result.arg = arg;
    }
    return $result;
  }
  GetMsgResponse._() : super();
  factory GetMsgResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMsgResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMsgResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'example'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'arg', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMsgResponse clone() => GetMsgResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMsgResponse copyWith(void Function(GetMsgResponse) updates) => super.copyWith((message) => updates(message as GetMsgResponse)) as GetMsgResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMsgResponse create() => GetMsgResponse._();
  GetMsgResponse createEmptyInstance() => create();
  static $pb.PbList<GetMsgResponse> createRepeated() => $pb.PbList<GetMsgResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMsgResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMsgResponse>(create);
  static GetMsgResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get arg => $_getIZ(0);
  @$pb.TagNumber(1)
  set arg($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArg() => $_has(0);
  @$pb.TagNumber(1)
  void clearArg() => clearField(1);
}

class StreamMsgRequest extends $pb.GeneratedMessage {
  factory StreamMsgRequest({
    $core.int? arg,
    EnumOne? enumArg,
  }) {
    final $result = create();
    if (arg != null) {
      $result.arg = arg;
    }
    if (enumArg != null) {
      $result.enumArg = enumArg;
    }
    return $result;
  }
  StreamMsgRequest._() : super();
  factory StreamMsgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamMsgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamMsgRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'example'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'arg', $pb.PbFieldType.O3)
    ..e<EnumOne>(2, _omitFieldNames ? '' : 'enumArg', $pb.PbFieldType.OE, protoName: 'enumArg', defaultOrMaker: EnumOne.one, valueOf: EnumOne.valueOf, enumValues: EnumOne.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamMsgRequest clone() => StreamMsgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamMsgRequest copyWith(void Function(StreamMsgRequest) updates) => super.copyWith((message) => updates(message as StreamMsgRequest)) as StreamMsgRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamMsgRequest create() => StreamMsgRequest._();
  StreamMsgRequest createEmptyInstance() => create();
  static $pb.PbList<StreamMsgRequest> createRepeated() => $pb.PbList<StreamMsgRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamMsgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamMsgRequest>(create);
  static StreamMsgRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get arg => $_getIZ(0);
  @$pb.TagNumber(1)
  set arg($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArg() => $_has(0);
  @$pb.TagNumber(1)
  void clearArg() => clearField(1);

  @$pb.TagNumber(2)
  EnumOne get enumArg => $_getN(1);
  @$pb.TagNumber(2)
  set enumArg(EnumOne v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnumArg() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnumArg() => clearField(2);
}

class StreamMsgResponse extends $pb.GeneratedMessage {
  factory StreamMsgResponse({
    $core.int? arg,
  }) {
    final $result = create();
    if (arg != null) {
      $result.arg = arg;
    }
    return $result;
  }
  StreamMsgResponse._() : super();
  factory StreamMsgResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamMsgResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamMsgResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'example'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'arg', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamMsgResponse clone() => StreamMsgResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamMsgResponse copyWith(void Function(StreamMsgResponse) updates) => super.copyWith((message) => updates(message as StreamMsgResponse)) as StreamMsgResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamMsgResponse create() => StreamMsgResponse._();
  StreamMsgResponse createEmptyInstance() => create();
  static $pb.PbList<StreamMsgResponse> createRepeated() => $pb.PbList<StreamMsgResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamMsgResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamMsgResponse>(create);
  static StreamMsgResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get arg => $_getIZ(0);
  @$pb.TagNumber(1)
  set arg($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArg() => $_has(0);
  @$pb.TagNumber(1)
  void clearArg() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
