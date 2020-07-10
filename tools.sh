#!/bin/bash

WINDOWS_IP_ADDRESS=`ipconfig.exe | grep WSL -A3 | tail -n 1 | awk '{print $NF}' | tr -d '\r\n'`
echo $WINDOWS_IP_ADDRESS