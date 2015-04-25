#!/bin/bash

docker-machine ssh $1 "sudo sed -i -e 's/tlsverify/tlsverify --insecure-registry docker-hub:5000 /g' /var/lib/boot2docker/profile"
docker-machine ssh $1 "sudo /etc/init.d/docker restart"
#source ~/vro/switch_machine.sh $1
#yes | docker ps
