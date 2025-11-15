#!/bin/bash
# Script to install SonarQube on an instance
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community