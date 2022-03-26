FROM node:latest

RUN apt update && apt upgrade -y

# Install AppArmor. This is required by the containers.
RUN apt install apparmor

# Install CDK
RUN npm install -g aws-cdk

# Install AWS CLI
RUN apt-get install awscli -y

# Install Java
RUN apt-get install openjdk-11-jdk -y && apt-get install maven -y 
