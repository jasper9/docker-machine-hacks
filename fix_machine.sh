#!/bin/bash

machine ssh $1 sudo sed -i -e "s/util-01a/docker-hub/g" /etc/init.d/docker
machine ssh $1 sudo /etc/init.d/docker restart
source ~/vro/switch_machine.sh $1
yes | docker ps
