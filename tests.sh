#!/usr/bin/env bash

if [ ! -f README.md ]
then
    echo 'This script must be launched from base directory'
    exit 1
fi
BASE_DIR="$PWD"

echo 'Installing roundup framework'
rm -rf target
mkdir target
cd target
git clone http://github.com/bmizerany/roundup.git -b master --single-branch --depth 1
cd roundup
./configure
make
PATH=$(pwd):$BASE_DIR/src/main/script:$PATH

echo 'Running all tests'
set -x
cd $BASE_DIR/src/test/script && roundup
