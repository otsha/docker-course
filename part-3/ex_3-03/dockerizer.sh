#!bin/sh

NAME=$1
SOURCE=$2
DEST=$3

git clone $SOURCE $NAME && \
docker build -t $DEST ./$NAME && \
docker login && \
docker push $DEST
