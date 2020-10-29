- When initially trying to run the built container I got an error about a missing JavaScript runtime. To fix the error, I added back in the commented-out dependency ```mini-racer``` (on line 17 within the ```Gemfile```). Even with this configuration, I could not get the application to run in ```production``` mode (due to something about credentials) - but as I'm not at all familiar with ruby, I'm content with being able to open it in a browser in ```development``` mode.

- To build the image
```
$ sudo docker build -t ex_1-14 .
```

- To run the container
```
$ sudo docker run -it --rm -p 3000:3000 ex_1-14
```
