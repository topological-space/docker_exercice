#!/bin/sh

sudo docker build -t "ftp_image" .
sudo docker run -d -p 8080:21 --name "ftp_container" "ftp_image"
