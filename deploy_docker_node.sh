#!/bin/sh
source ~/.bash_profile

NUM=`machine ls | grep Running | wc -l`

machine create -d vsphere --vsphere-vcenter="vc-cap-a.corp.local"  --vsphere-username="docker@corp.local" --vsphere-password="vmware123" --vsphere-datacenter="Site A Datacenter" --vsphere-compute-ip="192.168.110.53" --vsphere-datastore="cap-a-nfs-01" --vsphere-network="VM Network" --vsphere-boot2docker-url="http://util-01a.corp.local/depot/boot2docker-custom.iso" dockervm$NUM

source ~/vro/fix_machine.sh dockervm$NUM

true
