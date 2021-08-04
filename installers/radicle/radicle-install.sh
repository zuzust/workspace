#!/usr/bin/env bash

RADICLE_INSTALLER_DIR="${WORKSPACE_DIR}/installers/radicle"
RADICLE_DIR="${APPLICATIONS_DIR}/Radicle"
RADICLE_VER="0.2.9"

# Download the latest version of Radicle Upstream client
[[ ! -d "${RADICLE_DIR}" ]] && mkdir -p $RADICLE_DIR
curl -fsSLo $RADICLE_DIR/radicle-upstream-$RADICLE_VER.AppImage https://releases.radicle.xyz/radicle-upstream-$RADICLE_VER.AppImage

# Apply executable permissions to the binary ...
chmod +x $RADICLE_DIR/radicle-upstream-$RADICLE_VER.AppImage

# Setup env
ln -s $RADICLE_INSTALLER_DIR/radicle.zenv $ZSH_DOTFILES_DIR/env.d/40_radicle.zenv


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/radicle/radicle-install.sh
