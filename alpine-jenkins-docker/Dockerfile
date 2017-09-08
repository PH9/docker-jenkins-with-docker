FROM jenkins/jenkins:alpine
USER root
# Uncomment http://dl-cdn.alpinelinux.org/alpine/edge/community
# To able to fetch docker repository
# then install it
# and add jenkins to docker user group
RUN sed -i 'http:////dl-cdn.alpinelinux.org//alpine//edge//community//s/^#//g' /etc/apk/repositories \
    && apk update \
    && apk add docker --no-cache \
    && apk add openrc --no-cache \  
    && adduser -S -g jenkins docker \
    && rc-update add docker boot
VOLUME /var/run/docker.sock
USER jenkins
MAINTAINER Wasith Theerapattrathamrong <phaicpe@gmail.com>