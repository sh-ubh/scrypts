#!/bin/bash
set -e
test=$1
if [ $# -ne 1 ]; then 
	echo "[*] Usage: arping 10.42.0"
	exit 1
fi

for i in {1..255}
do
    sudo arping -I eno1 -c 1 $test\.$i
done
