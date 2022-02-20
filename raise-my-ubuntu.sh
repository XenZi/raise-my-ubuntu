#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install gnome-tweaks
install chrome-gnome-shell
install curl
install git
install htop
install nmap
install tree
install vim
install wget
install gimp
install jpegoptim
install optipng
install figlet
install lolcat
# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome-stable_current_amd64.deb;

#Viber
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb;
sudo apt install ./viber.deb;

for f in scripts/*.sh; do bash "$f" -H; done

sudo apt upgrade -y
sudo apt autoremove -y

cp .bashrc ~/.bashrc

figlet "Hello! Now you can use your Linux :)" | lolcat