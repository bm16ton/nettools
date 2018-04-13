#!/bin/bash
while true; do clear && iw dev $1 station dump ; sleep 1;done
