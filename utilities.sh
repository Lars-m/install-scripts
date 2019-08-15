#! /usr/bin/env bash

# install programs to server that are nice to have
# echo "enter username:"
# read username # username=vagrant if on vagrant
echo "###############################################################################"
echo "###################   install and configure new shell: zsh  ###################"
echo "###############################################################################"
sudo apt install zsh
# download and install oh-my-zsh (sending contents of the page to bash via STDIN) the single dash means stdin in place of a file to write to.
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
# copy the zsh template file from oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# re-run the .zshrc configuration
source ~/.zshrc
# to change theme run 'ls -la ~/.oh-my-zsh/themes/' to see the themes and nano ~/.zshrc to edit (around line 11: ZSH_THEME="robbyrussell"). Then run: 'source ~/.zshrc'
# create aliases:
echo "alias running='sudo lsof -i'" >> ~/.zshrc # show all running processes 
source ~/.zshrc

echo "###############################################################################"
echo "###################                   install zip           ###################"
echo "###############################################################################"
sudo apt-get install -y zip

echo "###############################################################################"
echo "###################    install tree (for folder structure)  ###################"
echo "###############################################################################"
sudo apt-get install -y tree

echo "###############################################################################"
echo "###################    install docker  ###################"
echo "###############################################################################"
sudo apt-get install -y apt-transport-https ca-certificates gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io
