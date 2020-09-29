#!/bin/bash

if ["$1" == ""]
then
echo "You forgot An IP"
echo "Syntax: ./ipsweep.sh 192.168.1 or other 2 types"


else
    for ip in `seq 1 254`;do
    sudo ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
    done
fi
