#!/usr/bin/env bash

ZSH_INSTALLER_DIR=$WORKSPACE_DIR/installers/zsh

# Backup pristine config file ...
mv -v $HOME/.zshrc $HOME/.zshrc~

# Setup config files ...
ln -s $DOTFILES_DIR/zshrc $HOME/.zshrc

# Install plugins ...
$ZSH_INSTALLER_DIR/zsh-plugins-install.sh

# Source zsh configuration ...
source $HOME/.zshrc


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/zsh/zsh-setup.sh
