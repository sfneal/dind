#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker build -t stephenneal/dind:alpine-3.9.4-v1 "${DIR}"/alpine-3.9.4-v1/
docker build -t stephenneal/dind:alpine-3.9.4-v2 "${DIR}"/alpine-3.9.4-v2/
docker build -t stephenneal/dind:alpine-3.9.4-v3 "${DIR}"/alpine-3.9.4-v3/
docker build -t stephenneal/dind:alpine-3.9.4-v4 "${DIR}"/alpine-3.9.4-v4/
docker build -t stephenneal/dind:alpine-3.10-v1 "${DIR}"/alpine-3.10-v1/
docker build -t stephenneal/dind:alpine-3.12-v1 "${DIR}"/alpine-3.12-v1/
docker build -t stephenneal/dind:ubuntu-19.10-v1 "${DIR}"/ubuntu-19.10-v1/