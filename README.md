# Proxmox Virtual Environment 7.4 Setup
Update Repository :
---------------
nano /etc/apt/sources.list
```
deb http://ftp.debian.org/debian bullseye main contrib
deb http://ftp.debian.org/debian bullseye-updates main contrib
deb http://security.debian.org bullseye-security main contrib
deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription
```
nano /etc/apt/sources.list.d/ceph.list
```
deb http://download.proxmox.com/debian/ceph-quincy bullseye main
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

Configuration :
---------------
Install Git (Optional)

For Ubuntu 22.04 / Debian 10
```
sudo apt install git -y
```
For Centos 9 Stream / Rocky Linux 9/ Almalinux 9
```
sudo dnf install git -y 
```

Git Clone Docker CE From Repository :
```
git clone https://github.com/anggrdwjy/build-tools-lxc
cd build-tools-lxc
chmod -R 777 *
```

Install Docker :
-----------------
For Debian
```
./debian-install.sh
```
For Ubuntu
```
./ubuntu-install.sh              
```
For Centos 9 Stream / Rocky Linux 9/ Almalinux 9
```
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

