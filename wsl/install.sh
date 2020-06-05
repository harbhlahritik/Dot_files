#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install git
install htop
install tmux
install tree
install vim
install xclip

#get java8
install openjdk-8-jdk-headless

# install papirus icons
sudo add-apt-repository ppa:papirus/papirus
install papirus-icon-theme

#install node js
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

# Fun stuff
install figlet
install lolcat