#!/usr/bin/env bash

# Show Docker version
sudo docker -v
sleep 20

# Wait for the certbot to finish ACME challenge
while true; do
    if [[ $(sh /scripts/is_running.sh) == false ]]; then
        break
    else
        echo "${wait_for_container} is still running... waiting 5 secs then checking again..."
        sleep 5
    fi
done

# Execute Docker command on each container
for cn in ${container_name}; do
    sh /scripts/exec-cmd.sh ${cn} ${container_cmd}
done