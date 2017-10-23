#! /bin/bash

# update apt-cache
sudo apt-get update
## apt https sources
sudo apt-get install apt-transport-https ca-certificates
## add gpg key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# add docket source
UBUNTU_CODE_NAME=$(lsb_release -c -s)
DOCKER_APT_SOURCE="deb https://apt.dockerproject.org/repo ubuntu-${UBUNTU_CODE_NAME} main"
echo "$DOCKER_APT_SOURCE" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# update apt-cache
sudo apt-get update

sudo apt-get install -y docker-engine
