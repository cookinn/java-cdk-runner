FROM node:latest

# Install CDK.
RUN npm install -g aws-cdk

# Install Java.
RUN apk add openjdk11 
