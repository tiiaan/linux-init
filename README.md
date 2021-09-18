### How to

Download and open `/linux-scaffold` in terminal:

```shell
cp -r ./ubuntu_init.sh config mirrors ~/
cd ~
chmod +x ubuntu_init.sh
./ubuntu_init.sh
```

### Config Options

- `CH_SRC`   Replace sources.list with domestic mirrors. (boolean)

- `MIRROR`   Choose a mirror(aliyun/tsinghua/huawei/ustc), matters only when change_src is true. (string)

- `GIT`   Install git. (boolean)

- `GIT_USER`   Your git user name, matters only when git is true. （string)

- `GIT_EMAIL`   Your git user email, matters only when git is true. (string)

- `SSH`   Install ssh. (boolean)

- `PIP`   Install python-pip. (boolean)

- `NODE`   Install Node.js. (boolean)

- `NPM`   Install NPM. (boolean)

- `VSCODE`   Install VSCode. (boolean)

- `PYCHARM`   Install PyCharm. (boolean) 

- `TYPORA`   Install markdown editor Typora. (boolean)

- `JDK`   Install OpenJDK. (boolean)

- `IDEA`   Install IDEA. (boolean)

- `CHROME`   Install chrome web browser. (boolean)

- `NOMACS`   Install nomacs. (boolean)

- `VLC`   Install VLC media player. (boolean)

- `PICGO`   Install and deploy clash for VPN connect. (boolean)

- `RM_FIREFOX`   Remove firefox web browser. (boolean)

- `RM_GAMES`   Remove gnome-games. (boolean)

- `RM_LIBRE`   Remove libreoffice. (boolean)

- `RM_RHYTHM`   Remove rhythmbox music player. (boolean)

- `RM_TODO`   Remove ToDo. (boolean)

- `RM_CALENDAR`   Remove calendar. (boolean)

- `RM_SHOTWELL`   Remove shotwell. (boolean)

- `RM_TOTEM`   Remove totem video player. (boolean)