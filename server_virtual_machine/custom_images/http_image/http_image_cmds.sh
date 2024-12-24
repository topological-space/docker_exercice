#!/bin/sh

sudo docker build -t "http_image" .
sudo docker run -d -p 80:80 --name "http_container" "http_image"
#sudo ufw allow 80
