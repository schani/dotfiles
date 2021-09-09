#!/bin/bash

echo "Setting up dotfiles"

cat profile.brew profile >>~/.profile
cp gitconfig ~/.gitconfig

. profile.brew

sudo apt-get -y install zile tig fzf
brew install lazygit gh

