FROM ubuntu:latest
#docker build -t xauthtest .
#docker run -it --net=host -e DISPLAY -v /tmp/.X11-unix xauthtest bash
RUN apt update && apt install -y gedit xauth
#get next line from xauth list | sed -n "/lapp/s/:/:0/p" (don't forget :0)
RUN xauth add lapper24/unix:0  MIT-MAGIC-COOKIE-1  b72d6042dbdeeb12752383452967266f
RUN xauth list

#then inside the cotainer we can run gedit and get a window to do the editting