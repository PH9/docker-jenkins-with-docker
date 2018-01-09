FROM jenkins/jenkins:2.101-alpine
USER root
RUN apk update \
    && apk add docker --no-cache \
    && apk add openrc --no-cache \
    && addgroup jenkins docker \
    && rc-update add docker boot

VOLUME /var/run/docker.sock
USER jenkins
LABEL maintainer="Wasith Theerapattrathamrong <phaicpe@gmail.com>"
