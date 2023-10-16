#!/bin/bash

gateway_ip=$(ip -4 addr show eth1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

python3 gateway.py $gateway_ip 7000
