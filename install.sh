#!/bin/bash

# Add docker repos
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Add NVIDA runtime
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

# Install Dependencies
apt-get update
apt-get install -y\
    docker-ce \
    docker-ce-cli \
    containerd.io \
    nvidia-container-toolkit \
    nvidia-container-runtime

# add daemon.json
dameon_json = '{ \
    "runtimes": { \
        "nvidia": { \
            "path": "nvidia-container-runtime", \
            "runtimeArgs": [] \
        } \
    } \
}'
echo $dameon_json >> /etc/docker/daemon.json

# restart docker
systemctl restart docker
