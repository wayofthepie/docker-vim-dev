from vim-common

env SHELL /bin/bash
run dnf update -y && dnf install -y file tar
run curl -f -L https://static.rust-lang.org/rustup.sh -O && sh rustup.sh -y

# Vim setup
run cd ~/.vim/bundle && git clone https://github.com/rust-lang/rust.vim.git

