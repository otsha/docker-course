- The script is a simple shell script that clones a git repository, builds it and pushes it to docker hub.

- The dockerfile is based on the stable docker image with git included
```
$ docker pull docker:stable-git
```

- Docker Hub login credentials should be given as arguments at build time:
```
$ docker build -t dockerizer
    --build-arg DOCKER_LOGIN=<your-docker-username>
    --build-arg DOCKER_PASSWORD=<your-docker-password>
    .
```
- ***EXTREMELY IMPORTANT:*** Your credentials will be saved to docker history, so anyone accessing the image can see them!!

- Finally, you should be able to run the tool by providing a URL to a git repository that contains a dockerfile and the target repository as arguments.
- To let the docker daemon actually run inside the container and perform build & pull operations, you need to mount ```docker.sock```
```
$ docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock dockerizer <git-repo-url-here.git> <destination-repo-user>/<destination-repo-name>
```

- This whole setup could be a lot more secure and usable if
  - User credentials were asked every time the image is executed rather than at build time
  - The script created a new directory for every cloned repository so that the container would be reusable rather than having to destroy it or manually enter it to remove the ```src``` directory.
