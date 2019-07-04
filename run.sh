#!/bin/sh

sudo apt update
sudo apt git docker.io -y
git clone https://github.com/nzer/Shadow
cd Shadow
chmod -R 777 *
sudo docker build --tag=ss .
sudo docker run ss

