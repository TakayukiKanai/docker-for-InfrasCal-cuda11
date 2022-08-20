#!/bin/bash

CREATED_USER=docker_infrascal # Same to USER in Dockerfile
PJT_NAME=infrascal
orange=`tput setaf 3`
reset_color=`tput sgr0`

export ARCH=`uname -m`

echo "==="
echo "Running on ${orange}${ARCH}${reset_color}"
echo "Mount local /data/datasets/ to /home/${CREATED_USER}/InfrasCal/data/datasets/"
echo "==="

docker run -it -d --rm \
        --env="DISPLAY=$DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --privileged \
        --name ${PJT_NAME} \
        --net "host" \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v ${PWD%??????}/InfrasCal/:/home/${CREATED_USER}/InfrasCal:rw \
        -v /data/datasets/:/home/${CREATED_USER}/InfrasCal/data/datasets/:rw \
        -v ${PWD%??????}/scripts/:/home/${CREATED_USER}/InfrasCal/scripts/:rw \
        -v /mnt:/mnt:rw \
        --gpus all  \
        ${ARCH}infrascal:cuda11.2
