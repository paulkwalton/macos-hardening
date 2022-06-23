#!/bin/bash
/bin/bash -c "$(curl -fsSL https://github.com/paulkwalton/macos-hardening/blob/main/macos_provisioning_script.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask virtualbox
brew install git
brew install vagrant

