#!/bin/bash
#author : Anggarda Saputra Wijaya. anggarda.wijaya@outlook.com. github.com/anggardawjy
#version : 0.1
#about : nodered docker
docker run -it -p 1880:1880 -v node_red_data:/data --name nodered nodered/node-red
docker update --restart unless-stopped nodered
