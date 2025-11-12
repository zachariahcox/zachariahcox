#!/bin/bash
#
# Setup a new instance of WSL running ubuntu
#
# Ensure running inside WSL
if [ -z "$WSL_INTEROP" ] && [ -z "$WSL_DISTRO_NAME" ]; then
	echo "This script is intended to run inside WSL (Windows Subsystem for Linux)."
	exit 1
fi

# jump to home
cd ~ || exit 1

echo "Updating package lists and upgrading installed packages"
sudo apt update -y
sudo apt full-upgrade -y
sudo apt install -y git golang-go p7zip-full gh

# Configure Git
git config --global user.name "Zachariah Cox"
git config --global user.email "zachariahcox@gmail.com"
git config --global core.editor "code-insiders --wait"
git config --global core.excludesfile ~/.gitignore_global
git config --global color.ui auto
git config --global core.autocrlf input # use 'true' on windows

# Prepare code directory
echo "Preparing code directory"
mkdir -p ~/code && cd ~/code || exit 1


echo "Cloning repos"
gh auth login
git clone https://github.com/zachariahcox/dotfiles
git clone https://github.com/zachariahcox/zachariahcox
git clone https://github.com/zachariahcox/spells

# if setup-aliases exists, run it
if [ -f ~/code/dotfiles/setup-aliases.sh ]; then
    bash ~/code/dotfiles/setup-aliases.sh
fi