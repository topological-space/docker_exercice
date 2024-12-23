#!/bin/sh

sudo docker build -t "http_image" .
sudo docker run -d -p 5050:5050 --name "http_container" "http_image"
