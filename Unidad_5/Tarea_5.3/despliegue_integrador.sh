#!/bin/bash
sudo virt-install --name servidor-backend --ram 1024 --vcpus 1 --disk path=./servidor-vm1.qcow2,format=qcow2 --os-variant ubuntu22.04 --network network=hostonly-red --graphics none --import --noautoconsole
sudo virsh snapshot-create-as --domain servidor-backend --name "respaldo-estable"
sudo virsh dumpxml servidor-backend > servidor-backend-config.xml
