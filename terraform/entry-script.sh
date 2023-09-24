#!/bin/bash
sudo apt-get update && sudo apt install docker.io -y
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
