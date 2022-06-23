#!/bin/bash
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/paulkwalton/macos-hardening/main/macos_provisioning_script.sh)"
softwareupdate -i -a
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask virtualbox
brew install git
brew install nmap
brew install vagrant
brew install docker
brew install --cask wireshark
brew install --cask google-chrome
brew install --cask firefox
brew install --cask owasp-zap
brew install --cask burp-suite-professional
vagrant box add kalilinux/rolling --provider virtualbox
mkdir -p vagrant-projects/kali
cd vagrant-projects/kali
vagrant init kalilinux/rolling
curl https://raw.githubusercontent.com/paulkwalton/macos-hardening/main/Vagrantfile --output Vagrantfile
read -p "IMPORTANT! You must enable the Virtual Box Plugin Under System Preferences - Security & Privacy - General. Don't proceed until complete"
vagrant up
