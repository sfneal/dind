# TODO: find smaller base image
FROM ubuntu:19.10

# Container name of Nginx service
ENV nginx_container_name=webserver

# Update OS and install Docker client
RUN apt-get update \
    && apt-get install docker.io sudo -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy entrypoint and command scripts
COPY ./command.sh /scripts/command.sh

ENTRYPOINT ["bash"]
CMD ["/scripts/command.sh"]