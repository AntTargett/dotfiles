#!bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo "Installing homebrew packages..."


brew install git
brew install git-lfs
brew install zsh
brew install tree
brew install jq
brew install fzf
brew install yarn
brew install maven
brew install nvm

echo "Installing Java Support"
brew install jenv
brew install java
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk12
brew install --cask adoptopenjdk8

# Languages 
echo "Installing language support"
brew install go
brew install node

brew install haskell-stack
brew install python 

brew install neovim

echo "Installing applications"
brew install iterm2 --cask
brew install visual-studio-code --cask
brew install --cask postman
brew install --cask spotify
brew install --cask rectangle

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


