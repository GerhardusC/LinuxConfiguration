#!/bin/bash

sudo apt install build-essential libsqlite3-dev libssl-dev pkg-config;

sudo apt install mosquitto mosquitto-clients;

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