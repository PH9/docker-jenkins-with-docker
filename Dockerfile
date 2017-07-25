FROM jenkins
USER root
RUN wget -qO- https://get.docker.com | sh && addgroup jenkins docker
VOLUME /var/run/docker.sock
USER jenkins
MAINTAINER Wasith Theerapattrathamrong <phaicpe@gmail.com>
