#!/usr/bin/env bash

# ZSH-z: https://github.com/agkozak/zsh-z
curl -L https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh > $ZSH_DOTFILES_DIR/plugins.d/zsh-z.zpl

# zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
curl -L https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.zsh > $ZSH_DOTFILES_DIR/plugins.d/zsh-autosuggestions.zpl


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/zsh/zsh-plugins-install.sh
