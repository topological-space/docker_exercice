#!/bin/sh

sudo docker build -t "ftp_image" .
sudo docker run -d -p 21:21 --name "ftp_container" "ftp_image"
sudo ufw allow 21
