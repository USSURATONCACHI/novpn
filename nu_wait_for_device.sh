#!/bin/bash

source novpn_ns params

until ip link show $DEV | grep "UP"; do 
    echo "Waiting for device $DEV to be UP..."
    sleep 1; 
done
echo "Device $DEV is finally up."                                                       