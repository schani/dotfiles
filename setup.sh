#!/bin/bash

echo "Setting up dotfiles"

cat bashrc >>~/.bashrc
cp gitconfig ~/.gitconfig

sudo apt-get -y install zile tig fzf

gh config set editor zile

cd /tmp
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
