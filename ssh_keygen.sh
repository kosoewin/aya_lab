#!/usr/bin/env bash
sudo yum install -y sshpass

# THIS SCRIPT WILL CREATE SSH KEYPAIR AND DISTRIBUTE ACROSS ALL NODES

ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""

# LOOPING THROUGH AND DISTRIBUTING THE KEY

for val in ansiblecontrol ansiblenode01 ansiblenode02; do 
	echo "-------------------- COPYING KEY TO ${val^^} NODE ------------------------------"
	sshpass -p 'vagrant' ssh-copy-id -o "StrictHostKeyChecking=no" vagrant@$val 
done
