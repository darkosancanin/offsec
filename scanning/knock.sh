#!/bin/bash
# ./knock.sh 192.168.10.1 10 20 30
# Script to knock on specific ports

HOST=$1
shift
for ARG in "$@"
do
    nmap -Pn --host_timeout 100 --max-retries 0 -r -p $ARG $HOST
done
