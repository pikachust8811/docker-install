#!/usr/bin/env bash

##################################################################################
# Install using the repository                                                   #
##################################################################################

# SET UP THE REPOSITORY
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

# x86_64 / amd64
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
# SET UP THE REPOSITORY

# INSTALL DOCKER CE
sudo apt-get update

sudo apt-get install docker-ce -y

# Install Compose on Linux systems
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# Test the installation
docker-compose --version