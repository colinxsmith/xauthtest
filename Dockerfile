#FROM linuxmintd/mint22-amd64 AS build  
FROM debian AS build                                                                                                                                                
#FROM ubuntu:24.04 AS build
#FROM chaman72/centos9 AS build 
#FROM fedora AS build
#FROM opensuse/tumbleweed AS build
#FROM redhat/ubi9 AS build
#FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build    
#FROM alpine:edge AS build                              
#docker build -t xauthtest .
#docker run -it --net=host -e DISPLAY -v /tmp/.X11-unix xauthtest bash
RUN apt update && apt install -y gedit xauth x11-aps
#RUN apk add xauth gedit
#RUN yum update -y && yum install -y xauth gedit
#RUN zypper update -y && zypper install -y xauth gedit
#get next line from xauth list | sed -n "/lapp/s/:/:0/p" (don't forget :0)
#get this line by running cookie.sh, the cookie changes each seesion.
RUN xauth add lapper24/unix:0  MIT-MAGIC-COOKIE-1  ae749d54afd34313099db4f088c9a778
RUN xauth list

#then inside the container we can run gedit and get a window to do the editting