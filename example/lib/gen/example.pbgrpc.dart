//
//  Generated code. Do not modify.
//  source: example.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'example.pb.dart' as $0;

export 'example.pb.dart';

@$pb.GrpcServiceName('example.MsgService')
class MsgServiceClient extends $grpc.Client {
  static final _$getMsg = $grpc.ClientMethod<$0.GetMsgRequest, $0.GetMsgResponse>(
      '/example.MsgService/GetMsg',
      ($0.GetMsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetMsgResponse.fromBuffer(value));
  static final _$streamMsg = $grpc.ClientMethod<$0.StreamMsgRequest, $0.StreamMsgResponse>(
      '/example.MsgService/StreamMsg',
      ($0.StreamMsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StreamMsgResponse.fromBuffer(value));

  MsgServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetMsgResponse> getMsg($0.GetMsgRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMsg, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamMsgResponse> streamMsg($0.StreamMsgRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamMsg, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('example.MsgService')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'example.MsgService';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetMsgRequest, $0.GetMsgResponse>(
        'GetMsg',
        getMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMsgRequest.fromBuffer(value),
        ($0.GetMsgResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamMsgRequest, $0.StreamMsgResponse>(
        'StreamMsg',
        streamMsg_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StreamMsgRequest.fromBuffer(value),
        ($0.StreamMsgResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetMsgResponse> getMsg_Pre($grpc.ServiceCall call, $async.Future<$0.GetMsgRequest> request) async {
    return getMsg(call, await request);
  }

  $async.Stream<$0.StreamMsgResponse> streamMsg_Pre($grpc.ServiceCall call, $async.Future<$0.StreamMsgRequest> request) async* {
    yield* streamMsg(call, await request);
  }

  $async.Future<$0.GetMsgResponse> getMsg($grpc.ServiceCall call, $0.GetMsgRequest request);
  $async.Stream<$0.StreamMsgResponse> streamMsg($grpc.ServiceCall call, $0.StreamMsgRequest request);
}
