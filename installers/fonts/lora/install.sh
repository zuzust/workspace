#!/usr/bin/env bash

# Install Lora fonts
LORAFONTS_DIR=$TTFONTS_DIR/lora
LORAFONTS_FILE=$FONTS_DIR/lora/Lora.tar.gz

[[ ! -d "${LORAFONTS_DIR}" ]] && mkdir -m 755 -p ${LORAFONTS_DIR}
tar -C ${LORAFONTS_DIR} -xzf ${LORAFONTS_FILE} \
    && chmod 644 ${LORAFONTS_DIR}/*


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/fonts/lora/install.sh
