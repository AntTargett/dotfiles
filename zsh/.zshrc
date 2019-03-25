
ZSH_THEME="ant"
plugins=(
    git,
    cask,
    brewk,
    asdf,
    aterminal
):

source $ZSH/oh-my-zsh.sh



# add .local to PATH (haskell binaries go here)
export PATH=$HOME/.local/bin:$PATH

export DOTFILES=$HOME/.dotfiles


# add /usr/local/sbin
if [[ -d /usr/local/sbin ]]; then
	export PATH=/usr/local/sbin:$PATH
fi


# load .zsh files
for file ($DOTFILES/zsh/*.zsh) source $file



# NVM  EXPORT
 export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"
#GO EXPORT
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# added by Miniconda3 installer
export PATH="/Users/atargett/miniconda3/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/atargett/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/atargett/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/atargett/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/atargett/google-cloud-sdk/completion.zsh.inc'; fi

