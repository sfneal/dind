#!/usr/bin/env bash

# Show Docker version
sudo docker -v

# TODO: replace with check to see if certbot container has stopped
# Wait for the certbot to finish ACME challenge
sleep 60;

# Execute Docker command on each container
for cn in ${container_name}; do
    sh /scripts/exec-cmd.sh ${cn} ${container_cmd}
done

# Keep alive for a minute
sleep 60;