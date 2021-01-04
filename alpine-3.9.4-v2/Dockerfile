FROM alpine:3.9.4
MAINTAINER Stephen Neal <stephen@stephenneal.net>

# Container name of Nginx service
ENV nginx_container_name=webserver

# Update OS and install Docker client
RUN apk update && apk add \
    bash \
    docker \
    sudo

# Copy entrypoint and command scripts
COPY ./command.sh /scripts/command.sh

ENTRYPOINT ["bash"]
CMD ["/scripts/command.sh"]