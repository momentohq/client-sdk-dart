#!/bin/bash

set -e
set -x

protoc -I=./ --dart_out=grpc:. permissionmessages.proto cacheclient.proto controlclient.proto cachepubsub.proto auth.proto cacheping.proto token.proto leaderboard.proto webhook.proto extensions.proto common.proto --plugin=$HOME/.pub-cache/bin/protoc-gen-dart
