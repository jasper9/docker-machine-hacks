#!/bin/sh
source ~/.bash_profile


machine create -d vsphere --vsphere-vcenter="vcsa-01a.corp.local"  --vsphere-username="docker@corp.local" --vsphere-password="vmware123" --vsphere-datacenter="Datacenter" --vsphere-compute-ip="192.168.110.52" --vsphere-datastore="ds-site-a-nfs01" --vsphere-network="VM Network" --vsphere-boot2docker-url="http://util-01a:81/files/boot2docker-custom.iso" dockervm`machine ls | grep Running | wc -l`

true
