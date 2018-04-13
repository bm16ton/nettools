#!/bin/bash
# while true; do echo $(iwconfig 2>&1 | grep IEEE | awk '{print $1}') > iw-name ; sleep 1;done
mkdir /home/*/.net-tools 2> /dev/null
echo "" > /home/*/.net-tools/PLAYLIST ; iwconfig 2>&1 | grep -v extensions | sed -n 's/^\([^ ]\+\).*/\1/p' > /home/*/.net-tools/PLAYLIST ; echo $(iwconfig 2>&1 | grep dBm | grep -v Signal) > /home/*/.net-tools/rate-sig 
