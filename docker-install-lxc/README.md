# Bash Scripting Docker Install
Script Automation Install Docker CE for Linux Container LXC

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
git clone https://github.com/anggrdwjy/docker-install-lxc
cd docker-install-lxc
chmod -R 777 *
```
Example on Ubuntu LXC :
```
root@ubuntu:~# ls -l
total 4
drwxr-xr-x 3 root root 4096 Aug  9 02:01 docker-install-lxc
root@ubuntu:~# cd docker-install-lxc/
root@ubuntu:~/docker-install-lxc# chmod -R 777 *
root@ubuntu:~/docker-install-lxc# 
root@ubuntu:~/docker-install-lxc# ls -l
total 16
-rwxrwxrwx 1 root root 821 Aug  9 02:01 README.md
-rwxrwxrwx 1 root root 653 Aug  9 02:01 debian-install.sh
-rwxrwxrwx 1 root root 614 Aug  9 02:01 rheldistribution-install.sh
-rwxrwxrwx 1 root root 832 Aug  9 02:01 ubuntu-install.sh
root@ubuntu:~/docker-install-lxc#
```

Running Docker Install :
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

