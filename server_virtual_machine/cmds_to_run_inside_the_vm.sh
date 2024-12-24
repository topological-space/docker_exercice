#!/bin/sh

sudo apt update
sudo apt install docker
sudo systemctl start docker
sudo systemctl enable docker
