FROM node:latest

RUN sudo apt update && sudo apt upgrade -y

# Install CDK
RUN npm install -g aws-cdk

# Install Java
RUN apt-get install openjdk-11-jdk 
