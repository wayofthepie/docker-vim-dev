FROM vim-common

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y alex happy wget cabal-install zlib1g-dev

RUN cd /var/tmp && wget https://www.haskell.org/ghc/dist/7.8.4/ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2

RUN cd /var/tmp && tar xjvf ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2

RUN cd /var/tmp && cd ghc-7.8.4 && sh configure && make install && \
    rm -rf ghc-7.8.4 ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2

RUN cabal update && cabal install cabal-install-1.20.0.6 && \
    export LANG=C.UTF-8 && cabal install ghc-mod-5.2.1.2

RUN git clone https://github.com/eagletmt/ghcmod-vim /root/.vim/bundle/ghcmod-vim

RUN mkdir /root/.vim/plugin 
ADD haskell.vim /root/.vim/plugin/
