#!/bin/bash

while true; do
        echo $(date +%T)
        echo $(cat /proc/loadavg)
        sleep 5
done
