#!/bin/bash

cd ~
sudo apt update && upgrade -y
sudo apt install git build-essential autoconf automake gdb git libffi-dev zlib1g-dev libssl-dev tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "set -g mouse on
unbind C-b
set -g prefix C-Space
bind C-Space send-prefix
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'catppccin/tmux'
run '~/.tmux/plugins/tpm/tpm'" > ~/.tmux.conf

sudo apt install fuse curl -y
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo cp nvim.appimage /usr/bin/nvim


