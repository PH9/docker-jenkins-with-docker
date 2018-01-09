FROM jenkins/jenkins
USER root
RUN wget -qO- https://get.docker.com | sh && addgroup jenkins docker
VOLUME /var/run/docker.sock
USER jenkins
LABEL maintainer="Wasith Theerapattrathamrong <phaicpe@gmail.com>"
