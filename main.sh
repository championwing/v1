#!/bin/sh

wget "https://github.com/championwing/v1/raw/main/v1.zip"
unzip -d v1 v1.zip 
cd v1
docker build -t wu:v1.0 .
docker run -p 443:443 -v /data:/data -it wu
