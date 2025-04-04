#!/bin/bash
set -e

BUILD_DIR="$PWD/build"
ITEM="bachelor-thesis"
cd build

rm -rf ./$ITEM
cp -r ../src ./$ITEM
cd $ITEM

xelatex --halt-on-error $ITEM
xelatex --halt-on-error $ITEM
