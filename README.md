## protoc-gen-dart-wrappers

*Proof-of-concept: Not maintained*

Generates friendly Dart wrappers around Protobuf generated classes.
1. Validates data
1. Requires non-optional parameters
1. Supports null fields
1. Supports Dart enums

### Example
Given the proto:
```
message Msg {
  string one = 1;
}
```

A wrapper is created:
```
import 'example.pb.dart' as pb;

class Msg {
  Msg({
    required this.one,
  });

  factory Msg.fromProto(pb.Msg msg) {
    if (!msg.hasOne()) {
      throw ArgumentError.notNull('one');
    }

    return Msg(
      one: msg.one,
    );
  }

  final String one;

  pb.Msg toProto() {
    return pb.Msg(
      one: one,
    );
  }
}
```

### Generating wrappers for example.proto
Install the [protoc_plugin](https://pub.dev/packages/protoc_plugin)
```
dart pub global activate protoc_plugin
```

Run the generator
```
./gen_example.sh
```
