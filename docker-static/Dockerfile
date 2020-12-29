FROM debian:buster-slim

RUN mkdir -p /usr/share/man/man1 && \
    apt-get update && \
    apt-get install -y default-jre-headless python3 python3-pip libmariadb-dev && \
    apt-get autoremove -y &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD https://gitlab.com/crafty-controller/crafty-web/-/archive/master/crafty-web-master.tar.gz /

RUN mkdir /crafty-web && \
    mkdir /crafty_db && \
    tar -zxvf /crafty-web-master.tar.gz -C /crafty-web --strip-components=1 && \
    rm crafty-web-master.tar.gz

RUN pip3 install -r /crafty-web/requirements.txt --no-cache-dir

WORKDIR /crafty-web

EXPOSE 8000
EXPOSE 25500-25600

CMD ["python3", "crafty.py", "-c", "/crafty-web/configs/docker_config.yml"]
