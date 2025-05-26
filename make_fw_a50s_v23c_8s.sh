#! /bin/bash

cd vesc_firmware/
make a50s_v23c_8s
cd ..
cp vesc_firmware/build/a50s_v23c_8s/a50s_v23c_8s.hex build/a50s_v23c_8s.hex

