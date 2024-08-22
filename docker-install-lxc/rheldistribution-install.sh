#!/bin/bash
#author : Anggarda Saputra Wijaya. anggarda.wijaya@outlook.com. github.com/anggardawjy
#version : 0.1
#about : Support Centos 9 Stream, Rocky Linux 9, Almalinux docker-ce install
sudo dnf install nano -y
sudo dnf install curl -y
sudo dnf update -y
sudo dnf install -y yum-utils device-mapper-persistent-data lvm2
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf repolist -v
sudo dnf list docker-ce --showduplicates | sort -r
sudo dnf install -y docker-ce --nobest
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

