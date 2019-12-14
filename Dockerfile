FROM openjdk:8u181-jdk as builder

RUN apt-get update && apt-get install -y wget perl


RUN wget http://apache-mirror.8birdsvideo.com/incubator/druid/0.16.1-incubating/apache-druid-0.16.1-incubating-bin.tar.gz && \
    tar -xvf apache-druid-0.16.1-incubating-bin.tar.gz && \
    rm -rf /apache-druid-0.16.1-incubating/hadoop-dependencies && \
    rm apache-druid-0.16.1-incubating-bin.tar.gz

WORKDIR /apache-druid-0.16.1-incubating/bin/
EXPOSE 8888