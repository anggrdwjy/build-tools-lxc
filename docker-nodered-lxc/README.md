# Bash Scripting NodeRED on Docker
Script Automation Installation and Running NodeRED on Docker Container

Notes :
---------------
First Step Installing Docker Daemon on Linux
Source : https://github.com/anggrdwjy/docker-install-lxc

Configuration :
---------------
Git Clone NodeRED From Repository :
```
git clone https://github.com/anggrdwjy/docker-nodered-lxc
cd docker-nodered-lxc
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
