alias hs='history | grep'
alias myip="curl http://ipecho.net/plain; echo"

#To use neovim
alias vim='nvim'

#Docker
alias dc='docker-compose'    # invoke docker-compose, which takes too long to type.
alias d="docker"

# Git Aliases
alias gl="git pull"
alias gp="git push"
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gac="git add . && git commit -a -m "
alias gcl="git clone" 


#NPM Aliases 
alias nis="npm install --save "
alias nisd="npm install --save-dev"
alias nu="npm uninstall"

# MISC
alias unzip="tar -xf" #Always forget unzipping -.-
alias md="mkdir -p"
alias s="sudo"

# Ssh alias
alias sshWetrade="ssh -i ~/.ssh/iris_ssh_key root@wetrade-res-dlt-interop.sl.cloud9.ibm.com"
alias sshTradles="ssh -i ~/.ssh/iris_ssh_key root@tradelens.sl.cloud9.ibm.com" 

# tmux aliases - credit nwaywood :P 
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tnt='tmux new-session -s'
alias tkt='tmux kill-session -t'
