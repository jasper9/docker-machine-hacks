#!/bin/bash
source ~/.bash_profile
machine active $1
echo "export DOCKER_HOST=`machine url $MACHINE` DOCKER_AUTH=identity" > set_envs.sh
source ./set_envs.sh

