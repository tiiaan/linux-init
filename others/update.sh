#!/bin/bash
#@author tiiaan
sudo apt autoclean -y
sudo apt clean -y
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
clear
echo "Done at $(date "+%Y-%m-%d %H:%M:%S"), have a nice day!"