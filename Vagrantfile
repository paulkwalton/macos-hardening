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
    apt remove grub-pc -y
    apt update -y
    apt upgrade -y
    apt install git -y
    apt install seclists curl enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf -y
    apt install kali-desktop-xfce -y
    apt install netcat-traditional -y
    apt install powershell  -y
    apt install kali-tools-top10 -y
    update-alternatives --config x-session-manager -y
    apt install wpscan -y
    wpscan --update
    apt install shellter -y
    apt install netcat -y
    apt install tor -y
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
    apt install default-jdk -y
    apt install smbclient -y
    apt install enum4linux -y
    apt install default-mysql-client -y
    gem install highline -y
    apt install snapd -y
    apt install prips -y
    apt install dirsearch -y
    apt install pip -y
    apt install rdesktop -y
    apt install leafpad -y
    apt install seclists -y
    apt install curl enum4linux feroxbuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf -y
    apt install pipx -y
    apt install dnsrecon -y
    apt install python3-venv -y
    apt install jython -y
    apt install sqlitebrowser -y
    apt install hashid -y
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
    gem install evil-winrm
    updatedb
    apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
    pip install wesng
    wes --update
    passwd
    service postgresql start
  SHELL
end
