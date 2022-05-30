# aya_lab

# System Requirements
*	CPU: Intel Core i3, Core i5 or equivalents
*	RAM: 8GB (Minimum)
*	HDD: 10GB of Free Space
*	OS: Linux / MacOS / Windows


Intel VT-X or Virtualization Technology must be enabled



# Prerequisites
Please install following softwares -
*	[VirtualBox](https://www.virtualbox.org/)
*	[Vagrant](https://www.vagrantup.com/downloads)
*	[Git](https://git-scm.com/downloads)

References:
*	[Installing and setting up Vagrant on Windows 10 ](https://www.youtube.com/watch?v=Xi5x800aRLY)
*	[Installing and setting up Vagrant on Mac OS X](https://youtu.be/m21YykIAPCA)
*	[Installing Vagrant on Ubuntu 20.04](https://youtu.be/TgBlEUf0oT4)
*	[How to install Git on Linux, Mac and Windows](https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/#install-git)


# Setting up Lab Environment

## Creating/Starting VMs

Run following commands in Terminal (Linux / MacOS) or CMD / Git Bash (Windows)

git clone https://github.com/kosoewin/aya_lab.git

cd aya_lab

vagrant plugin install vagrant-vbguest --plugin-version 0.21

vagrant up
