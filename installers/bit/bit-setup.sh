#!/usr/bin/env bash

BIT_INSTALLER_DIR="${WORKSPACE_DIR}/installers/bit"

# Setup env
ln -s $BIT_INSTALLER_DIR/bit.zenv $ZSH_DOTFILES_DIR/env.d/50_bit.zenv
ln -s $BIT_INSTALLER_DIR/npmrc $HOME/.npmrc
ln -s $BIT_INSTALLER_DIR/bit.zal $ZSH_DOTFILES_DIR/aliases.d/bit.zal


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/bit/bit-setup.sh
