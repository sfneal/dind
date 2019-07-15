FROM alpine:3.9.4

# Container name of Nginx service
ENV container_name=webserver
ENV container_cmd="sh /scripts/reload.sh"

# Update OS and install Docker client
RUN apk update && apk add \
    bash \
    docker \
    sudo

# Copy entrypoint and command scripts
COPY ./command.sh /scripts/command.sh

ENTRYPOINT ["bash"]
CMD ["/scripts/command.sh"]