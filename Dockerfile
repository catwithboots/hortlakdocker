FROM cihatgenc/monoconsul
MAINTAINER Cihat Genc (cihat@catwithboots.com)

RUN apt-get update && apt-get -y -q install wget unzip && mkdir -p /app
WORKDIR /app
RUN wget -q https://dl.dropboxusercontent.com/u/48462121/Hortlak.zip && unzip Hortlak.zip && rm Hortlak.zip
ADD ./hortlak.conf /etc/supervisor/conf.d/hortlak.conf

EXPOSE 9000
CMD ["/usr/bin/supervisord"]