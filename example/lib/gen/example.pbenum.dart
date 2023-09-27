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

class EnumOne extends $pb.ProtobufEnum {
  static const EnumOne one = EnumOne._(0, _omitEnumNames ? '' : 'one');
  static const EnumOne two = EnumOne._(1, _omitEnumNames ? '' : 'two');

  static const $core.List<EnumOne> values = <EnumOne> [
    one,
    two,
  ];

  static final $core.Map<$core.int, EnumOne> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EnumOne? valueOf($core.int value) => _byValue[value];

  const EnumOne._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
