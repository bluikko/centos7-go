#!/usr/bin/env sh

set -e

make linux
make dist
mkdir -p RPMS
