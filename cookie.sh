#/usr/bin/bash
kkk=$(xauth list | sed -n "/lapp/s/:/:0/p")
sed -i "/xauth add/s|add .*|add $kkk|" Dockerfile
sed -n "/xauth add/p" Dockerfile