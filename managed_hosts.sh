# This script will be created prequitesite for managed_hosts
sudo yum install python3
sudo alternatives --set python /usr/bin/python3
sudo useradd ansible
sudo echo " password" | passwd --stdin ansible
sudo echo " ansible ALL=(ALL) NOPASSWD:ALL " > /etc/sudoers.d/ansible
