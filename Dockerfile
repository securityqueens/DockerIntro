FROM ubuntu:latest
MAINTAINER G1nGe

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install -y apache2

WORKDIR /var/www/html
COPY index.html .

EXPOSE 80
COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh
