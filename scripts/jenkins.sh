#!/bin/bash
# java installation on ubuntu 

sudo apt update -y

sudo apt install fontconfig openjdk-17-jre -y

java --version

# jenkins installation on ubuntu
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y
sudo apt-get install jenkins -y 
sudo systemctl enable jenkins
sudo systemctl start jenkins

sudo systemctl status jenkins

echo "Jenkins installation completed."
echo "Access Jenkins at http:<IP Address>:8080"