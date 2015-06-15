# mesos-master
#
# VERSION               0.22.1
FROM ubuntu:14.04

MAINTAINER Ankur Chauhan ankur@malloc64.com

# Install Mesos
ONBUILD RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
ONBUILD RUN echo "deb http://repos.mesosphere.io/ubuntu trusty main" > /etc/apt/sources.list.d/mesosphere.list
ONBUILD RUN apt-get -y update
ONBUILD RUN apt-get -y install mesos=0.22.1-1.0.ubuntu1404

USER root
EXPOSE 5050

ENTRYPOINT ["/usr/local/sbin/mesos-master"]
