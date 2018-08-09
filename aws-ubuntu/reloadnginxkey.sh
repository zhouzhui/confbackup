#! /bin/bash

USER="ubuntu"
DOMAIN="aws.dhf.im"
cert_file="/home/${USER}/.acme.sh/${DOMAIN}/fullchain.cer"
key_file="/home/${USER}/.acme.sh/${DOMAIN}/${DOMAIN}.key"

sudo cp -f $cert_file /etc/nginx/ssl/fullchain.pem
sudo cp -f $key_file /etc/nginx/ssl/privatekey.pem
sudo service nginx restart
