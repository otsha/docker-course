FROM docker:stable-git

ARG DOCKER_LOGIN
ARG DOCKER_PASSWORD

WORKDIR /dockerizer

COPY ./dockerizer.sh .

RUN docker login -u $DOCKER_LOGIN -p $DOCKER_PASSWORD && \
    chmod u+x dockerizer.sh

ENTRYPOINT ["/bin/sh", "./dockerizer.sh"]
CMD ["src", "dest"]
