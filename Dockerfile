FROM ubuntu:22.04

RUN apt update
RUN apt install -y vim
RUN apt install -y tmux
RUN apt install -y can-utils

#vesc_bldc dependancies
RUN apt install -y wget make build-essential libgl-dev libxcb-xinerama0 git 


RUN DEBIAN_FRONTEND=noninteractive TZ=Eurpoe/Paris apt-get -y install tzdata
RUN apt install -y qtbase5-dev qttools5-dev-tools qtbase5-dev
RUN apt install -y qtquickcontrols2-5-dev
RUN apt install -y libqt5serialport5-dev
RUN apt install -y libqt5bluetooth5 qtpositioning5-dev libqt5gamepad5-dev
RUN apt install -y qtconnectivity5-dev
RUN apt install -y libqt5svg5-dev
RUN apt install -y libqt5serialbus5-dev
RUN apt install -y qtbase5-private-dev


COPY . ./src/
WORKDIR src
