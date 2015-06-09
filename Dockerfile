FROM cihatgenc/monocomplete
MAINTAINER Cihat Genc (cihat@catwithboots.com)

RUN apt-get update && apt-get -y -q install wget unzip && mkdir -p /app
WORKDIR /app
RUN wget -q https://dl.dropboxusercontent.com/u/48462121/Hortlak.zip && unzip Hortlak.zip && rm Hortlak.zip

EXPOSE 9000
CMD ["/usr/bin/mono-service", "--no-daemon", "-d:/app", "/app/Hortlak.exe"]