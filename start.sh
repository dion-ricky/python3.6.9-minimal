#! /bin/bash

docker run --name python3.6.9-minimal \
-p 8080:8080 \
-itd python-minimal:3.6.9
