Dockerfile for building a container with the Dell Storage Manager 2016 R3.1 Linux Client

I did this so I could run the Linux fat client on a Mac

Assuming you build with the tag dsmclient, and XQuartz is installed with remote connections enabled:

$ xhost +$YOURIP

$ docker run --rm -it -e DISPLAY=$YOURIP:0 dsmclient

![My Image](https://github.com/collabnix/docker-dsmclient/blob/master/images/image1.png)

If you want to retain your settings between sessions, make sure ~/.config/dell exists
Then, change the docker command to:

$ docker run --rm -it -e DISPLAY=$YOURIP:0 -v ~/.config/dell:/root/.config/dell dsmclient
