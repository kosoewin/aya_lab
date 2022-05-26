# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
        config.vm.define "ansiblecontrol" do |ansiblecontrol|
                ansiblecontrol.vm.hostname = "ansiblecontrol.ayalab.local"
                ansiblecontrol.vm.box = "rockylinux/8"
                ansiblecontrol.vm.network "private_network", ip: "192.168.101.10"
                ansiblecontrol.vm.provider "virtualbox" do |vb|
                        vb.name = "ansiblecontrol"
                        vb.memory = "2048"
                end
                ansiblecontrol.vm.provision "shell", path: "generate_hosts.sh"
                ansiblecontrol.vm.provision "shell", path: "provisioner.sh"
                ansiblenode01.vm.provision "shell", inline: <<-SHELL
                        sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
                        sudo systemctl restart sshd

        end

        config.vm.define "ansiblenode01" do |ansiblenode01|
                ansiblenode01.vm.box = "rockylinux/8"
                ansiblenode01.vm.hostname = "ansiblenode01.ayalab.local"
                ansiblenode01.vm.network "private_network", ip: "192.168.101.20"
                ansiblenode01.vm.provider "virtualbox" do |vb|
                        vb.name = "ansiblenode01"
                        vb.memory = "2048"
                end
                ansiblenode01.vm.provision "shell", path: "generate_hosts.sh"
                ansiblenode01.vm.provision "shell", inline: <<-SHELL
                        sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
                        sudo systemctl restart sshd
                SHELL
        end

        config.vm.define "ansiblenode02" do |svr|
                ansiblenode02.vm.box = "rockylinux/8"
                ansiblenode02.vm.hostname = "ansiblenode02.ayalab.local"
                ansiblenode02.vm.network "private_network", ip: "192.168.101.30"
                ansiblenode02.vm.provider "virtualbox" do |vb|
                        vb.name = "ansiblenode02"
                        vb.memory = "2048"
                end
                ansiblenode02.vm.provision "shell", path: "generate_hosts.sh"
                ansiblenode02.vm.provision "shell", inline: <<-SHELL
                        sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
                        sudo systemctl restart sshd
                SHELL
        end
end
