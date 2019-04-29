#!/bin/bash

. ubuntu.sh

echo "testing: $USERNAME"
sudo -u ${USERNAME} pwd #./TEMP_nvm.sh


PS3='What are we setting up?: '
options=("Ubuntu" "Arch" "MacOS" "Exit")
select opt in "${options[@]}"
do
  case $opt in
    "Ubuntu")
      setup_ubuntu
      break
      ;;
    "Arch")
      echo "Sorry, go read the wiki. That's the Arch way!"
      ;;
    "MacOS")
      echo "Sorry, I don't do that yet."
      ;;
    "Exit")
      break
      ;;
    *) echo "invalid option $REPLY";;
  esac
done
