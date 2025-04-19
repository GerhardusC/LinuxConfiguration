#!/bin/bash


# . "$HOME/.cargo/env";
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 22;

node -v;

npm -v;


# sudo apt-get install -y git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
#
# mkdir -p ~/esp
# cd ~/esp
# git clone -b v5.4.1 --recursive https://github.com/espressif/esp-idf.git
#
# cd ~/esp/esp-idf
# ./install.sh esp32
#
# . $HOME/esp/esp-idf/export.sh
#
# sudo usermod -aG dialout $USER
# newgrp dialout
#
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
# sudo rm -rf /opt/nvim
# sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
#
# git clone https://github.com/GerhardusC/neovim-config $HOME/.config/nvim
