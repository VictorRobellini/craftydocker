FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /usr/share/man/man1 && \
    apt-get update && \
    apt-get install -y wget default-jre-headless python3 python3-pip libmariadb-dev openjdk-16-jre-headless && \
    apt-get autoremove -y &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /crafty-web && \
    mkdir /crafty_db 

WORKDIR /crafty-web

COPY ./docker/crafty.sh /

EXPOSE 8000
EXPOSE 25500-25600

CMD ["/crafty.sh"]
