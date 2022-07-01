#!/bin/bash
echo -c "$(curl -fsSL https://raw.githubusercontent.com/paulkwalton/macos-hardening/main/run-vagrant)" > ~/Desktop/runme-after-reboot.sh
cd ~/Documents
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/paulkwalton/macos-hardening/main/macos_provisioning_script.sh)"
softwareupdate -i -a
for i in `vagrant global-status | grep virtualbox | awk '{ print $1 }'` ; do vagrant destroy $i ; done
rm -r vagrant-projects
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask virtualbox
brew install --cask vmware-fusion
brew install git
brew install nmap
brew install vagrant
brew install docker
brew install --cask wireshark
brew install --cask google-chrome
brew install --cask firefox
brew install --cask owasp-zap
brew install --cask burp-suite-professional
brew install --cask postman
brew install --cask tenable-nessus-agent
brew install --cask microsoft-remote-desktop
brew install --cask visual-studio
sudo shutdown -r now



