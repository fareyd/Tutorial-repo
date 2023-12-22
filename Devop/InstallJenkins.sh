#!/bin/bash


apt update
apt-get update
apt-get install fontconfig openjdk-17-jre

wget -O /usr/share/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian/jenkins.io-2023.key


echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null





apt-get update
apt-get install jenkins -y

# Start Jenkins
systemctl start jenkins

# Enable Jenkins with systemctl
systemctl enable jenkins

# Install Git SCM
apt-get install git -y