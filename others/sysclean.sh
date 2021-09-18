#!/bin/bash
#@author tiian
sudo apt autoclean -y
sudo apt clean -y
sudo apt autoremove -y
cd ~/.local/share/Trash/files
rm -rf *