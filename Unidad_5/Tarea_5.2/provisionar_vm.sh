#!/bin/bash
sudo virsh net-define hostonly-net.xml
sudo virsh net-start hostonly-red
qemu-img create -f qcow2 -o preallocation=off servidor-vm1.qcow2 20G
