#!/usr/bin/env bash

# Read: https://askubuntu.com/questions/852302/failure-to-download-extra-data-files-ttf-mscorefonts-installer

# Install MS fonts
MSFONTS_DIR=$TTFONTS_DIR/msttfonts
MSFONTS_FILE=$FONTS_DIR/msttfonts/MSfonts.tar.gz

[[ ! -d "${MSFONTS_DIR}" ]] && mkdir -m 755 -p ${MSFONTS_DIR}
tar -C ${MSFONTS_DIR} -xzf ${MSFONTS_FILE1} \
    && chmod 644 ${MSFONTS_DIR}/*

sudo apt install -y cabextract ttf-mscorefonts-installer


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/fonts/msttfonts/install.sh
