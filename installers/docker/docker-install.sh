#!/usr/bin/env bash

# Update the apt package index ...
sudo apt update

# Install packages to allow apt to use a repository over HTTPS ...
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key ...
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository ...
echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index ...
sudo apt update

# Install the latest version of Docker CE ...
sudo apt install docker-ce docker-ce-cli containerd.io

# Create the docker group ...
sudo groupadd docker

# Add your user to the docker group ...
sudo usermod -aG docker $USER

# Logout to apply changes ...
echo Logout to apply changes.


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/docker/docker-install.sh
