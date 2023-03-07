#!/bin/zsh
# if not install protobuf, install it by "brew install protobuf"
flutter pub global activate protoc_plugin
protoc  -I=./proto --dart_out=./output ./proto/**.proto
cp ./output/* ../lib/protobuf
