### PATH ###

pathEntries=(
  "/home/linuxbrew/.linuxbrew/bin"
  "$HOME/.tfenv/bin"
)

for entry in ${pathEntries[@]}; do export PATH=$PATH:$entry; done

### Aliases ###

# Git
alias gits="git status"
alias gitc="git commit"

# Kubernetes
alias kc=kubectl
alias cswitch="kubectl config use-context"

# Vitess
alias vtc="vtctlclient --server=localhost:15999 --logtostderr"

# Terraform
alias tf=terraform

# Clipboard copy/paste for Linux
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


### Minds ###

export MINDSROOT=$HOME/src/gitlab.com/minds/minds

alias minds=$MINDSROOT/local/local
alias minds-front-build=$MINDSROOT/local/front-build
alias minds-ssr-build=$MINDSROOT/local/ssr-build
alias minds-ssr-serve=$MINDSROOT/local/ssr-serve


### NVM ###

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


### Cargo ###

. "$HOME/.cargo/env"