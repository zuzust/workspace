#!/usr/bin/env bash

VOLTA_INSTALLER_DIR="${WORKSPACE_DIR}/installers/volta"
VOLTA_HOME="${HOME}/.volta"

# Install volta (javascript tools manager)
curl https://get.volta.sh | bash -s -- --skip-setup

# Install completions
$VOLTA_HOME/bin/volta completions -f -o $ZSH_DOTFILES_DIR/completion.d/_volta zsh

# Setup env
ln -s $VOLTA_INSTALLER_DIR/volta.zenv $ZSH_DOTFILES_DIR/env.d/30_volta.zenv


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/volta/volta-install.sh
