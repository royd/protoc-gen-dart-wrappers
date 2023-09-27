// Code generated by protoc-gen-dart-wrappers. DO NOT EDIT.

import 'example.pb.dart' as pb;

class MsgOne {
  MsgOne({
    required this.fieldOne,
    required this.fieldTwo,
    required this.fieldThree,
    this.fieldFour,
  });

  factory MsgOne.fromProto(pb.MsgOne msg) {
    if (!msg.hasFieldOne()) {
      throw ArgumentError.notNull('fieldOne');
    }

    if (!msg.hasFieldTwo()) {
      throw ArgumentError.notNull('fieldTwo');
    }

    if (!msg.hasFieldThree()) {
      throw ArgumentError.notNull('fieldThree');
    }

    return MsgOne(
      fieldOne: msg.fieldOne,
      fieldTwo: MsgTwo.fromProto(msg.fieldTwo),
      fieldThree: EnumOne.fromProto(msg.fieldThree),
      fieldFour: msg.fieldFour,
    );
  }

  final String fieldOne;
  final MsgTwo fieldTwo;
  final EnumOne fieldThree;
  final String? fieldFour;

  pb.MsgOne toProto() {
    return pb.MsgOne(
      fieldOne: fieldOne,
      fieldTwo: fieldTwo.toProto(),
      fieldThree: fieldThree.toProto(),
      fieldFour: fieldFour,
    );
  }
}

class MsgTwo {
  MsgTwo({
    required this.fieldOne,
  });

  factory MsgTwo.fromProto(pb.MsgTwo msg) {
    if (!msg.hasFieldOne()) {
      throw ArgumentError.notNull('fieldOne');
    }

    return MsgTwo(
      fieldOne: msg.fieldOne,
    );
  }

  final String fieldOne;

  pb.MsgTwo toProto() {
    return pb.MsgTwo(
      fieldOne: fieldOne,
    );
  }
}

enum EnumOne {
  one,
  two;

  factory EnumOne.fromProto(pb.EnumOne en) =>
    EnumOne.values.firstWhere((e) => e.index == en.value);

  pb.EnumOne toProto() => pb.EnumOne.valueOf(this.index)!;
}