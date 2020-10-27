- To build the image
```
$ sudo docker build -t ex_1-10_frontend .
```

- To run the container with the port 5000 exposed
```
$ sudo docker run -it -p 5000:5000 --name frontend ex_1-10_frontend
```
