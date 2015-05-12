############################################################
# Dockerfile to create a Cassandra Node
# Based on Ubuntu image
############################################################

FROM ubuntu
MAINTAINER Ivo Correia

ENV JAVA_HOME /opt/java/jdk1.8.0_11
ENV HOSTNAME cassandra-node

# Folder creation.
RUN mkdir /opt/java

# Update repository and install required tools.
RUN sudo apt-get update
RUN sudo apt-get -y install wget tar vim telnet

############################################################
# Install Java.
RUN wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" 'http://download.oracle.com/otn-pub/java/jdk/8u11-b12/jdk-8u11-linux-x64.tar.gz'
RUN tar xvf jdk-8u11-linux-x64.tar.gz
RUN mv jdk1.8.0_11 opt/java/
RUN rm jdk-8u11-linux-x64.tar.gz
RUN ln -s /opt/java/jdk1.8.0_11/bin/java /usr/bin/java

