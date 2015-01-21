#!/bin/bash

source ~/.bash_profile

# SYNTAX: blahblah.sh machineName OutsidePort

MACHINE=$1
MACHINE_URL=`machine url $MACHINE`
MACHINE_OUTPUT=`machine active $MACHINE`

export DOCKER_HOST=`machine url $MACHINE` 
export DOCKER_AUTH=identity

yes | /usr/bin/docker run -d -t -p $2:80 -a stderr  util-01a:5000/centos6:stg-v5 /bin/bash -c '/startup.sh && /bin/bash' >/dev/null 2>&1


docker ps | grep 777 | awk '{ print $1 }'

exit 0
