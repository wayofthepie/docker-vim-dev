from fedora:22

env HOME /root

run dnf update -y && dnf install -y vim curl git make gcc

add vimrc $HOME/.vimrc

run ls -la $HOME/ && pwd

run mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
    curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

run git clone https://github.com/Shougo/vimproc.vim.git $HOME/.vim/bundle/vimproc.vim && \
    cd $HOME/.vim/bundle/vimproc.vim && make

# Syntax highlighting for docker
run git clone https://github.com/ekalinin/Dockerfile.vim.git $HOME/.vim/bundle/Dockerfile.vim && \
    cd $HOME/.vim/bundle/Dockerfile.vim && make

