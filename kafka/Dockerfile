############################################################
# Dockerfile to create a Kafka Node
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
# Install Java.
RUN wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" 'http://download.oracle.com/otn-pub/java/jdk/8u11-b12/jdk-8u11-linux-x64.tar.gz'
RUN tar xvf jdk-8u11-linux-x64.tar.gz
RUN mv jdk1.8.0_11 opt/java/
RUN rm jdk-8u11-linux-x64.tar.gz
RUN ln -s /opt/java/bin/java /usr/bin/java

############################################################
# Install Kafka.
WORKDIR /opt/
RUN wget http://shinyfeather.com/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz
RUN tar xf kafka_2.11-0.9.0.1.tgz
RUN rm kafka_2.11-0.9.0.1.tgz
WORKDIR /opt/kafka_2.11-0.9.0.1
CMD bin/zookeeper-server-start.sh -daemon config/zookeeper.properties && bin/kafka-server-start.sh config/server.properties
