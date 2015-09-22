#!/bin/bash

# test Debug build
mkdir -p build && cd build
cmake -DCMAKE_INSTALL_PREFIX=$PWD/../out \
    -DCMAKE_BUILD_TYPE=Debug -DENABLE_TESTING=ON \
    ..
cmake --build .
ctest

# test Release build and installation
cmake -DCMAKE_BUILD_TYPE=Release .
cmake --build . --target install
ctest

