#!/bin/bash
#author : Anggarda Saputra Wijaya. anggarda.wijaya@outlook.com. github.com/anggardawjy
#version : 0.1
#about : docker shellinabox
docker run -d -p 21112:21112 -p 23332:23332 -e 
SIAB_USER=shellina -e 
SIAB_PASSWORD=baseball -e 
SIAB_HOME=/home/shellina -e SIAB_SSL=false -e 
SIAB_SUDO=true  sspreitzer/shellinabox:latest

#docker run -d -p [PORT:PORT] -p [PORT:PORT] -e 
#SIAB_USER=[USERNAME] -e 
#SIAB_PASSWORD=[PASSWORD] -e 
#SIAB_HOME=/home/[USER_DIRECTORY] -e SIAB_SSL=false -e 
#SIAB_SUDO=true sspreitzer/shellinabox:latest
