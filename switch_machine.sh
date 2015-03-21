#!/bin/bash
source ~/.bash_profile
docker-machine active $1
echo "export DOCKER_HOST=`docker-machine url $MACHINE` DOCKER_AUTH=identity" > set_envs.sh
source ./set_envs.sh

