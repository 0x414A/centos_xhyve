#!/bin/sh

KERNEL="centos/vmlinuz"
INITRD="centos/initrd.img"
CMDLINE="earlyprintk=serial console=ttyS0 acpi=off sshd=1 vnc vncpassword=yourpasswd"

MEM="-m 1G"
#SMP="-c 2"
NET="-s 2:0,virtio-net"
IMG_CD="-s 3,ahci-cd,CentOS-7-x86_64-Minimal-1511.iso"
IMG_HDD="-s 4,virtio-blk,hdd.img"
PCI_DEV="-s 0:0,hostbridge -s 31,lpc"
LPC_DEV="-l com1,stdio"

xhyve $MEM $SMP $PCI_DEV $LPC_DEV $NET $IMG_CD $IMG_HDD -f kexec,$KERNEL,$INITRD,"$CMDLINE"
