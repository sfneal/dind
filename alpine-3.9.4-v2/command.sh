#!/usr/bin/env bash

# Show Docker version
sudo docker -v

# TODO: replace with check to see if certbot container has stopped
# Wait for the certbot to finish ACME challenge
sleep 15;

# Get names of docker containers with 'nginx' in name
container_id="$(sudo docker ps -aqf "name=${nginx_container_name}")"

# Issue reload command to nginx webserver container
sudo docker exec "${container_id}" sh /scripts/reload.sh