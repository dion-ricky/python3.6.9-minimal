#! /bin/bash

mkdir -p python3.6.9

docker cp python3.6.9:/usr/local/bin ./python3.6.9/
docker cp python3.6.9:/usr/local/lib ./python3.6.9/
docker cp python3.6.9:/usr/local/include ./python3.6.9/
docker cp python3.6.9:/usr/local/share ./python3.6.9/
