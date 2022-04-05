FROM node:latest

RUN apt update && apt upgrade -y

# Install CDK
RUN npm install -g aws-cdk

# Install AWS CLI
RUN apt-get install awscli -y

# Install Java
RUN apt-get install openjdk-11-jdk -y && apt-get install maven -y

# Install Docker
# See https://stackoverflow.com/questions/61401626/docker-installation-failed-on-ubuntu-20-04-ltsvmware
sudo apt-get install -y docker.io
