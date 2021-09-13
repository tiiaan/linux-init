#!/bin/bash
source config

# Install CLash
if [ "${CLASH}" == "1" ]; then
    sudo mkdir /opt/clash
    wget https://github.com/Dreamacro/clash/releases/download/v1.7.0/clash-linux-amd64-v1.7.0.gz
    gzip -d clash-linux-amd64-v1.7.0.gz
    sudo mv clash-linux-amd64-v1.7.0 /opt/clash/clash
    cd /opt/clash/
    sudo wget -O config.yaml [https://api.suda.cat/sub?target=clash&url=https://suda.sub.koicloud.pw/link/TbOghNtpnLvLhb9d?clash=2&new_name=true]
    sudo wget -O Country.mmdb https://www.sub-speeder.com/client-download/Country.mmdb
    chmod +x clash
    ./clash -d .
    cd ~
    gsettings set org.gnome.system.proxy mode 'manual'
    gsettings set org.gnome.system.proxy.http port 7890
    gsettings set org.gnome.system.proxy.http host '127.0.0.1'
    gsettings set org.gnome.system.proxy.socks port 7891
    gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
    gsettings set org.gnome.system.proxy ignore-hosts "['localhost', '127.0.0.0/8', '::1']"
    sudo touch /etc/systemd/system/clash.service
    sudo bash -c "echo -e "[Unit]\nDescription=clash daemon\n[Service]\nType=simple\nUser=root\nExecStart=/opt/clash/clash -d /opt/clash/\nRestart=on-failure\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/clash.service"
    sudo systemctl daemon-reload
    sudo systemctl start clash.service
    sudo systemctl enable clash.service
fi