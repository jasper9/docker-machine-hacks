#!/bin/bash

source ~/.bash_profile

NUM_NODES=`docker-machine ls | grep vsphere | wc -l`

if [ $NUM_NODES -eq 0 ]; then
	/root/vro/deploy_docker_node.sh >/dev/null 2>&1
	NUM_NODES=`machine ls | grep vsphere | wc -l`
fi
	

USE_NODE=$(( ( RANDOM % $NUM_NODES ) ))

MACHINE=dockervm$USE_NODE
#MACHINE_URL=`machine url $MACHINE`
#MACHINE_OUTPUT=`machine active $MACHINE`
eval "$(docker-machine env $MACHINE)"

echo $MACHINE

exit 0
