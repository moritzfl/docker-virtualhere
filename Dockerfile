FROM ubuntu:16.04
EXPOSE 7575:7575
VOLUME ["/data"]
RUN apt-get update
RUN apt-get install -y wget usbutils
RUN mkdir -p /data
COPY start-virtualhere.sh /etc/start-virtualhere.sh
CMD sh "/etc/start-virtualhere.sh" 
