FROM alpine:3.9.4

# Container name of Nginx service
ENV container_name=webserver
ENV container_cmd=/scripts/reload.sh

# Update OS and install Docker client
RUN apk update && apk add \
    bash \
    docker \
    sudo

# Copy scripts
COPY ./scripts/ /scripts/

ENTRYPOINT ["bash"]
CMD ["/scripts/command.sh"]