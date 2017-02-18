FROM phusion/baseimage:latest
EXPOSE 7575:7575
RUN apt-get update
RUN apt-get install -y wget && apt-get install -y usbutils && apt-get install -y nano
RUN mkdir /data
COPY rc.local /etc/rc.local
