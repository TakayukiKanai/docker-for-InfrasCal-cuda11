#!/bin/bash

CREATED_USER=docker_infrascal # Same to USER in Dockerfile
docker exec --user ${CREATED_USER} -it infrascal \
        /bin/bash -c "cd /home/${CREATED_USER}/InfrasCal; /bin/bash"