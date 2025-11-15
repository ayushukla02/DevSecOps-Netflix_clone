#!/bin/bash
# Script to install Docker


sudo apt-get update -y
sudo apt-get install docker.io -y

# Add the 'ubuntu' and 'jenkins' users to the 'docker' group to allow running Docker without sudo
sudo usermod -aG docker ubuntu 
sudo usermod -aG docker jenkins 

newgrp docker

# Set correct permissions for the Docker socket to allow 'docker' group members to access it
sudo chmod 660 /var/run/docker.sock
sudo chown root:docker /var/run/docker.sock

sudo systemctl restart docker

# Verify installation
docker --version

