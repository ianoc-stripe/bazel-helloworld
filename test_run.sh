#!/bin/bash

set -e

rm -rf /webdav/bazel-cache/ac/*
rm -rf /webdav/bazel-cache/cas/*
bazel run src/java/io
bazel clean
bazel run src/java/io
