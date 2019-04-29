#!/bin/bash

# NOTE: run this script with sudo
# 
# root commands are run like...
# apt install foo
# 
# user commands are run like...
# sudo -u ${USERNAME} normal_command

# . zsh-prezto-setup.zsh

setup_ubuntu () {
#   printf "\n\nSetting up Ubuntu system...\n"

#   # base/utils
#   apt install -y software-properties-common curl git nodejs npm ca-certificates zsh

#   # setup git
#   envsubst < ~/.dotfiles/default-gitignore.txt > /home/$USERNAME/TMP.gitconfig
#   mv /home/$USERNAME/TMP.gitconfig /home/$USERNAME/.gitconfig

#   # zsh and prezto
#   zsh_prezto_setup()

#   # ruby
#   apt-add-repository -y ppa:rael-gc/rvm
#   apt update
#   apt install -y rvm
#   usermod -a -G rvm kjs3
  
#   # Networking/VPN
#   apt install -y openconnect network-manager-openconnect network-manager-openconnect-gnome

#   # postgres
#   curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
#   add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -s -c)-pgdg main"
#   apt update
#   apt install -y postgresql pgadmin4

# node
# curl -o TEMP_nvm.sh https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh
# echo $USERNAME
  echo "testing: $USERNAME"
  sudo -u ${USERNAME} pwd #./TEMP_nvm.sh

}

export -f setup_ubuntu()
