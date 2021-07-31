#!/usr/bin/env bash

STARSHIP_INSTALLER_DIR=$WORKSPACE_DIR/installers/starship
STARSHIP_DIR=$HOME/.starship

# Install starship, to customize cross-shell prompts
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Setup env
ln -s $STARSHIP_INSTALLER_DIR/config.toml $STARSHIP_DIR/config.toml
ln -s $STARSHIP_INSTALLER_DIR/starship.zenv $ZSH_DOTFILES_DIR/env.d/05_starship.zenv


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/starship/starship-install.sh
