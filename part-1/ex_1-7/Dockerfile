FROM ubuntu:16.04

WORKDIR /curler

RUN apt-get update && apt-get install -y curl
COPY curler.sh .
RUN chmod a+x curler.sh

CMD ["sh", "./curler.sh"]
