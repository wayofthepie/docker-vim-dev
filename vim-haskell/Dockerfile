FROM vim-common

ENV HOME /root
RUN echo "fastestmirror=true" >> /etc/dnf/dnf.conf
RUN curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/fedora/22/fpco.repo |\ 
    tee /etc/yum.repos.d/fpco.repo

RUN dnf info stack && dnf -y install stack
RUN mkdir -p $HOME/.stack/global/
ADD stack.yaml $HOME/.stack/global/
ADD haskell.vim /root/.vim/plugin/
RUN git clone https://github.com/eagletmt/ghcmod-vim $HOME/.vim/bundle/ghcmod-vim
RUN stack setup
ENV LANG en_IE.utf8
RUN stack path
RUN git clone https://github.com/kazu-yamamoto/ghc-mod &&\
    cd ghc-mod &&\
    git checkout v5.4.0.0 &&\
    stack install 
RUN rm -rf ghc-mod 

ENV PATH /root/.local/bin:$PATH
ENV PATH /root/.stack/programs/x86_64-linux/ghc-7.10.2/bin/:$PATH
