# This script will be created prerequisites for controlnode

       sudo yum install -y ansible python3
       ansible --versión
       sudo alternatives --set python /usr/bin/python3
       sudo useradd ansible
       sudo echo " password" | passwd --stdin ansible
       sudo echo " ansible ALL=(ALL) NOPASSWD:ALL " > /etc/sudoers.d/ansible
       su ansible; ssh-keygen
       ssh-copy-id node02
       ssh-copy-id node01
       ssh-copy-id ansiblecontrol
