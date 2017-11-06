#!/bin/bash

disk_name="07_05_4G_$1.img"
j = 

../qemu-2.10.0-rc4/arm-softmmu/qemu-system-arm -cpu arm1176 -m 256 -M versatilepb -serial stdio -append "console=ttyAMA0,115200 root=/dev/sda2 panic=1 rootfstype=ext4 rw" -kernel qemu-kernel-4.4.50 -hda $disk_name -net nic,vlan=0,macaddr=52:54:00:12:34:0$1 -net tap,ifname=tap0
