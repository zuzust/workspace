#!/usr/bin/env bash

DIRENV_INSTALLER_DIR=$WORKSPACE_DIR/installers/direnv

# Install direnv (env variables manager)
sudo apt install -y direnv

# Setup env
ln -s $DIRENV_INSTALLER_DIR/direnv.zenv $ZSH_DOTFILES_DIR/env.d/10_direnv.zenv


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/direnv/direnv-install.sh
