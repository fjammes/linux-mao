#!/bin/bash

# Start guitarix in a docker container

set -euo pipefail

xhost +

# Need to attach $HOME/.config/guitarix
docker run -it \
    --privileged \
    --ulimit memlock=-1:-1 \
    --user=$(id -u):$(id -g) \
    -e DISPLAY=$DISPLAY \
    -e PIPEWIRE_RUNTIME_DIR=/tmp \
    -e HOME=$HOME \
    -w $HOME \
    -v $HOME:$HOME \
    -v /data/Dropbox:$HOME/Dropbox \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /run/user/$(id -u)/at-spi/bus_0:/run/user/$(id -u)/at-spi/bus_0 \
    -v /run/user/$(id -u)/pipewire-0:/tmp/pipewire-0 \
    guitarix
