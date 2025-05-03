#! /bin/bash

cd vesc_bldc/
make fw_edu
cd ..
cp vesc_bldc/build/edu/edu.hex build/edu.hex
