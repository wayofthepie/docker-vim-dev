from vim-common

env SHELL /bin/bash
run dnf update -y && dnf install -y file tar
run curl -f -L https://static.rust-lang.org/rustup.sh -O 
run sed 's/sudo//g' rustup.sh > rustup.sh.tmp && mv -f rustup.sh.tmp rustup.sh 
run sh rustup.sh -y

# Vim setup
run cd ~/.vim/bundle && git clone https://github.com/rust-lang/rust.vim.git

# Setup racer
run cd /var/tmp && git clone https://github.com/phildawes/racer.git
run cd /var/tmp/racer; cargo build --release
run git clone https://github.com/rust-lang/rust
env RUST_SRC_PATH ./rust/src
