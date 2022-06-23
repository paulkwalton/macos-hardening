# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"
  

  # Create a forwarded port
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network. In VirtualBox, this is a Host-Only network
  # config.vm.network "private_network", ip: "192.168.33.10"

  # VirtualBox specific settings
  config.vm.provider "virtualbox" do |vb|
    # Hide the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  # Provision the machine with a shell script
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt install kali-tools-hardware -y
    sudo apt install kali-tools-fuzzing -y
    sudo apt install kali-tools-windows-resources -y
    sudo apt install kali-tools-vulnerability -y
    sudo apt install kali-tools-web -y
    sudo apt install kali-tools-database -y
    sudo apt install kali-tools-passwords -y
    sudo apt install kali-tools-reverse-engineering -y
    sudo apt install kali-tools-exploitation -y
    sudo apt install kali-tools-sniffing-spoofing -y
    sudo apt install kali-tools-post-exploitation -y
    passwd
  SHELL
end
