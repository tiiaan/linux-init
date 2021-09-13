#!/bin/bash
# A script tool to quickly initialize your brand new ubuntu system, making it fully furnished.
# @author tiiaan
# @link https://github.com/tiiaan/ubuntu-scaffold
source config

# Change Source
VERSION = $(cat /etc/issue |sed -n "1,1p"| awk '{print $2}'|cut -d '.' -f 1,2)
if [ "${CH_SRC}" == "1" ]; then
    if["${VERSION}" == "20.04"]; then
        echo
    
    sudo apt autoclean
    sudo apt clean
    sudo apt update
    sudo apt upgrade -y
    sudo apt autoremove -y
fi

# Install Git
if [ "${GIT}" == "1" ]; then
    sudo apt install -y git
    git --version
    git config --global user.name "${GIT_USER}"
    git config --global user.email "${GIT_EMAIL}"
    git config --list
fi

# Install SSH
if [ "${SSH }" == "1" ]; then
    sudo apt install -y ssh
fi

# Install Pip
if [ "${PIP}" == "1" ]; then
    sudo apt install -y python3-pip
fi

# Install Visual Studio Code
if [ "${VSCODE}" == "1" ]; then
    sudo apt install -y software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt install -y code
fi

# Install Typora
if [ "${TYPORA}" == "1" ]; then
    wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
    sudo add-apt-repository -y 'deb https://typora.io/linux ./'
    sudo apt install -y typora
fi

# Install OpenJDK
if [ "${JDK}" == "1" ]; then


# Install IDEA
if [ "${IDEA}" == "1" ]; then


# Install CLash
if [ "${CLASH}" == "1" ]; then
    mkdir ~/.config/clash
    wget https://github.com/Dreamacro/clash/releases/download/v1.7.0/clash-linux-amd64-v1.7.0.gz
    sudo apt install -y gzip
    gzip -d clash-linux-amd64-v1.7.0.gz
    mv clash-linux-amd64-v1.7.0.gz ~/.config/clash/clash
    cd ~/.config/clash
    chmod +x clash
    ./clash

fi

# Install Chrome
if [ "${CHROME}" == "1" ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install -y ./google-chrome-stable_current_amd64.deb
fi

# Install PicGo
if [ "${PICGO}" == "1" ]; then

fi

# Install Python Models
if [ "${PY_MODEL}" == "1" ]; then
    pip install -r -y requirements.txt
fi