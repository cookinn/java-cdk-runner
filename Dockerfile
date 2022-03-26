FROM node:latest

RUN apt update && apt upgrade -y

# Install CDK
RUN npm install -g aws-cdk

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip
./aws/install

# Install Java
RUN apt-get install openjdk-11-jdk -y && apt-get install maven -y 
