# Docker container for DellEMC Storage Manager 2018 R1.20 Linux Client

If you want to run DellEMC Storage Manager inside Docker container, you have come to the right place.

# Pre-requisite

- Ubuntu 18.04
- Docker 19.03.2 

# Pulling this Repository

```
git clone https://github.com/collabnix/docker-dsmclient
```

# Building the Docker Image

```
docker build -t ajeetraina/dsmclient .
```

Assuming you build with the tag dsmclient, and XQuartz is installed with remote connections enabled:

```
$ xhost +$YOURIP
```

```
$ docker run --rm -it -e DISPLAY=$YOURIP:0 ajeetraina/dsmclient
```

![My Image](https://github.com/collabnix/docker-dsmclient/blob/master/images/image1.png)
![My Image](https://github.com/collabnix/docker-dsmclient/blob/master/images/image2.png)
![My Image](https://github.com/collabnix/docker-dsmclient/blob/master/images/image3.png)
![My Image](https://github.com/collabnix/docker-dsmclient/blob/master/images/image4.png)

If you want to retain your settings between sessions, make sure ~/.config/dell exists
Then, change the docker command to:

$ docker run --rm -it -e DISPLAY=$YOURIP:0 -v ~/.config/dell:/root/.config/dell dsmclient
