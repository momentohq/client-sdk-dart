#!/bin/bash

set -e
set -x

protoc -I=../proto --dart_out=grpc:. permissionmessages.proto cacheclient.proto controlclient.proto cachepubsub.proto auth.proto cacheping.proto vectorindex.proto token.proto leaderboard.proto webhook.proto --plugin=/Users/mattstraathof/.pub-cache/bin/protoc-gen-dart
