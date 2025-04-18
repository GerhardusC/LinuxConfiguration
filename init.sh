#!/bin/bash

# Build essentials for rust development
sudo apt install -y build-essential libsqlite3-dev libssl-dev pkg-config sqlite3;

# Utilities
sudo apt install -y tree tmux vim;

# Extra project stuff
sudo apt install -y mosquitto mosquitto-clients;

cp ./.bashrc ~/.bashrc;
cp ./.tmux.conf ~/.tmux.conf;

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;

. "$HOME/.cargo/env";

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 22;

node -v;

npm -v;

git clone https://github.com/GerhardusC/neovim-config $HOME/.config/nvim

sudo apt-get install -y git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0

mkdir -p ~/esp
cd ~/esp
git clone -b v5.4.1 --recursive https://github.com/espressif/esp-idf.git

cd ~/esp/esp-idf
./install.sh esp32

. $HOME/esp/esp-idf/export.sh

sudo usermod -aG dialout $USER
newgrp dialout


curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
Executing docker install script, commit: 7cae5f8b0decc17d6571f9f52eb840fbc13b2737
<...>

sudo usermod -aG docker $USER
newgrp docker


