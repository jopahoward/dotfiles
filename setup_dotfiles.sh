#!/bin/sh

# Bash config files
rm -f "$HOME/.bashrc" ; ln -s "$PWD/.bashrc" "$HOME/.bashrc"
rm -f "$HOME/.inputrc" ; ln -s "$PWD/.inputrc" "$HOME/.inputrc"
rm -f "$HOME/.bash_aliases" ; ln -s "$PWD/.bash_aliases" "$HOME/.bash_aliases"
rm -f "$HOME/.bash_logout" ; ln -s "$PWD/.bash_logout" "$HOME/.bash_logout"
rm -f "$HOME/.bash_profile" ; ln -s "$PWD/.bash_profile" "$HOME/.bash_profile"

# Source all of the above
. "$HOME/.bashrc"
. "$HOME/.inputrc"
. "$HOME/.bash_aliases"
. "$HOME/.bash_logout"
. "$HOME/.bash_profile"

# Git config files
rm -f "$HOME/.gitconfig" ; ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"
rm -f "$HOME/.gitmessage" ; ln -s "$PWD/.gitmessage" "$HOME/.gitmessage"

# Vim config file
rm -f "$HOME/.vimrc" ; ln -s "$PWD/.vimrc" "$HOME/.vimrc"

# SSH-config
mkdir -p "$HOME/.ssh" ; rm -f "$HOME/.ssh/config" ; ln -s "$PWD/ssh-config" "$HOME/.ssh/config"
