############################################################
# Dockerfile to create a RabbitMQ Node
# Based on Ubuntu image
############################################################
FROM ubuntu
MAINTAINER Ivo Correia

ENV JAVA_HOME /opt/java/
ENV TERM linux

# Update repository and install required tools.
RUN sudo apt-get update
RUN sudo apt-get -y install wget vim telnet curl

############################################################
# Install RabbitMQ.
WORKDIR /opt/
RUN wget https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
RUN sudo apt-key add rabbitmq-signing-key-public.asc
RUN sudo apt-get -y install rabbitmq-server
CMD service rabbitmq-server start && /bin/bash
