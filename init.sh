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

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
