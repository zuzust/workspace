#!/usr/bin/env bash

# Install packages to allow apt to use a repository over HTTPS ...
sudo apt install -y \
    apt-transport-https \
    wget

# Add Beekeeper’s official GPG key ...
wget --quiet -O - https://deb.beekeeperstudio.io/beekeeper.key | sudo apt-key add -

# Set up the stable repository ...
echo "deb https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list > /dev/null

# Update the apt package index ...
sudo apt update

# Install the latest version of Beekeeper ...
sudo apt install -y beekeeper-studio


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/beekeeper/beekeeper-install.sh
