#!/usr/bin/env bash

# Wait for the certbot to finish ACME challenge
sleep 15;

# Get names of docker containers with 'nginx' in name
sudo docker exec $(sudo docker ps --format {{.Names}} | grep nginx) service nginx reload