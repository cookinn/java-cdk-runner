FROM node:latest

RUN apt update && apt upgrade -y

# Install CDK
RUN npm install -g aws-cdk

# Install AWS CLI
RUN apt-get install awscli -y

# Install Java
RUN apt-get install openjdk-11-jdk -y && apt-get install maven -y

# Install Docker
# See https://docs.docker.com/engine/install/ubuntu/
RUN apt-get install ca-certificates curl gnupg lsb-release -y

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get install docker-ce docker-ce-cli containerd.io -y
