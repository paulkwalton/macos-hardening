#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/paulkwalton/macos-hardening/main/macos_provisioning_script.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask virtualbox
brew install git
brew install nmap
brew install vagrant
brew install --cask wireshark
brew install --cask google-chrome
brew install --cask owasp-zap
brew install --cask burp-suite


