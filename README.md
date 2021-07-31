# Workspace

Set up your personal workspace in no time.

## Installation

Install git and some other tools we'd like to use:

    ~$ sudo apt update
    ~$ sudo apt install -y zsh git vim

Change default shell to zsh and logout to apply changes:

    ~$ chsh -s $(which zsh)

Setup ssh keys:

    ~$ eval "$(ssh-agent -s)"
    ~$ ssh-add ~/.ssh/id_ed25519

Clone your personal workspace:

    ~$ git clone https://github.com/mrwindmills/workspace.git ~/.workspace

Set it up:

    ~$ ~/.workspace/install

Reference: https://github.com/anishathalye/dotbot
