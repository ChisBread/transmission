#! /bin/bash
set -ex
if [ ! -d /src/cross/build/$BUILD_PREFIX ]; then
    mkdir -p /src/cross/build/$BUILD_PREFIX
fi 
cd /src/cross/build/$BUILD_PREFIX
cmake -DBUILD_TESTING=OFF -DCMAKE_BUILD_TYPE=RelWithDebInfo /src
cmake  --build . --target all -- -j 4
mkdir -p /src/cross/install/$BUILD_PREFIX
cmake --install . --prefix="/src/cross/install/$BUILD_PREFIX"
