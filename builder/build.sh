#!/bin/sh

set -xe

TARGET_DEBS=$1

sudo apt-get build-dep -y $TARGET_DEBS &&
mkdir -p $TARGET_DEBS &&
cd $TARGET_DEBS &&
apt-get source $TARGET_DEBS &&
cd "${TARGET_DEBS}"* &&
DEB_BUILD_OPTIONS=${DEB_BUILD_OPTIONS} dpkg-buildpackage -uc -us -b -j"$(nproc)"
