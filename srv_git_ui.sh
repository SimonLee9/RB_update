#!/bin/bash

cd RB_MOBILE
git submodule update --remote

cd release
git reset --hard origin/master

cd ..
git submodule update --remote

# IF some error,
# Then
# path : RB_MOBILE
# type : nano .gitmodules
# check: branch = test
