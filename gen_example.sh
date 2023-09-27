#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
# set -x

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

go build .
export PATH="$PATH":"$SCRIPT_DIR"
pushd example
rm -rf lib/gen
mkdir lib/gen
pushd proto
protoc --proto_path=. --dart_out=../lib/gen --dart_opt=grpc example.proto
protoc --proto_path=. --dart-wrappers_out=../lib/gen --dart-wrappers_opt=paths=source_relative example.proto
popd
popd
