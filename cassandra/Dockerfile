############################################################
# Dockerfile to create a Cassandra Node
# Based on Ubuntu image
############################################################
FROM java
MAINTAINER Ivo Correia

ENV TERM linux

# Folder creation.
RUN mkdir /opt/java

# Update repository and install required tools.
RUN sudo apt-get update

############################################################
# Install Cassandra.
RUN echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
RUN curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
RUN sudo apt-get update
RUN sudo apt-get -y install dsc22 cassandra=2.2.5 cassandra-tools=2.2.5
RUN sudo service cassandra stop
RUN sudo rm -rf /var/lib/cassandra/data/system/*

CMD service cassandra start && /bin/bash
