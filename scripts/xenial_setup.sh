#!/bin/bash

sudo apt-get -y install ack-grep build-essential cmake automake gcc g++ valgrind curl vim-tiny gawk ssh libcurl4-openssl-dev openssl python-software-properties software-properties-common python3-dev python-dev git mercurial

alias vi=vim

echo -e "\nbu1 ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
echo -e "\nvm.swappiness = 5" | sudo tee -a /etc/sysctl.conf

# Configure Mercurial.
hg --config ui.editor "vim"
echo "[ui]" > ~/.hgrc
echo "username = Xiangyu Bu <xybu92@live.com>" >> ~/.hgrc
echo "verbose = True" >> ~/.hgrc
echo "editor = vim" >> ~/.hgrc
echo "" >> ~/.hgrc
echo "[extensions]" >> ~/.hgrc
echo "color =" >> ~/.hgrc
echo "purge =" >> ~/.hgrc
echo "histedit =" >> ~/.hgrc

# Configure VIM.
echo "colorscheme elflord" >> ~/.vimrc

# Configure Git.
git config --global user.name "Xiangyu Bu"
git config --global user.email "xybu92@live.com"
git config --global core.editor vim

rsync -zrvpE bu1@cap13.cs.purdue.edu:/home/bu1/.ssh /home/bu1/
rsync -zrvpE bu1@cap13.cs.purdue.edu:/home/bu1/.bashrc /home/bu1/