#!/bin/sh

set -eu

xhost +

docker run --rm -it                \
  -e DISPLAY=unix:0.0              \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --ipc=host                       \
  --cap-drop=ALL                   \
  --security-opt=no-new-privileges \
  docker-openwebstart              \
  javaws /mnt/launch.jnlp
