#!/bin/bash
#script to make bootable drives
set -e
if [ $# -ne 2 ]; then 
	echo "[*] Usage: bootme <file.iso> </dev/*>"
	exit 1
fi
sudo umount $2*&
sleep 3&
sudo mkfs.vfat $2 -I&
sleep 3&
sudo dd if=$1 of=$2 bs=4M status=progress && sync
