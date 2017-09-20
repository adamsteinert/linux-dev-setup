#!/bin/sh

## Essentials
apt-get update
apt-get install -y git build-essential curl

## Nodejs
echo INSTALL Nodejs...
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs


## Visual Studio Code
echo INSTALL Visual Studio Core...
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

apt-get update
apt-get install -y code


## .NET Core
echo INSTALL .NET Core...
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'

apt-get update
apt-get install -y dotnet-sdk-2.0.0


## node tools
echo INSTALL Node Tools...
npm install -g yarn


## typescript
echo INSTALL Typescript...
npm install -g typescript


## GitKraken
echo INSTALL GitKraken...
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb


## Chrome
echo INSTALL Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb


## golang 1.9
echo INSTALL Go1.9
wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.9.linux-amd64.tar.gz
echo "PATH=\"\$PATH:/usr/local/go/bin\"" >> ~/.profile
