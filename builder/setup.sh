#!/bin/sh

set -xe

echo "deb-src http://deb.debian.org/debian stretch main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update && sudo apt upgrade -y
sudo apt install -y time
cp ~/bin/build.sh ~/work/
