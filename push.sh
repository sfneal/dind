#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sh "${DIR}"/build.sh

docker push stephenneal/dind:alpine-3.9.4-v1
docker push stephenneal/dind:alpine-3.9.4-v2
docker push stephenneal/dind:alpine-3.9.4-v3
docker push stephenneal/dind:alpine-3.9.4-v4
docker push stephenneal/dind:alpine-3.10-v1
docker push stephenneal/dind:ubuntu-19.10-v1