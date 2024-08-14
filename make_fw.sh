#! /bin/bash

rm build/edu.hex
cd vesc_bldc/
rm -R build/
make arm_sdk_install
make fw_edu
cd ..
ln -s vesc_bldc/build/edu/edu.hex build/edu.hex

