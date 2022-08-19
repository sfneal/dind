#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build & push one image
  then
    sh "${DIR}"/build.sh "${TAG}"
    docker push stephenneal/dind:"${TAG}"

  # Build & push all images
  else
    sh "${DIR}"/build.sh

    docker push stephenneal/dind:alpine-3.9.4-v1
    docker push stephenneal/dind:alpine-3.9.4-v2
    docker push stephenneal/dind:alpine-3.9.4-v3
    docker push stephenneal/dind:alpine-3.9.4-v4
    docker push stephenneal/dind:alpine-3.10-v1
    docker push stephenneal/dind:alpine-3.12-v1
    docker push stephenneal/dind:alpine-3.13-v1
    docker push stephenneal/dind:alpine-3.14-v1
    docker push stephenneal/dind:alpine-3.15-v1
    docker push stephenneal/dind:alpine-3.16-v1
fi