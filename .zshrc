export LANG="en_GB.UTF-8"

export ZSH="/home/oem/.oh-my-zsh"
ZSH_THEME="minimal"

alias t='python3.7 ~/t/t.py --task-dir ./todo --list tasks'

export SSH_AUTH_SOCK="/Users/oem/.ssh/ssh_agent_socket.sock"
alias ssh-agent="ssh-agent -a /Users/oem/.ssh/ssh_agent_socket.sock"
alias ssh-add="ssh-add /Users/oem/.ssh/id_ed25519"

alias tf="terraform"

alias vim="nvim"

alias kx="kubectx"
alias kn="kubens"
alias k="kubectl"
alias ka="kubectl apply -f"
alias kd="kubectl delete"