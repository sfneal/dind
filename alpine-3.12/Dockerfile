FROM alpine:3.12
MAINTAINER Stephen Neal <stephen@stephenneal.net>

# Container name of Nginx service
ENV container_name=webserver
ENV container_cmd=/scripts/reload.sh
ENV wait_for_container=certbot

# Update OS and install Docker client
RUN apk update && apk add \
    bash \
    docker \
    sudo

# Copy scripts
COPY ./scripts/ /scripts/

ENTRYPOINT ["bash"]
CMD ["/scripts/entrypoint.sh"]