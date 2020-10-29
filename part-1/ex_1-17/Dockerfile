FROM ubuntu:16.04

WORKDIR /Projects

# Install cURL & Git
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y git

# Install node.js 14.x LTS
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash
RUN apt install -y nodejs

# Install Gatsby CLI
RUN npm install -g gatsby-cli

# Install Netlify CLI
RUN npm install -g netlify-cli
RUN netlify --telemetry-disable
