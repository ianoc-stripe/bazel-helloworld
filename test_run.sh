#!/bin/bash

set -e

rm -rf /webdav/bazel-cache/ac/*
rm -rf /webdav/bazel-cache/cas/*
bazel build src/java/io
bazel clean
bazel build //src/java/io 
./bazel-bin/src/java/io/io
