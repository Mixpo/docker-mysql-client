
FROM ubuntu:14.04

MAINTAINER Jared Markell (jaredm4@gmail.com)

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update\
    && apt-get -y install mysql-client-5.5\
    && apt-get clean\
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/mysql"]
