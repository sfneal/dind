#!/usr/bin/env bash

container_name=${1}
container_cmd=${2}

# Get names of docker containers with 'nginx' in name
container_id="$(sudo docker ps -aq --format {{.Names}} | grep ${container_name})"

# Display ID of container we're about to execute a command on
echo "Preparing to execute command on container with the ID '${container_id}'..."

# Issue reload command to nginx webserver container
sudo docker exec "${container_id}" bash "${container_cmd}"