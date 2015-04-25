#!/bin/sh
source ~/.bash_profile

NUM=`docker-machine ls | grep Running | wc -l`

docker-machine create -d vmwarevsphere --vmwarevsphere-vcenter="vc-cap-a.corp.local"  --vmwarevsphere-username="docker@corp.local" --vmwarevsphere-password="vmware123" --vmwarevsphere-datacenter="Site\ A\ Datacenter" --vmwarevsphere-compute-ip="192.168.110.53" --vmwarevsphere-datastore="cap-a-nfs-01" --vmwarevsphere-network="VM Network" dockervm$NUM

source ~/vro/fix_machine.sh dockervm$NUM

true
