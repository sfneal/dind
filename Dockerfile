FROM ubuntu:16.04

# Container name of Nginx service
ENV nginx-container-name=nginx

# Update OS and install Docker client
RUN apt-get update && apt-get install docker.io sudo -y

# Copy entrypoint and command scripts
COPY ./command.sh /scripts/command.sh

ENTRYPOINT ["bash"]
CMD ["/scripts/command.sh"]