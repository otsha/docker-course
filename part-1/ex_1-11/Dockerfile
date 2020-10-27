FROM ubuntu:16.04

WORKDIR /backend
COPY . ./

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install && npm audit fix

CMD ["npm", "start"]
