#!/usr/bin/env bash

container_name=${1}
container_cmd=${2}

while true; do
    # Get names of docker containers with 'nginx' in name
    container_id="$(sudo docker ps -aq --format {{.Names}} | grep ${container_name})"

    # Confirm that the container_id is not empty
    if [[ ${#container_id} == 0 ]]; then
        # Try removing the '-' char to resolve the container ID
        container_name=${container_name//-}
    else
        break
    fi
done

# Check to see that the container is running before executing command
if [[ $(sh /scripts/is_running.sh ${container_name}) == true ]]; then
    echo "Preparing to execute command on container with the ID '${container_id}'..."

    # Issue reload command to nginx webserver container
    sudo docker exec "${container_id}" bash "${container_cmd}"
else
    echo "Skipping command execution on container with the ID '${container_id}' because it is not running..."
fi