#!/bin/bash
$(docker-machine env $1)
docker-machine ssh $1 "sudo sed -i -e 's/--tlsverify/--tlsverify --insecure-registry docker-hub:5000/g' /var/lib/boot2docker/profile"
docker-machine ssh $1 "sudo /etc/init.d/docker restart"
yes | docker ps
