# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.provider "virtualbox" do |rs|
    rs.memory = 2048
    rs.cpus = 2
  end

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # Master node where ansible will be installed
  config.vm.define "controller" do |ansiblecontrol|
    ansiblecontrol.vm.box = "ubuntu/focal64"
    ansiblecontrol.vm.hostname = "ansiblecontrol.ayalab.local"
    ansiblecontrol.vm.network "private_network", ip: "192.168.101.10"
    ansiblecontrol.vm.provision "shell", path: "bootstrap.sh"
    ansiblecontrol.vm.provision "file", source: "key_gen.sh", destination: "/home/vagrant/"
    ansiblecontrol.vm.provision "shell", inline: <<-SHELL
			sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
			sudo systemctl restart sshd
		SHELL
  end

  # Managed node 1.
  config.vm.define "ansiblenode01" do |ansiblenode01|
    ansiblenode01.vm.box = "ubuntu/focal64"
    ansiblenode01.vm.hostname = "ansiblenode01.ayalab.local"
    ansiblenode01.vm.network "private_network", ip: "192.168.101.20"
    ansiblenode01.vm.provision "shell", path: "bootstrap.sh"
    ansiblenode01.vm.provision "shell", inline: <<-SHELL
			sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
			sudo systemctl restart sshd
		SHELL
  end

  # Managed node 2.
  config.vm.define "ansiblenode02" do |ansiblenode02|
    ansiblenode02.vm.box = "ubuntu/focal64"
    ansiblenode02.vm.hostname = "ansiblenode02.ayalab.local"
    ansiblenode02.vm.network "private_network", ip: "192.168.101.30"
    ansiblenode02.vm.provision "shell", path: "bootstrap.sh"
    ansiblenode02.vm.provision "shell", inline: <<-SHELL
			sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
			sudo systemctl restart sshd
		SHELL 
  end

end
