#!/bin/bash
sudo apt-get update && sudo apt-get install -y docker
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock