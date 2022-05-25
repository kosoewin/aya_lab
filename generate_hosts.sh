#!/bin/bash

# Update /etc/hosts file
sudo bash -c 'cat >> /etc/hosts' << EOF
192.168.101.10	ansiblecontrol.ayalab.local  ansiblecontrol
192.168.101.20	ansiblenode01.ayalab.local  ansiblenode01
192.168.101.20	ansiblenode02.ayalab.local  ansiblenode02
EOF
