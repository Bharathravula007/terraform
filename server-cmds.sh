#!/usr/bin/env bash
export DOCKER_USER=$1
export DOCKER_PWD=$2
echo $DOCKER_PWD | docker login -u $DOCKER_USER --password-stdin
docker pull ravikumarmanchi/terraform:latest
docker images
docker run -itd -p 80:80 --name terraform ravikumarmanchi/terraform:latest
docker ps
