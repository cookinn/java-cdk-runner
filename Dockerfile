FROM node:latest

RUN apt update && apt upgrade -y

# Install CDK
RUN npm install -g aws-cdk

# Install AWS CLI
apt-get install awscli

# Install Java
RUN apt-get install openjdk-11-jdk -y && apt-get install maven -y 
