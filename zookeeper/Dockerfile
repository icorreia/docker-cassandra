############################################################
# Dockerfile to create a Zookeeper Node
# Based on Ubuntu image
############################################################
FROM java
MAINTAINER Ivo Correia

ENV TERM linux

# Update repository and install required tools.
RUN sudo apt-get update

############################################################
# Install Zookeeper.
WORKDIR /opt/
RUN sudo apt-get -y install zookeeperd
CMD service zookeeper start && /bin/bash
