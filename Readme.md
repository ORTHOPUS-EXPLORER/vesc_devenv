
## First install:

# You need a valid bitbucket account with acces to ORTHOPUS repositories


pull all the git repositories and submodules with:
```
(HOST)
./setup_devenv.sh
```

build the docker image that will contain the toolchain required to build vesc_tool and the vesc firmware.

(however, you can install the tools directly on your computer, withour docker, have a look at the dockerfile to know the required dependancies)
```
(HOST)
./docker-build-vesc.sh
```

run container:
```
(HOST)
docker-run-vesc.sh
```
you will en up in a shell inside your contaier (CONT), showing something like:

```
root@thomas-Precision-3560:/src#
```

## VESC_tool:

build vesc_tool (this will take a while)

```
(CONT)
./buildvesc_tool.sh
```

now, you can run VESC_tool using:

```
(CONT)
./vesc_tool.sh
```

the VESC_tool GUI should start. You can connect with USB or CAN (setup CAN bus with ./setcan0_1M.sh) to the actuators.

## VESC_bldc (firmware):

Still in the container, you can build the firmware:

```
(CONT)
make_fw_a50s_v23c_8s.sh
```

you can flash this firmware with VESC_tool, it has been copied in the build/ folder.

