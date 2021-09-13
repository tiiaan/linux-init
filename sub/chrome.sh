#!/bin/bash
source config

# Install Chrome
if [ "${CHROME}" == "1" ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install -y ./google-chrome-stable_current_amd64.deb
fi