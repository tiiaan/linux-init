#!/bin/bash
source config

# Install Git
if [ "${GIT}" == "1" ]; then
    sudo apt install -y git
    git --version
    git config --global user.name "${GIT_USER}"
    git config --global user.email "${GIT_EMAIL}"
    git config --list
    echo "-------------------- Git Installed --------------------"
fi

# Install SSH
if [ "${SSH}" == "1" ]; then
    sudo apt install -y ssh
    # ssh-keygen -t rsa -C "${GIT_EMAIL}"
    echo "-------------------- SSH Installed --------------------"
fi