#!/usr/bin/env bash

docker pull ravikumarmanchi/terraform:latest
docker images
docker run -itd -p 80:80 --name terraform ravikumarmanchi/terraform:latest
docker ps
