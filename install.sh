#!/bin/bash

wget https://nodejs.org/dist/v8.9.0/node-v8.9.0-linux-x64.tar.xz

VERSION=v8.9.0
DISTRO=linux-x64
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs 

cat >~/.profile<<EOF
VERSION=v8.9.0
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
EOF
. ~/.profile
VERSION=v8.9.0
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
node -v

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb 
apt install -f
rm -rf google-chrome-stable_current_amd64.deb node-v8.9.0-linux-x64.tar.xz
npm install puppeteer --unsafe-perm=true
npm install 
VERSION=v8.9.0
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
npm start 
