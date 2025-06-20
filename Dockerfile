FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean

COPY inetisolir/ /var/www/html

EXPOSE 80
CMD [ "apachectl" , "-D", "FOREGROUND" ]