#! /bin/bash

PORT=8388
PASSWD="PASSWORD"
METHOD="aes-256-cfb"
TIMEOUT=300

SHADOWSOCKS_ARGS="-p $PORT -k $PASSWD -m $METHOD -t $TIMEOUT --fast-open"

DOCKER_IMG="tommylau/shadowsocks"

sudo docker run --name=shadowsocks -p $PORT:$PORT -d $DOCKER_IMG $SHADOWSOCKS_ARGS
