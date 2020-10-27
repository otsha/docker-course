- To build the image
```
$ sudo docker build -t ex_1-11_backend .
```

- To run the container
```
$ sudo docker run -it -v $(pwd)/logs.txt:/backend/logs.txt -p 8000:8000 --name backend ex_1-11_backend
```

- The logged message
```
10/27/2020, 12:21:11 PM: Connection received in root
```
