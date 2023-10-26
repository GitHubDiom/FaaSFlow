import sys

sys.path.append('../../config')
import config
import os
import socket
import fcntl
import struct

def get_ip_address(interface_name):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        return socket.inet_ntoa(fcntl.ioctl(
            s.fileno(),
            0x8915,  # SIOCGIFADDR
            struct.pack('256s', interface_name[:15].encode('utf-8'))
        )[20:24])
    except IOError:
        return None

eth1_ip = get_ip_address('eth1')

if eth1_ip==config.COUCHDB_IP:
    os.system("cd ../..//scripts; bash db_restart.bash; cd -")
elif eth1_ip in config.WORKER_ADDRS:
    os.system("bash ../../scripts/worker_restart.bash")
else: 
    print(f"Do nothing...")