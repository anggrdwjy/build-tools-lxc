#!/bin/bash
#author : Anggarda Saputra Wijaya. anggarda.wijaya@outlook.com. github.com/anggardawjy
#version : 0.1
#about : homeassistant docker
docker volume create homeassistant_data
docker run -d --name homeassistant -p 8123:8123 --net=bridge -e TZ=Asia/Jakarta -v /homeassistant_data:/config ghcr.io/home-assistant/home-assistant:stable
docker update --restart unless-stopped homeassistant
