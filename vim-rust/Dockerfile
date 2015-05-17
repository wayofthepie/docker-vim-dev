FROM vim-common

ENV SHELL /bin/bash

RUN curl -f -L https://static.rust-lang.org/rustup.sh -O && sh rustup.sh -y

# Vim setup
RUN cd ~/.vim/bundle && git clone https://github.com/rust-lang/rust.vim.git

