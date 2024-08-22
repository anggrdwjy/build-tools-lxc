#!/bin/bash
#author : Anggarda Saputra Wijaya. anggarda.wijaya@outlook.com. github.com/anggardawjy
#version : 0.1
#about : emqx install 
docker run -d --name emqx -p 18083:18083 -p 1883:1883 emqx:latest
docker update --restart unless-stopped emqx

