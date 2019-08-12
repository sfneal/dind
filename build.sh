#!/usr/bin/env bash

docker build -t stephenneal/dind:alpine-3.9.4-v1 ./alpine-3.9.4-v1/
docker build -t stephenneal/dind:alpine-3.9.4-v2 ./alpine-3.9.4-v2/
docker build -t stephenneal/dind:alpine-3.9.4-v3 ./alpine-3.9.4-v3/
docker build -t stephenneal/dind:alpine-3.9.4-v4 ./alpine-3.9.4-v4/
docker build -t stephenneal/dind:alpine-3.10-v1 ./alpine-3.10-v1/
docker build -t stephenneal/dind:ubuntu-19.10-v1 ./ubuntu-19.10-v1/