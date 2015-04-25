#!/bin/bash

source ~/.bash_profile



for line in "$(docker-machine ls | grep vsphere | awk '{print $1}')"; do
	for x in $line; do
		echo "docker-machine rm $x"
		docker-machine rm $x
	done
done


