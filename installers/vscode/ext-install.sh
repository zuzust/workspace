#!/usr/bin/env bash

# Listing vscode installed extensions ...
# code --list-extensions > vscode/vscode-extensions.txt

# Installing vscode extensions ...
for e in $(cat $WORKSPACE_DIR/installers/vscode/vscode-extensions.txt); do code --install-extension $e; done


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/vscode/ext-install.sh
