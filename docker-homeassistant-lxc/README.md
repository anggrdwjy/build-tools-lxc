# Bash Scripting Home Assistant on Docker
Script Automation Running Home Assistant on Docker

Notes :
---------------
First Step Installing Docker on Linux
Source : [Build Tools LXC](https://github.com/anggrdwjy/build-tools-lxc)

Configuration :
---------------
Git Clone Home Assistant From Repository :
```
git clone https://github.com/anggrdwjy/build-tools-lxc
cd build-tools-lxc/docker-homeassistant-lxc
chmod -R 777 *
```

Install Home Assistant :
-----------------
```
./docker-homeassistant-lxc.sh
```

Verification :
---------------
```
docker ps -a
```

Setup Home Assistant :
---------------
Web UI Home Assistant
```
http://ip-address:8123
```
