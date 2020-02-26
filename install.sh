#!/bin/bash


echo "Symlinking dotfiles"
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
	echo "Brewing all the things"
	source install/brew.sh
fi

echo "Done!"
