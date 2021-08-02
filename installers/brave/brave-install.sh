#!/usr/bin/env bash

# Install packages to allow apt to use a repository over HTTPS ...
sudo apt install -y \
    apt-transport-https \
    curl

# Add Brave’s official GPG key ...
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

# Set up the stable repository ...
echo \
    "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ \
    stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null

# Update the apt package index ...
sudo apt update

# Install the latest version of Brave ...
sudo apt install -y brave-browser


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/brave/brave-install.sh
