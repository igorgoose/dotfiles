#!/bin/bash

# update and upgrate apt packages
sudo apt update && sudo apt upgrade -y

# install git
sudo apt install -y git-all

sudo apt install -y snap

xargs -a .apt_packages sudo apt-get install

find installations/*.sh -exec chmod +x {} \;

find installations/*.sh -exec {} \;

chmod +x sync.sh

git submodule --init --recursive

./sync.sh
