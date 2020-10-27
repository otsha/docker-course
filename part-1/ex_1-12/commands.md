- To build the images (commands performed within their respective directories)
```
$ sudo docker build -t ex_1-12_front .
$ sudo docker build -t ex_1-12_back .
```

- To run the containers
```
$ sudo docker run -d -p 5000:5000 --name front ex_1-12_front
$ sudo docker run -d -v $(pwd)/logs.txt:/backend/logs.txt -p 8000:8000 --name back ex_1-12_back
```
