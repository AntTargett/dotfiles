#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo -e "\nCreating symlinks"
echo "=============================="

# Add nvim file

echo "Removing existing zsh file"

rm -rf ~/.zshrc 

echo "Linking new zsh file"

ln -s ~/dotfiles/zsh/zshrc.symlink ~/.zshrc
