#!/bin/bash

source ~/.bash_profile

# SYNTAX: blahblah.sh machineName OutsidePort

MACHINE=$1
#MACHINE_URL=`machine url $MACHINE`
#MACHINE_OUTPUT=`machine active $MACHINE`
eval "$(docker-machine env $MACHINE)"
#/root/vro/fix_machine.sh $MACHINE

#export DOCKER_HOST=`machine url $MACHINE` 
#export DOCKER_AUTH=identity

#/usr/bin/docker run -d -t -p $2:80 -a stderr  docker-hub:5000/centos6:v4 /bin/bash -c '/startup.sh && /bin/bash' >/dev/null 2>&1

/usr/bin/docker run -d -t -p $2:80 docker-hub:5000/centos6:v4 /bin/bash -c '/startup.sh && /bin/bash'


docker ps | grep 777 | awk '{ print $1 }'

exit 0
