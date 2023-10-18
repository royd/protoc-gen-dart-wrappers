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

@$core.Deprecated('Use msgValueTypesDescriptor instead')
const MsgValueTypes$json = {
  '1': 'MsgValueTypes',
  '2': [
    {'1': 'doubleType', '3': 1, '4': 1, '5': 1, '10': 'doubleType'},
    {'1': 'floatType', '3': 2, '4': 1, '5': 2, '10': 'floatType'},
    {'1': 'int32Type', '3': 3, '4': 1, '5': 5, '10': 'int32Type'},
    {'1': 'int64Type', '3': 4, '4': 1, '5': 3, '10': 'int64Type'},
    {'1': 'uint32Type', '3': 5, '4': 1, '5': 13, '10': 'uint32Type'},
    {'1': 'uint64Type', '3': 6, '4': 1, '5': 4, '10': 'uint64Type'},
    {'1': 'sint32Type', '3': 7, '4': 1, '5': 17, '10': 'sint32Type'},
    {'1': 'sint64Type', '3': 8, '4': 1, '5': 18, '10': 'sint64Type'},
    {'1': 'fixed32Type', '3': 9, '4': 1, '5': 7, '10': 'fixed32Type'},
    {'1': 'fixed64Type', '3': 10, '4': 1, '5': 6, '10': 'fixed64Type'},
    {'1': 'sfixed32Type', '3': 11, '4': 1, '5': 15, '10': 'sfixed32Type'},
    {'1': 'sfixed64Type', '3': 12, '4': 1, '5': 16, '10': 'sfixed64Type'},
    {'1': 'boolType', '3': 13, '4': 1, '5': 8, '10': 'boolType'},
    {'1': 'stringType', '3': 14, '4': 1, '5': 9, '10': 'stringType'},
    {'1': 'bytesType', '3': 15, '4': 1, '5': 12, '10': 'bytesType'},
  ],
};

/// Descriptor for `MsgValueTypes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgValueTypesDescriptor = $convert.base64Decode(
    'Cg1Nc2dWYWx1ZVR5cGVzEh4KCmRvdWJsZVR5cGUYASABKAFSCmRvdWJsZVR5cGUSHAoJZmxvYX'
    'RUeXBlGAIgASgCUglmbG9hdFR5cGUSHAoJaW50MzJUeXBlGAMgASgFUglpbnQzMlR5cGUSHAoJ'
    'aW50NjRUeXBlGAQgASgDUglpbnQ2NFR5cGUSHgoKdWludDMyVHlwZRgFIAEoDVIKdWludDMyVH'
    'lwZRIeCgp1aW50NjRUeXBlGAYgASgEUgp1aW50NjRUeXBlEh4KCnNpbnQzMlR5cGUYByABKBFS'
    'CnNpbnQzMlR5cGUSHgoKc2ludDY0VHlwZRgIIAEoElIKc2ludDY0VHlwZRIgCgtmaXhlZDMyVH'
    'lwZRgJIAEoB1ILZml4ZWQzMlR5cGUSIAoLZml4ZWQ2NFR5cGUYCiABKAZSC2ZpeGVkNjRUeXBl'
    'EiIKDHNmaXhlZDMyVHlwZRgLIAEoD1IMc2ZpeGVkMzJUeXBlEiIKDHNmaXhlZDY0VHlwZRgMIA'
    'EoEFIMc2ZpeGVkNjRUeXBlEhoKCGJvb2xUeXBlGA0gASgIUghib29sVHlwZRIeCgpzdHJpbmdU'
    'eXBlGA4gASgJUgpzdHJpbmdUeXBlEhwKCWJ5dGVzVHlwZRgPIAEoDFIJYnl0ZXNUeXBl');

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

@$core.Deprecated('Use getMsgRequestDescriptor instead')
const GetMsgRequest$json = {
  '1': 'GetMsgRequest',
  '2': [
    {'1': 'arg', '3': 1, '4': 1, '5': 5, '10': 'arg'},
  ],
};

/// Descriptor for `GetMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMsgRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRNc2dSZXF1ZXN0EhAKA2FyZxgBIAEoBVIDYXJn');

@$core.Deprecated('Use getMsgResponseDescriptor instead')
const GetMsgResponse$json = {
  '1': 'GetMsgResponse',
  '2': [
    {'1': 'arg', '3': 1, '4': 1, '5': 5, '10': 'arg'},
  ],
};

/// Descriptor for `GetMsgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMsgResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRNc2dSZXNwb25zZRIQCgNhcmcYASABKAVSA2FyZw==');

@$core.Deprecated('Use streamMsgRequestDescriptor instead')
const StreamMsgRequest$json = {
  '1': 'StreamMsgRequest',
  '2': [
    {'1': 'arg', '3': 1, '4': 1, '5': 5, '10': 'arg'},
    {'1': 'enumArg', '3': 2, '4': 1, '5': 14, '6': '.example.EnumOne', '10': 'enumArg'},
  ],
};

/// Descriptor for `StreamMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamMsgRequestDescriptor = $convert.base64Decode(
    'ChBTdHJlYW1Nc2dSZXF1ZXN0EhAKA2FyZxgBIAEoBVIDYXJnEioKB2VudW1BcmcYAiABKA4yEC'
    '5leGFtcGxlLkVudW1PbmVSB2VudW1Bcmc=');

@$core.Deprecated('Use streamMsgResponseDescriptor instead')
const StreamMsgResponse$json = {
  '1': 'StreamMsgResponse',
  '2': [
    {'1': 'arg', '3': 1, '4': 1, '5': 5, '10': 'arg'},
  ],
};

/// Descriptor for `StreamMsgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamMsgResponseDescriptor = $convert.base64Decode(
    'ChFTdHJlYW1Nc2dSZXNwb25zZRIQCgNhcmcYASABKAVSA2FyZw==');

