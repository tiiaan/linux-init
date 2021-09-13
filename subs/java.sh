#!/bin/bash
source config

# Install OpenJDK
if [ "${JDK}" == "1" ]; then
    sudo apt update
    sudo apt install -y openjdk-11-jdk
    java -version   
    sudo apt auto remove -y
    JDK_FLAG=1
    JDK_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install IDEA
if [ "${IDEA}" == "1" ]; then
    sudo snap install intellij-idea-community --classic
    IDEA_FLAG=1
    IDEA_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

clear
echo -e "Successfully execute the following commands:" | tee init.log
if [ "${JDK_FLAG}" == "1" ]; then
    echo -e "- JDK was installed at ${JDK_TIME}." | tee -a init.log
fi
if [ "${IDEA_FLAG}" == "1" ]; then
    echo -e "- IntelliJ IDEA was installed at ${IDEA_TIME}." | tee -a init.log
fi