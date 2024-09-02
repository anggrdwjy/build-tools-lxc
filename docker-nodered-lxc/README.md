# Bash Scripting NodeRED on Docker
Script Installation and Running NodeRED on Docker Container

Notes :
---------------
First Step Installing Docker on Linux
Source : [Build Tools LXC](https://github.com/anggrdwjy/build-tools-lxc)

Configuration :
---------------
Git Clone NodeRED From Repository :
```
git clone https://github.com/anggrdwjy/build-tools-lxc
cd build-tools-lxc/docker-nodered-lxc
chmod -R 777 *
```

Install NodeRED :
-----------------
```
./docker-nodered-lxc.sh
```

Verification :
---------------
```
docker ps -a
```

Setup NodeRED :
---------------
Access Web UI
```
http://ip-address:1880
```
