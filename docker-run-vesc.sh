#! /bin/bash

xhost +
docker run --rm -it --name ubuntu-vesc --network host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged -v "/dev/:/dev" -v `pwd`:/src -ti ubuntu-vesc bash 
