# macos-hardening
Public Repo For Hardening and deploying a MacOS Image used for Pentesting.
This will use an NCSC script to harden and lockdown the MacOS Image. Brew and Vagrent will then be used to deploy applications, virtualisation and Kali Linux.

Run the following command to initiate the build process. Don't run as Sudo, or it will error.

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/paulkwalton/macos-hardening/main/install-apps.sh)"
