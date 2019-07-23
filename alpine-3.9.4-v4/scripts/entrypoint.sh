#!/usr/bin/env bash

# Show Docker version
sudo docker -v

# TODO: replace with check to see if certbot container has stopped
# Wait for the certbot to finish ACME challenge
while true; do
    sleep 2
    is_waitfor_container_running=$(sh /scripts/is_running.sh)
    if [[ ${is_waitfor_container_running} == false ]]; then
        break
    else
        echo "${wait_for_container} is still running... waiting 2 secs then checking again..."
    fi
done
sleep 30;

# Execute Docker command on each container
for cn in ${container_name}; do
    sh /scripts/exec-cmd.sh ${cn} ${container_cmd}
done

sleep 60;

# Execute Docker command on each container
for cn in ${container_name}; do
    sh /scripts/exec-cmd.sh ${cn} ${container_cmd}
done

# Keep alive for a minute
sleep 60;