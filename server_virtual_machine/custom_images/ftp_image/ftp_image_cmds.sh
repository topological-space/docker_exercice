#!/bin/sh

sudo docker build -t "ftp_image" .
sudo docker run -d -p 21:21 -p 20:20 -p 30000-30009:30000-3000 --name "ftp_container" "ftp_image"
#sudo ufw allow 21
