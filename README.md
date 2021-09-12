### How to
a script tool to quickly initialize your brand new ubuntu system, making it fully furnished

```
chmod a+x init_ubuntu.sh
./init_ubuntu.sh
```

### Config Options

- `ch_src`   Replace sources.list with domestic mirrors. (boolean)

- `mirror`   Choose a mirror(aliyun/tsinghua/huawei/ustc), matters only when change_src is true. (a/t/h/u)

- `time`   Change time zone to CST(Shanghai, China) if you want. (boolean)

- `git`   Install git. (boolean)

- `git_user`   Your git user name, matters only when git is true.

- `git_pass`   Your git password, matters only when git is true.

- `ssh`   Install ssh, generate key under /home/.ssh. (boolean)

- `vscode`   Install VSCode. (boolean)

- `vim`

- `typora`

- `jdk`   Install OpenJDK. (boolean)

- `idea`   Install IDEA. (boolean)

- `tensorflow`

- `pytorch`

- `py_com`   Install general python models. (boolean)

- `py_dl`   Install commonly used py models for deep learning, contains all in py_com. (boolean)

- `clash`   Install and deploy clash for VPN connect. (boolean)

- `clash_sub`   Your own subscription link for clash, matters only when clash is true.

- `chrome`

- `del_firefox`

- `del_libre`

- `del_games`

- `del_todo`

- `del_rhythmbox`

- `del_`
