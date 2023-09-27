//
//  Generated code. Do not modify.
//  source: example.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use enumOneDescriptor instead')
const EnumOne$json = {
  '1': 'EnumOne',
  '2': [
    {'1': 'one', '2': 0},
    {'1': 'two', '2': 1},
  ],
};

/// Descriptor for `EnumOne`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List enumOneDescriptor = $convert.base64Decode(
    'CgdFbnVtT25lEgcKA29uZRAAEgcKA3R3bxAB');

@$core.Deprecated('Use msgOneDescriptor instead')
const MsgOne$json = {
  '1': 'MsgOne',
  '2': [
    {'1': 'fieldOne', '3': 1, '4': 1, '5': 9, '10': 'fieldOne'},
    {'1': 'fieldTwo', '3': 2, '4': 1, '5': 11, '6': '.example.MsgTwo', '10': 'fieldTwo'},
    {'1': 'fieldThree', '3': 3, '4': 1, '5': 14, '6': '.example.EnumOne', '10': 'fieldThree'},
    {'1': 'fieldFour', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'fieldFour', '17': true},
  ],
  '8': [
    {'1': '_fieldFour'},
  ],
};

/// Descriptor for `MsgOne`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgOneDescriptor = $convert.base64Decode(
    'CgZNc2dPbmUSGgoIZmllbGRPbmUYASABKAlSCGZpZWxkT25lEisKCGZpZWxkVHdvGAIgASgLMg'
    '8uZXhhbXBsZS5Nc2dUd29SCGZpZWxkVHdvEjAKCmZpZWxkVGhyZWUYAyABKA4yEC5leGFtcGxl'
    'LkVudW1PbmVSCmZpZWxkVGhyZWUSIQoJZmllbGRGb3VyGAQgASgJSABSCWZpZWxkRm91cogBAU'
    'IMCgpfZmllbGRGb3Vy');

@$core.Deprecated('Use msgTwoDescriptor instead')
const MsgTwo$json = {
  '1': 'MsgTwo',
  '2': [
    {'1': 'fieldOne', '3': 1, '4': 1, '5': 9, '10': 'fieldOne'},
  ],
};

/// Descriptor for `MsgTwo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgTwoDescriptor = $convert.base64Decode(
    'CgZNc2dUd28SGgoIZmllbGRPbmUYASABKAlSCGZpZWxkT25l');

