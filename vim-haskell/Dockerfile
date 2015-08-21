from vim-common

env HOME /root
run curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/fedora/22/fpco.repo | tee /etc/yum.repos.d/fpco.repo
run dnf -y install stack
run mkdir -p $HOME/.stack/global/
add stack.yaml $HOME/.stack/global/
add haskell.vim /root/.vim/plugin/
run git clone https://github.com/eagletmt/ghcmod-vim $HOME/.vim/bundle/ghcmod-vim
run stack setup
env LANG en_IE.utf8
run git clone https://github.com/kazu-yamamoto/ghc-mod && cd ghc-mod && stack install
env PATH /root/.local/bin:$PATH
env PATH /root/.stack/programs/x86_64-linux/ghc-7.10.2/bin/:$PATH
