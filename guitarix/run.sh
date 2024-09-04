#!/bin/bash

# Start guitarix in a docker container

set -euo pipefail

xhost +

docker run -it \
    --ulimit memlock=-1:-1 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /run/user/1000/pipewire-0:/tmp/pipewire-0 \
    -e PIPEWIRE_RUNTIME_DIR=/tmp \
    -e DISPLAY=$DISPLAY \
    guitarix
