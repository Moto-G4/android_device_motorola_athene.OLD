#!/bin/sh

set -e

export DEVICE=athene
export VENDOR=motorola
./../../$VENDOR/msm8916-common/extract-files.sh $@
