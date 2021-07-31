#!/usr/bin/env bash

# Package Cloud does not support Pop_OS.
# Download the script and set os="ubuntu" dist="focal" before executing it

# Create an apt config file for this repository ...
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

# Install the package ...
sudo apt install git-lfs

# Install the git command line extension ...
git lfs install


# vim:ft=sh
# File: $DOTFILES_PATH/installers/git-lfs/git-lfs-install.sh
