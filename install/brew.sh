#!bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo "Installing homebrew packages..."


brew install git
brew install zsh
brew install tree
brew install jq
brew install fzf
brew install yarn

# Languages 
echo "Installing language support"
brew install go
brew install node

brew install haskell-stack
brew install python 

brew install neovim

echo "Installing applications"
brew cask install iterm2
brew cask install visual-studio-code


# zsh setup
if ! command -v zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s $(which zsh)
fi

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# NVM 
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash

