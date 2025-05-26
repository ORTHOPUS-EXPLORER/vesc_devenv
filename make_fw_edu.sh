#! /bin/bash

cd vesc_firmware/
make fw_edu
cd ..
cp vesc_firmware/build/edu/edu.hex build/edu.hex
