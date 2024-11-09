# Proxmox Virtual Environment 7.4 Setup

Update Repository :
---------------
```
root@bayfront-pve:~# rm /etc/apt/sources.list.d/pve-enterprise.list

root@bayfront-pve:~# nano /etc/apt/sources.list
deb http://ftp.debian.org/debian bullseye main contrib
deb http://ftp.debian.org/debian bullseye-updates main contrib
deb http://security.debian.org bullseye-security main contrib
deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription

root@bayfront-pve:~# nano /etc/apt/sources.list.d/ceph.list
deb http://download.proxmox.com/debian/ceph-quincy bullseye main
```

Verification :
---------------
```
root@bayfront-pve:~# apt update
Get:1 http://ftp.debian.org/debian bullseye InRelease [116 kB]
Get:2 http://security.debian.org bullseye-security InRelease [27.2 kB]
Get:3 http://ftp.debian.org/debian bullseye-updates InRelease [44.1 kB]
Get:4 http://ftp.debian.org/debian bullseye/main amd64 Packages [8,066 kB]
Get:5 http://security.debian.org bullseye-security/main amd64 Packages [280 kB]
Get:6 http://security.debian.org bullseye-security/main Translation-en [177 kB]                                     
Hit:7 http://download.proxmox.com/debian/pve bullseye InRelease                                             
Hit:8 http://download.proxmox.com/debian/ceph-quincy bullseye InRelease   
Get:9 http://ftp.debian.org/debian bullseye/main Translation-en [6,235 kB]
Fetched 14.9 MB in 7s (2,179 kB/s)                                                                                              
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
153 packages can be upgraded. Run 'apt list --upgradable' to see them.
N: Repository 'http://ftp.debian.org/debian bullseye InRelease' changed its 'Version' value from '11.10' to '11.11'
root@bayfront-pve:~# 
```

Remove Proxmox Subscription :
---------------
```
#Working Directory
cd /usr/share/javascript/proxmox-widget-toolkit

#Create Backup
cp proxmoxlib.js proxmoxlib.js.bak

#Edit Proxmox Lib
nano proxmoxlib.js

#Edit Lib
checked_command: function(orig_cmd) {
    orig_cmd();
    return;

#Restart PVE PROXY
systemctl restart pveproxy.service
```

SSH Configuration Linux Container / VPS :
---------------
```
#SSH Permit Login
nano /etc/ssh/sshd_config
PermitRootLogin Yes
Port 21112 <- Custom Port SSH

#Verification
systemctl restart sshd
systemctl status sshd
```

# Bash Scripting Install Docker
Script Install Docker CE for Linux Container / VPS 

Recommended Linux Container : 
---------------
- Ubuntu 22.04
- Debian 10
- Centos 9 Stream
- Rocky Linux 9
- Almalinux 9

Install GIT (Optional) :
---------------
```
#Ubuntu 22.04 / Debian 10
sudo apt install git -y

#Centos 9 Stream / Rocky Linux 9/ Almalinux 9
sudo dnf install git -y 
```

GIT Clone Docker From Repository :
---------------
```
git clone https://github.com/anggrdwjy/build-tools-lxc
cd build-tools-lxc
chmod -R 777 *
```

Install Docker :
-----------------
```
#Debian
./debian-install.sh

#Ubuntu
./ubuntu-install.sh              

#Centos 9 Stream / Rocky Linux 9/ Almalinux 9
./rheldistribution-install.sh
```

Verification :
---------------
```
root@ubuntu:~# systemctl status docker
* docker.service - Docker Application Container Engine
     Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2024-08-09 02:08:44 UTC; 41min ago
TriggeredBy: * docker.socket
       Docs: https://docs.docker.com
   Main PID: 172 (dockerd)
      Tasks: 24
     Memory: 96.5M
        CPU: 2.942s
```

Docker Command :
---------------
```
#Check Container List
docker container ls

#Running All Container
docker start $(docker ps -a -q)

#Stop Container
docker container stop (CONTAINER_NAME)

#Delete Container
docker container rm (CONTAINER_NAME)

#Start Container
docker container start (CONTAINER_NAME)

#Remote Container
docker exec -t -i (CONTAINER_NAME) /bin/bash
```

