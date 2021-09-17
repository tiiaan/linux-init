#!/bin/bash
# A MOD for deep learning developers
# @link https://github.com/tiiaan/ubuntu-scaffold

source config

#Install Anaconda
if [ "${CONDA}" ]; then
    sudo apt update -y
    sudo apt install -y
fi
# Insatll TensorFlow
if [ "${TENSOR}" == "1" ]; then

fi

# Install PyTorch
if [ "${PYTORCH}" == "1" ]; then

fi
