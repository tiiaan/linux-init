#!/bin/bash
# A script tool to quickly initialize your brand new ubuntu system, making it fully furnished.
# @author tiiaan
# @link https://github.com/tiiaan/ubuntu-scaffold
source config

# Change Source
Version = $(cat /etc/issue |sed -n "1,1p"| awk '{print $2}'|cut -d '.' -f 1,2)
if [ "${CH_SRC}" == "1" ]; then
    if [ "${Version}" == "20.04" ]; then
        sudo cp /etc/apt/sources.list /etc/apt/sources_backup.list
        sudo cp ./mirrors/aliyun-2004.list /etc/apt/sources.list
    fi
    sudo apt autoclean
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt autoremove -y
    CH_SRC_FLAG=1
    CH_SRC_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install Git
if [ "${GIT}" == "1" ]; then
    sudo apt install -y git
    git --version
    git config --global user.name "${GIT_USER}"
    git config --global user.email "${GIT_EMAIL}"
    git config --list
    GIT_FLAG=1
    GIT_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install SSH
if [ "${SSH}" == "1" ]; then
    sudo apt install -y ssh
    SSH_FLAG=1
    SSH_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install Pip
if [ "${PIP}" == "1" ]; then
    sudo apt install -y python3-pip
    pip --version
    PIP_FLAG=1
    PIP_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install Node.js
if [ "${NODE}" == "1" ]; then
    sudo apt install -y nodejs
    echo "node: `sudo node -v`"
    NODE_FLAG=1
    NODE_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install NPM
if [ "${NPM}" == "1" ]; then
    sudo apt install -y npm
    sudo npm config set registry https://registry.npm.taobao.org
    sudo npm config list
    sudo npm install npm@latest -g -y
    sudo npm install -g n
    sudo n latest
    echo "npm: `sudo npm -v`"
    NPM_FLAG=1
    NPM_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install LateX Env.
if [ "${TEX}" == "1" ]; then
    sudo apt update -y
    sudo apt install -y texlive-full
    tex --version
    TEX_FLAG=1
    TEX_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install Visual Studio Code
if [ "${VSCODE}" == "1" ]; then
    sudo apt install -y software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt install -y code
    VSCODE=1
    VSCODE_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

if [ "${PYCHARM}" == "1" ]; then
    sudo snap install pycharm-community --classic
    PYCHARM_FLAG=1
    PYCHARM_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install Typora
if [ "${TYPORA}" == "1" ]; then
    wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
    sudo add-apt-repository -y 'deb https://typora.io/linux ./'
    sudo apt install -y typora
    TYPORA_FLAG=1
    TYPORA_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install OpenJDK
if [ "${JDK}" == "1" ]; then
    sudo apt update -y
    sudo apt install -y openjdk-11-jdk
    java -version   
    sudo apt autoremove -y
    JDK_FLAG=1
    JDK_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install IDEA
if [ "${IDEA}" == "1" ]; then
    sudo snap install intellij-idea-community --classic
    IDEA_FLAG=1
    IDEA_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install Chrome
if [ "${CHROME}" == "1" ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install -y ./google-chrome-stable_current_amd64.deb
    CHROME_FLAG=1
    CHROME_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install CLash
# if [ "${CLASH}" == "1" ]; then
#     sudo mkdir /opt/clash
#     wget https://github.com/Dreamacro/clash/releases/download/v1.7.0/clash-linux-amd64-v1.7.0.gz
#     gzip -d clash-linux-amd64-v1.7.0.gz
#     sudo mv clash-linux-amd64-v1.7.0 /opt/clash/clash
#     cd /opt/clash/
#     sudo wget -O config.yaml https://api.suda.cat/sub?target=clash&url=https://suda.sub.koicloud.pw/link/TbOghNtpnLvLhb9d?clash=2&new_name=true
#     sudo wget -O Country.mmdb https://www.sub-speeder.com/client-download/Country.mmdb
#     chmod +x clash
#     ./clash -d .
#     cd ~
#     gsettings set org.gnome.system.proxy mode 'manual'
#     gsettings set org.gnome.system.proxy.http port 7890
#     gsettings set org.gnome.system.proxy.http host '127.0.0.1'
#     gsettings set org.gnome.system.proxy.https port 7890
#     gsettings set org.gnome.system.proxy.https host '127.0.0.1'
#     gsettings set org.gnome.system.proxy.socks port 7891
#     gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
#     gsettings set org.gnome.system.proxy ignore-hosts "['localhost', '127.0.0.0/8', '::1']"
#     sudo touch /etc/systemd/system/clash.service
#     sudo bash -c "echo -e "[Unit]\nDescription=clash daemon\n[Service]\nType=simple\nUser=root\nExecStart=/opt/clash/clash -d /opt/clash/\nRestart=on-failure\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/clash.service"
#     sudo systemctl daemon-reload
#     sudo systemctl start clash.service
#     sudo systemctl enable clash.service
# fi

# Install Nomacs
if [ "${NOMACS}" == "1" ]; then
    sudo add-apt-repository ppa:nomacs/stable
    sudo apt update -y
    sudo apt install -y nomacs
    NOMACS_FLAG=1
    NOMACS_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install VLC
if [ "${VLC}" == "1" ]; then
    sudo apt update -y
    sudo apt install -y vlc
    VLC_FLAG=1
    VLC_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Install PicGo
if [ "${PICGO}" == "1" ]; then
    sudo npm install picgo -g
    # sudo picgo install super-prefix
    # sudo picgo install gitee-uploader
    PICGO_FLAG=1
    PICGO_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove Firefox Web Browser 
if [ "${RM_FIREFOX}" == "1" ]; then
    sudo apt remove -y --purge firefox
    sudo apt autoremove -y
    RM_FIREFOX_FLAG=1
    RM_FIREFOX_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove Games
if [ "${RM_GAMES}" == "1" ]; then
    sudo apt remove -y --purge gnome-sudoku
    sudo apt remove -y --purge gnome-mines
    sudo apt remove -y --purge gnome-mahjongg
    sudo apt remove -y --purge aisleriot
    sudo apt autoremove -y
    RM_GAMES_FLAG=1
    RM_GAMES_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove Libre
if [ "${RM_LIBRE}" == "1" ]; then
    sudo apt remove -y --purge libreoffice-common
    sudo apt autoremove -y
    RM_LIBRE_FLAG=1
    RM_LIBRE_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove Rhythmbox
if [ "${RM_RHYTHM}" == "1" ]; then
    sudo apt remove -y --purge rhythmbox
    sudo apt autoremove -y
    RM_RHYTHM_FLAG=1
    RM_RHYTHM_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove ToDo
if [ "${RM_TODO}" == "1" ]; then
    sudo apt remove -y --purge gnome-todo
    sudo apt autoremove -y
    RM_TODO_FLAG=1
    RM_TODO_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove Calendar
if [ "${RM_CALENDAR}" == "1" ]; then
    sudo apt remove -y --purge gnome-calendar
    sudo apt autoremove -y
    RM_CALENDAR_FLAG=1
    RM_CALENDAR_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove Shotwell
if [ "${RM_SHOTWELL}" == "1" ]; then
    sudo apt remove -y --purge shotwell
    sudo apt autoremove -y
    RM_SHOTWELL_FLAG=1
    RM_SHOTWELL_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

# Remove Totem
if [ "${RM_TOTEM}" == "1" ]; then
    sudo apt remove -y --purge totem
    sudo apt autoremove -y
    RM_TOTEM_FLAG=1
    RM_TOTEM_TIME=$(date "+%Y-%m-%d %H:%M:%S")
fi

clear

echo -e "Successfully execute the following commands:" | tee init.log
if [ "${CH_SRC_FLAG}" == "y" ]; then
    echo -e "- Source was changed to ${MIRROR} at ${CH_SRC_TIME}." | tee -a init.log
fi

if [ "${GIT_FLAG}" == "1" ]; then
    echo -e "- Git was installed at ${GIT_TIME}." | tee -a init.log
fi

if [ "${SSH_FLAG}" == "1" ]; then
    echo -e "- SSH was installed at ${SSH_TIME}." | tee -a init.log
fi

if [ "${PIP_FLAG}" == "1" ]; then
    echo -e "- PIP was installed at ${PIP_TIME}." | tee -a init.log
fi

if [ "${NODE_FLAG}" == "1" ]; then
    echo -e "- Node.js was installed at ${NODE_TIME}." | tee -a init.log
fi

if [ "${NPM_FLAG}" == "1" ]; then
    echo -e "- NPM was installed at ${NPM_TIME}." | tee -a init.log
fi

if [ "${TEX_FLAG}" == "1" ]; then
    echo -e "- Texlive was installed at ${TEX_TIME}." | tee -a init.log
fi

if [ "${VSCODE_FLAG}" == "1" ]; then
    echo -e "- Visual Studio Code was installed at ${VSCODE_TIME}." | tee -a init.log
fi

if [ "${TYPORA_FLAG}" == "1" ]; then
    echo -e "- Typora was installed at ${TYPORA_TIME}." | tee -a init.log
fi

if [ "${JDK_FLAG}" == "1" ]; then
    echo -e "- JDK was installed at ${JDK_TIME}." | tee -a init.log
fi

if [ "${IDEA_FLAG}" == "1" ]; then
    echo -e "- IntelliJ IDEA was installed at ${IDEA_TIME}." | tee -a init.log
fi

if [ "${CHROME_FLAG}" == "1" ]; then
    echo -e "- Chrome web browser was installed at ${CHROME_TIME}." | tee -a init.log
fi

if [ "${NOMACS}" == "1" ]; then
    echo -e "- Nomacs was installed at ${NOMACS_TIME}." | tee -a init.log
fi

if [ "${VLC}" == "1" ]; then
    echo -e "- VLC media player was installed at ${VLC_TIME}." | tee -a init.log
fi

if [ "${PICGO_FLAG}" == "1" ]; then
    echo -e "- PicGo was installed at ${PICGO_TIME}." | tee -a init.log
fi

if [ "${RM_FIREFOX_FLAG}" == "1" ]; then
    echo -e "- Firefox web browser was uninstalled at ${RM_FIREFOX_TIME}." | tee -a init.log
fi

if [ "${RM_GAMES_FLAG}" == "1" ]; then
    echo -e "- Gnome games were uninstalled at ${RM_GAMES_TIME}." | tee -a init.log
fi

if [ "${RM_LIBRE_FLAG}" == "1" ]; then
    echo -e "- Libreoffice was uninstalled at ${RM_LIBRE_TIME}." | tee -a init.log
fi

if [ "${RM_RHYTHM_FLAG}" == "1" ]; then
    echo -e "- Rhythmbox music player was uninstalled at ${RM_RHYTHM_TIME}." | tee -a init.log
fi

if [ "${RM_TODO_FLAG}" == "1" ]; then
    echo -e "- ToDo was uninstalled at ${RM_TODO_TIME}." | tee -a init.log
fi

if [ "${RM_CALENDAR_FLAG}" == "1" ]; then
    echo -e "- Calendar was uninstalled at ${RM_CALENDAR_TIME}." | tee -a init.log
fi

if [ "${RM_SHOTWELL_FLAG}" == "1" ]; then
    echo -e "- Shotwell was uninstalled at ${RM_SHOTWELL_TIME}." | tee -a init.log
fi

if [ "${RM_TOTEM_FLAG}" == "1" ]; then
    echo -e "- Totem media player was uninstalled at ${RM_TOTEM_TIME}." | tee -a init.log
fi

