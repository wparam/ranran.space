#!/usr/bin/env bash
version=1.0
service=yr_ui

docker build -f Dockerfile -t $service:$version .

docker run -it -d -p 80:3000 $service:$version
