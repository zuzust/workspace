#!/usr/bin/env bash

VSC_USER_DIR=$HOME/.config/Code/User
VSC_INSTALLER_DIR=$WORKSPACE_DIR/installers/vscode

# Install packages to allow apt to use a repository over HTTPS ...
sudo apt install -y \
    apt-transport-https \
    curl

# Add Visual Studio Code’s official GPG key ...
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft-archive-keyring.gpg

# Set up the stable repository ...
echo \
    "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/code \
    stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

# Update the apt package index ...
sudo apt update

# Install the latest version of Visual Studio Code ...
sudo apt install code

# Install extensions ...
$VSC_INSTALLER_DIR/ext-install.sh

# Setup user settings
mkdir -p $VSC_USER_DIR
ln -s $VSC_INSTALLER_DIR/keybindings.json $VSC_USER_DIR/keybindings.json
ln -s $VSC_INSTALLER_DIR/settings.json $VSC_USER_DIR/settings.json
ln -s $VSC_INSTALLER_DIR/snippets $VSC_USER_DIR/snippets


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/vscode/vscode-install.sh
