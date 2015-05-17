FROM vim-common

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y alex happy wget cabal-install zlib1g-dev

RUN cd /var/tmp && wget https://www.haskell.org/ghc/dist/7.10.1/ghc-7.10.1-x86_64-unknown-linux-deb7.tar.bz2

RUN cd /var/tmp && tar xjvf ghc-7.10.1-x86_64-unknown-linux-deb7.tar.bz2

RUN cd /var/tmp && cd ghc-7.10.1 && sh configure && make install && \
    rm -rf ghc-7.10.1 ghc-7.10.1-x86_64-unknown-linux-deb7.tar.bz2

RUN cabal update && cabal install cabal-install-1.22.4.0 

RUN export LANG=C.UTF-8 && git clone https://github.com/kazu-yamamoto/ghc-mod && cd ghc-mod && cabal install 

RUN git clone https://github.com/eagletmt/ghcmod-vim /root/.vim/bundle/ghcmod-vim

RUN mkdir /root/.vim/plugin 

ENV PATH ~/.cabal/bin:$PATH

ADD haskell.vim /root/.vim/plugin/
