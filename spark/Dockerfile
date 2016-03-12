############################################################
# Dockerfile to create a Spark Node
# Based on Ubuntu image
############################################################
FROM java
MAINTAINER Ivo Correia

ENV TERM linux

# Update repository and install required tools.
RUN sudo apt-get update

############################################################
# Install Spark.
WORKDIR /opt/
RUN wget http://www-us.apache.org/dist/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz
RUN tar xf spark-1.6.1-bin-hadoop2.6.tgz
RUN rm spark-1.6.1-bin-hadoop2.6.tgz
CMD /bin/bash
