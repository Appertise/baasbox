FROM appertise/oracle-jdk8
MAINTAINER Appertise <appertise.co@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y                             && \
    apt-get install software-properties-common -y && \
    apt-get install -y wget                       && \
    apt-get install -y unzip
RUN wget http://www.baasbox.com/download/baasbox-stable.zip && \
    unzip -o baasbox-stable.zip && \
    mv baasbox*/ /opt/baasbox && \
    rm /opt/baasbox/start && \
    mkdir -p /var/data/baasbox

EXPOSE 9000

VOLUME /var/data/baasbox

COPY start /opt/baasbox/

ENTRYPOINT /opt/baasbox/start
