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
    sudo apt-get update -y && sudo apt-get upgrade -y
    sudo apt install git -y
    sudo apt install netcat-traditional -y
    sudo apt install powershell  -y
    apt install shellter -y
    apt install netcat -y
    apt install tilix -y
    apt install iputils-ping -y
    apt install dirbuster -y
    apt install dirb -y
    apt install nano -y
    apt install nikto -y
    apt install net-tools -y
    apt install exploitdb -y
    apt install novnc -y
    apt install tcpdump -y
    apt install msfpc -y
    apt install smbclient -y
    apt install enum4linux -y
    apt install default-mysql-client -y
    gem install highline -y
    apt install snapd -y
    apt install prips -y
    apt install dirsearch -y
    apt install pip -y
    apt install rdesktop -y
    apt install seclists -y
    apt install dnsrecon -y
    apt install jython -y
    apt install sqlitebrowser -y
    apt install hashid -y
    gem install evil-winrm
    updatedb
    service postgresql start
  SHELL
end
