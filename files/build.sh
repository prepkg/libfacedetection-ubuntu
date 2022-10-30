#!/bin/bash

rm -rf src build pkg/usr out/*

git clone https://github.com/ShiqiYu/libfacedetection.git src

mkdir build && cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=../pkg/usr/local \
  -D BUILD_SHARED_LIBS=ON \
  -D ENABLE_AVX2=ON \
  ../src

make -j$(nproc)
make install/strip

cd ..

sed -i "s/XXXXXXXX/$(date +'%Y%m%d')/" pkg/DEBIAN/control
sed -i "s/YYYYYYY/$(git -C src rev-parse --short HEAD)/" pkg/DEBIAN/control

mkdir -p out
dpkg-deb -Zxz --build pkg out/libfacedetection.deb
