#!/bin/bash

# Build essentials for rust development
sudo apt install -y build-essential libsqlite3-dev libssl-dev pkg-config sqlite3;

# Utilities
sudo apt install -y tree tmux vim;

# Extra project stuff
sudo apt install -y mosquitto mosquitto-clients;

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;

. "$HOME/.cargo/env";

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 22;

node -v;

npm -v;

cp ./.bashrc ~/.bashrc;
cp ./.tmux.conf ~/.tmux.conf;

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
Executing docker install script, commit: 7cae5f8b0decc17d6571f9f52eb840fbc13b2737
<...>

sudo usermod -aG docker $USER
newgrp docker
