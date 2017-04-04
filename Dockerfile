#################################
# madoos/node-dind #
#################################

FROM jpetazzo/dind

MAINTAINER Maurice Dominguez <maurice.ronet.dominguez@gmail.com>

ENV DOCKER_COMPOSE_VERSION 1.11.2

# Install Docker Compose
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get install -y nodejs

# Expose port 3000
EXPOSE 3000

CMD []
