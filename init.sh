#!/bin/bash

# Build essentials for rust development
sudo apt install -y build-essential libsqlite3-dev libssl-dev pkg-config sqlite3;

# Utilities
sudo apt install -y tree tmux vim bash-completion;

# Extra project stuff
sudo apt install -y mosquitto mosquitto-clients;

# Copy all config files.
cp ./.bashrc ~/.bashrc;
cp ./.tmux.conf ~/.tmux.conf;
mkdir $HOME/.config/alacritty;
cp ./alacritty.toml $HOME/.config/alacritty;

# Install rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
. "$HOME/.cargo/env";

# Install neovim.
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Configure neovim.
git clone https://github.com/GerhardusC/neovim-config $HOME/.config/nvim

# Set keyboard repeat rate.
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
gsettings set org.gnome.desktop.peripherals.keyboard delay 250

# Add to group to be able to use USB.
sudo usermod -aG dialout $USER
newgrp dialout

# Install Docker.
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo usermod -aG docker $USER
newgrp docker
