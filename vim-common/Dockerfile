FROM ubuntu:14.10

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install -y vim curl git make gcc

RUN mkdir -p /root/.vim/autoload /root/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

RUN git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/bundle/vimproc.vim && \
    cd ~/.vim/bundle/vimproc.vim && make

# Syntax highlighting for docker
RUN git clone https://github.com/ekalinin/Dockerfile.vim.git ~/.vim/bundle/Dockerfile.vim && \
    cd ~/.vim/bundle/Dockerfile.vim && make

ADD vimrc /etc/vim/vimrc.local
