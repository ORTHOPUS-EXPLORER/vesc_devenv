#! /bin/bash

cd vesc_bldc/
make a50s_v23c_8s
cd ..
cp vesc_bldc/build/a50s_v23c_8s/a50s_v23c_8s.hex build/a50s_v23c_8s.hex

