#!/usr/bin/env bash

cd /
wget https://gitlab.com/crafty-controller/crafty-web/-/archive/master/crafty-web-master.tar.gz 
tar -zxvf /crafty-web-master.tar.gz -C /crafty-web --strip-components=1 
rm crafty-web-master.tar.gz

pip3 install -r /crafty-web/requirements.txt --no-cache-dir

cd /crafty-web
python3 /crafty-web/crafty.py -c /crafty-web/configs/docker_config.yml
