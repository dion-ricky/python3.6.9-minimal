#! /bin/bash
cd "$(dirname "$0")"

docker build . -t python-minimal:3.6.9
