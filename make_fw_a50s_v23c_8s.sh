#! /bin/bash

git config --global --add safe.directory /src
git config --global --add safe.directory /src/vesc_firmware
mkdir -p build
cd vesc_firmware/
make a50s_v23c_8s
cd ..
cp vesc_firmware/build/a50s_v23c_8s/a50s_v23c_8s.hex build/a50s_v23c_8s.hex

