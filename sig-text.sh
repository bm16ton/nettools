#!/bin/bash
# while true; do echo $(iwconfig 2>&1 | grep IEEE | awk '{print $1}') $(iwconfig 2>&1 | grep dBm | grep -v Signal) > ~/.net-tools/rate-sig ; sleep 1;done
# while true; do echo "" > ~/.net-tools/PLAYLIST ; iwconfig 2>&1 | grep -v extensions | sed -n 's/^\([^ ]\+\).*/\1/p' > ~/.net-tools/PLAYLIST ; echo $(iwconfig 2>&1 | grep dBm | grep -v Signal) > ~/.net-tools/rate-sig ; sleep 5;done
while true; do echo $(iwconfig 2>&1 | grep dBm | grep -v Signal) > ~/.net-tools/rate-sig ; sleep 5;done
