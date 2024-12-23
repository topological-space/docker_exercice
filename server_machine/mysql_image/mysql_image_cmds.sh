#!/bin/sh

sudo docker build -t "mysql_image" .
sudo docker run -d -p 3306:3306 --name "mysql_container" "mysql_image"
sudo ufw allow 3306
