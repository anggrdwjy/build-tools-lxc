# Bash Scripting Wordpress Package Install on Docker
Script Installation and Running Wordpress Package Install on Docker Container. This Package Include MYSQL Database

Notes :
---------------
First Step Installing Docker on Linux
Source : [Build Tools LXC](https://github.com/anggrdwjy/build-tools-lxc)

Configuration :
---------------
```
#GIT Clone From Repository
git clone https://github.com/anggrdwjy/build-tools-lxc
cd build-tools-lxc/docker-wordpress-lxc
chmod -R 777 *
```

Install and Configuration Wordpress :
-----------------
```
#Install Wordpress
./docker-wordpress-lxc.sh

#Verification Docker
docker ps -a

#Wordpress Admin
http://ip-address/wp-admin
```

Configuration Cloudflared Tunnel :
---------------
```
docker run --name cont-tunnel --net=mysqlnet --restart unless-stopped -d cloudflare/cloudflared:latest tunnel --no-autoupdate run --token (token id)
```

Notes : Website So Long Time Loading 

Solutions : Enable Argo Traffic in Cloudflared

Sources : https://medium.com/@smnaqi/how-to-make-wordpress-secure-and-faster-with-argo-tunnel-ebd7ebfd05eb
