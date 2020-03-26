#!/bin/bash
#This scrypt will enum the dns and look for popssible zone transfers.
if [ -z "$1" ]; then 
	echo "[*] Usage : ./dns_zt.sh <domain name> "
	exit 0 
fi

for server in $(host -t ns $1 | cut -d " " -f4);do
	host -l $1 $server | grep "has address"
done
