#!/bin/bash

echo "Setting up dotfiles"

. profile.brew

sudo apt-get install zile tig fzf
brew install lazygit gh

cat profile.brew profile >>~/.profile
cp gitconfig ~/.gitconfig
