#!bin/sh

SOURCE=$1
DEST=$2

docker -v && \
git --version && \
git clone $SOURCE project && \
docker build -t $DEST ./src && \
docker push $DEST
