from vim-common

#run dnf install -y alex happy wget cabal-install zlib1g-dev

run curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/fedora/22/fpco.repo | tee /etc/yum.repos.d/fpco.repo
run dnf -y install stack
run mkdir -p /home/dev/.stack/global/
add stack.yaml /home/dev/.stack/global/
run chown dev:dev -R /home/dev/
user dev

