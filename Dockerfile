#FROM linuxmintd/mint22-amd64 AS build  
#FROM debian AS build                                                                                                                                                
#FROM ubuntu:24.04 AS build
#FROM chaman72/centos9 AS build 
#FROM fedora AS build
FROM opensuse/tumbleweed AS build
#FROM redhat/ubi9 AS build
#FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build    
#FROM alpine:edge AS build                              
#docker build -t xauthtest .
#docker run -it --net=host -e DISPLAY -v /tmp/.X11-unix xauthtest bash
#RUN apt-get update && apt-get install -y gedit xauth x11-apps
#RUN apk add xauth gedit
#RUN yum update -y && yum install -y xauth gedit
#RUN yum install -y xclock
RUN zypper update -y && zypper install -y xauth gedit
RUN zypper install -y xclock
#get next line from xauth list | sed -n "/lapp/s/:/:0/p" (don't forget :0)
#get this line by running cookie.sh, the cookie changes each seesion.
RUN xauth add lapper24/unix:0  MIT-MAGIC-COOKIE-1  e6c09b989082f3f85315703ec1b49f2e
RUN xauth list

#then inside the container we can run gedit and get a window to do the editting
