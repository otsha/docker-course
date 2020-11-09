FROM docker:stable-git

ARG DOCKER_LOGIN
ARG DOCKER_PASSWORD

WORKDIR /dockerizer

COPY ./dockerizer.sh .

RUN chmod u+x dockerizer.sh

ENTRYPOINT ["/bin/sh", "./dockerizer.sh"]
CMD ["src", "dest"]
