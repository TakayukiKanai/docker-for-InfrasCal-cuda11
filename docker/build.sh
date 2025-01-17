#!/bin/bash

orange=`tput setaf 3`
reset_color=`tput sgr0`

ARCH=`uname -m`

echo "Building for ${orange}${ARCH}${reset_color}"

docker build .. \
    -f Dockerfile.${ARCH} \
    --build-arg UID=$(id -g) \
    --build-arg GID=$(id -g) \
    -t ${ARCH}infrascal:cuda11.2 