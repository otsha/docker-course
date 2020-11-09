FROM docker:stable-git

WORKDIR /dockerizer

COPY ./dockerizer.sh .

RUN chmod u+x dockerizer.sh

ENTRYPOINT ["/bin/sh", "./dockerizer.sh"]
CMD ["src", "dest"]
