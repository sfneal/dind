#!/usr/bin/env bash

# Show Docker version
sudo docker -v

# Wait for the certbot to finish ACME challenge
sleep 15;

# Get names of docker containers with 'nginx' in name
sudo docker exec $(sudo docker ps --format {{.Names}} | grep webserver) service nginx reload