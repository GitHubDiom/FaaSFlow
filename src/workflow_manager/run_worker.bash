#!/bin/bash

# 使用ip命令获取eth1接口的IP地址
worker_ip=$(ip -4 addr show eth1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "Executing python3 test_server.py $worker_ip..."

python3 test_server.py $worker_ip
