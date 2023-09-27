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

import 'package:protobuf/protobuf.dart' as $pb;

import 'example.pbenum.dart';

export 'example.pbenum.dart';

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
