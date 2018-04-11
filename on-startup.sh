#!/bin/bash

# Script run by the jetson at startup.

# set static ethernet IP
ifconfig eth0 10.0.0.2 netmask 255.0.0.0 up

# load firewire kernel modules
modprobe firewire_ohci
