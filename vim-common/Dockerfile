from fedora:22

run dnf update -y && dnf install -y vim curl git make gcc

run mkdir -p /home/dev && groupadd -r dev && useradd -r -d /home/dev -g dev dev && chown dev:dev /home/dev

run mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

run git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/bundle/vimproc.vim && \
    cd ~/.vim/bundle/vimproc.vim && make

# Syntax highlighting for docker
run git clone https://github.com/ekalinin/Dockerfile.vim.git ~/.vim/bundle/Dockerfile.vim && \
    cd ~/.vim/bundle/Dockerfile.vim && make

