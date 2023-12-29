#! /usr/bin/env zsh

echo "Do you want to play rocks-paper-scissors? [y/n]"
read -p "Play game? " answer

case $answer in
   [yY]* ) 
       python3 rocks-paper-scissors.py
       ;;
   [nN]* ) 
       echo "Okay, maybe next time."
       ;;
   * ) echo "Invalid input, please enter 'y' or 'n'.";;
esac