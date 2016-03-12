############################################################
# Dockerfile to create a Kafka Node
# Based on Ubuntu image
############################################################
FROM java
MAINTAINER Ivo Correia

ENV TERM linux

# Update repository and install required tools.
RUN sudo apt-get update

############################################################
# Install Kafka.
WORKDIR /opt/
RUN wget http://shinyfeather.com/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz
RUN tar xf kafka_2.11-0.9.0.1.tgz
RUN rm kafka_2.11-0.9.0.1.tgz
WORKDIR /opt/kafka_2.11-0.9.0.1
CMD bin/kafka-server-start.sh config/server.properties
