#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Optional PLATFORM argument (if none provided, both will be built)
PLATFORM=${2:-"linux/amd64,linux/arm64"}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build & push one image
  then
    docker buildx build \
      	--push \
      	-t stephenneal/dind:"${TAG}" \
      	--platform "${PLATFORM}" \
      	"${DIR}"/"${TAG}"/

  # Build & push all images
  else
    sh "${DIR}"/build.sh

    docker push stephenneal/dind:alpine-3
    docker push stephenneal/dind:alpine-3.9.4-v1
    docker push stephenneal/dind:alpine-3.9.4-v2
    docker push stephenneal/dind:alpine-3.9.4-v3
    docker push stephenneal/dind:alpine-3.9.4-v4
    docker push stephenneal/dind:alpine-3.10
    docker push stephenneal/dind:alpine-3.12
    docker push stephenneal/dind:alpine-3.13
    docker push stephenneal/dind:alpine-3.14
    docker push stephenneal/dind:alpine-3.15
    docker push stephenneal/dind:alpine-3.16
    docker push stephenneal/dind:alpine-3.19
fi