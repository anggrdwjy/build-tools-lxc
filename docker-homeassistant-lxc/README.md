# Bash Scripting Home Assistant on Docker
Script Automation Running Home Assistant on Docker

Notes :
---------------
First Step Installing Docker Daemon on Linux
Source : https://github.com/anggrdwjy/docker-install-lxc

Configuration :
---------------
Git Clone Home Assistant From Repository :
```
git clone https://github.com/anggrdwjy/docker-homeassistant-lxc
cd docker-homeassistant-lxc
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
Access Web UI
```
http://ip-address:8123
```
