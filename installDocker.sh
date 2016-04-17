#!/bin/bash

# Prerequisites
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

output="$(lsb_release -r)"
for v in $output
do
	version=$v
done

if [ $version == "12.04" ]
then
	echo "deb https://apt.dockerproject.org/repo ubuntu-precise" | sudo tee /etc/apt/sources.list.d/docker.list
elif [ $version == "14.04" ]
then
	echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
elif [ $version == "15.10" ]
then
	echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" | sudo tee /etc/apt/sources.list.d/docker.list
elif [ $version == "16.04" ]
then
	echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
else 
	echo "script does not support your ubuntu version :'("
	exit
fi

sudo apt-get update
sudo apt-get purge lxc-docker
apt-cache policy docker-engine

# Prerequisites by Ubuntu Version
#  Ubuntu Xenial 16.04 (LTS)
#  Ubuntu Wily 15.10
#  Ubuntu Trusty 14.04 (LTS)

if [ $version == "12.04" ]
then
	sudo apt-get update
	sudo apt-get install -y linux-image-generic-lts-trusty
	sudo reboot
else 
	sudo apt-get update
	sudo apt-get install -y linux-image-extra-$(uname -r)
fi

sudo apt-get update
sudo apt-get install -y --force-yes docker-engine
sudo service docker start
