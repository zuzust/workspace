#!/usr/bin/env bash

# Install Roboto fonts
ROBOTOFONTS_DIR=$TTFONTS_DIR/roboto
ROBOTOFONTS_FILE=$FONTS_DIR/roboto/Roboto.tar.gz

[[ ! -d "${ROBOTOFONTS_DIR}" ]] && mkdir -m 755 -p ${ROBOTOFONTS_DIR}
tar -C ${ROBOTOFONTS_DIR} -xzf ${ROBOTOFONTS_FILE} \
    && chmod 644 ${ROBOTOFONTS_DIR}/*


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/fonts/roboto/install.sh
