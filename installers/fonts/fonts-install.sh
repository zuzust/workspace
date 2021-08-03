#!/usr/bin/env bash

export TTFONTS_DIR=$HOME/.local/share/fonts/truetype
export FONTS_DIR=$WORKSPACE_DIR/installers/fonts

# Install fonts
$FONTS_DIR/fira-code/install.sh
# $FONTS_DIR/lora/install.sh
# $FONTS_DIR/msttfonts/install.sh
# $FONTS_DIR/roboto/install.sh

# Update fonts cache
fc-cache -fv


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/fonts/fonts-install.sh
