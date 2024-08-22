# Bash Scripting Wordpress Package Install on Docker
Script Automation Installation and Running Wordpress Package Install on Docker Container

This Package Include MYSQL Database

Notes :
---------------
First Step Installing Docker Daemon on Linux
Source : https://github.com/anggrdwjy/docker-install-lxc

Configuration :
---------------
Git Clone Wordpress Package Install From Repository :
```
git clone https://github.com/anggrdwjy/docker-wordpress-lxc
cd docker-wordpress-lxc
chmod -R 777 *
```

Install Wordpress Package :
-----------------
```
./docker-wordpress-lxc.sh
```

Verification :
---------------
```
docker ps -a
```

Setup Wordpress :
---------------
Access Web UI
```
http://ip-address/wp-admin
```

Cloudflared Tunnel Domain Test :
---------------
Configuration Cloudflared Tunnel on Docker
```
docker run --name cont-tunnel --net=mysqlnet --restart unless-stopped -d cloudflare/cloudflared:latest tunnel --no-autoupdate run --token (token id)
```
Notes : Website So Long Time Loading 

Solutions : Enable Argo Traffic in Cloudflared

Sources : https://medium.com/@smnaqi/how-to-make-wordpress-secure-and-faster-with-argo-tunnel-ebd7ebfd05eb
