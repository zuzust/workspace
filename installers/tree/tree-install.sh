#!/usr/bin/env bash

TREE_INSTALLER_DIR=$WORKSPACE_DIR/installers/tree

# Install tree (displays an indented directory tree, in color)
sudo apt install -y tree

# Setup aliases
ln -s $TREE_INSTALLER_DIR/tree.zal $ZSH_DOTFILES_DIR/aliases.d/tree.zal


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/tree/tree-install.sh
