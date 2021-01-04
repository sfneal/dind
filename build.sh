#!/usr/bin/env bash

# Base directory containing source code
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ -z "$TAG" ]

  # Only build one image
  then
    docker build -t stephenneal/dind:"${TAG}" "${DIR}"/"${TAG}"/

  # Build all images
  else
    docker build -t stephenneal/dind:alpine-3.9.4-v1 "${DIR}"/alpine-3.9.4-v1/
    docker build -t stephenneal/dind:alpine-3.9.4-v2 "${DIR}"/alpine-3.9.4-v2/
    docker build -t stephenneal/dind:alpine-3.9.4-v3 "${DIR}"/alpine-3.9.4-v3/
    docker build -t stephenneal/dind:alpine-3.9.4-v4 "${DIR}"/alpine-3.9.4-v4/
    docker build -t stephenneal/dind:alpine-3.10-v1 "${DIR}"/alpine-3.10-v1/
    docker build -t stephenneal/dind:alpine-3.12-v1 "${DIR}"/alpine-3.12-v1/
fi