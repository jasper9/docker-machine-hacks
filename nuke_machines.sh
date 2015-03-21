#!/bin/sh

for line in "$(docker-machine ls | grep vmwarevsphere | awk '{print $1}')"; do
    for x in $line; do
        echo "docker-machine rm -f $x"
        docker-machine rm -f $x
    done
done
