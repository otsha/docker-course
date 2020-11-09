# Dockerizer

## What's this about?

- The script is a simple shell script that clones a git repository, builds it and pushes it to docker hub.

- The dockerfile is based on the stable docker image with git included
```
$ docker pull docker:stable-git
```

## Usage

Once built, you should be able to run the tool by providing:
  - A name for your project
  - A URL to a git repository that contains a dockerfile
  - A target repository

To let the docker daemon actually run inside the container and perform docker operations, you also need to mount ```docker.sock```. To push the built image, you will be asked to input your docker credentials.

```
$ docker run -it
    -v /var/run/docker.sock:/var/run/docker.sock
    dockerizer
      <desired-directory-name>
      <git-repo-url-here.git>
      <destination-repo-user>/<destination-repo-name>
```

**Note:** If the ```docker push``` operation fails even though your login was successful, you may need to create the destination repository on Docker Hub first.
