FROM ubuntu

COPY . .

RUN apt-get update && apt-get install -y git sudo curl build-essential libsqlite3-dev libssl-dev pkg-config sqlite3 tree tmux vim mosquitto mosquitto-clients clangd python3 python3-pip python3-venv;

RUN ./docker_init.sh

RUN cp ./.bashrc ~/.bashrc;
RUN cp ./.tmux.conf ~/.tmux.conf;


RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
#
ENV PATH="/root/.cargo/bin:${PATH}"
#
# RUN apt-get install -y git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0;
#
# RUN mkdir -p $HOME/esp
# RUN git clone -b v5.4.1 --recursive https://github.com/espressif/esp-idf.git $HOME/esp/esp-idf
# RUN cd $HOME/esp/esp-idf && ./install.sh esp32 && . $HOME/esp/esp-idf/export.sh
# RUN usermod -aG dialout root
# RUN newgrp dialout
#
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
RUN rm -rf /opt/nvim
RUN tar -C /opt -xzf nvim-linux-x86_64.tar.gz

RUN git clone https://github.com/GerhardusC/neovim-config $HOME/.config/nvim
