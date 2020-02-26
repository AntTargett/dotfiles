#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo -e "\nCreating symlinks"
echo "=============================="

echo "Linking nvim"

ln -s ~/dotfiles/config/nvim ~/.config/nvim 

echo "Removing existing zsh file"

rm -rf ~/.zshrc 

echo "Linking new zsh file"

ln -s ~/dotfiles/zsh/zshrc.symlink ~/.zshrc
