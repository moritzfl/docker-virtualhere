ARG base_image=balenalib/raspberry-pi-debian:latest
FROM $base_image
EXPOSE 7575:7575
VOLUME ["/data"]
RUN apt-get update
RUN apt-get install -y wget usbutils
RUN mkdir -p /data
COPY start-virtualhere.sh /etc/start-virtualhere.sh
CMD sh "/etc/start-virtualhere.sh" 
