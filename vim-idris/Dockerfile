FROM vim-common

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y alex happy wget cabal-install zlib1g-dev libtinfo-dev

RUN cabal update && cabal install cabal-install-1.20.0.6

RUN cd /var/tmp && wget https://www.haskell.org/ghc/dist/7.8.4/ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2

RUN cd /var/tmp && tar xjvf ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2

RUN cd /var/tmp && cd ghc-7.8.4 && sh configure && make install && \
    rm -rf ghc-7.8.4 ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2

RUN LANG=C.UTF-8 cabal install idris

RUN cd ~/.vim/bundle && git clone https://github.com/idris-hackers/idris-vim.git
