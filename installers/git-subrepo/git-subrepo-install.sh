#!/usr/bin/env bash

GITSUBREPO_INSTALLER_DIR=$WORKSPACE_DIR/installers/git-subrepo

# Download the source code from GitHub
git clone https://github.com/ingydotnet/git-subrepo $APPLICATIONS_DIR/GitSubrepo

# Setup env
ln -s $GITSUBREPO_INSTALLER_DIR/git-subrepo.zenv $ZSH_DOTFILES_DIR/env.d/20_git-subrepo.zenv

# Install command completion for the zsh shell ...
curl -L https://raw.githubusercontent.com/ingydotnet/git-subrepo/master/share/zsh-completion/_git-subrepo > $ZSH_DOTFILES_DIR/completion.d/_git-subrepo


# vim:ft=sh
# File: $WORKSPACE_DIR/installers/git-subrepo/git-subrepo-install.sh
