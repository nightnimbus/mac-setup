# Oh My zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export PATH=/Users/victor/code/k8s-infrastructure/outputs/ssh/scripts/victor.maille:$PATH
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/Users/victor/code/developers-local-setup/scripts"
export PATH="$PATH:/Users/victor/code/k8s-infrastructure/outputs/ssh/scripts/victor.maille"
export KUBECONFIG="$HOME/.kube/config:$HOME/.kube/dev-dev-cluster:$HOME/.kube/prod-prod-cluster"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export XDG_CONFIG_HOME="$HOME/.config"

# Terminal Application Search
ff() {
    aerospace list-windows --all | fzf --bind 'enter:execute(aerospace focus --window-id {1})+abort'
}
