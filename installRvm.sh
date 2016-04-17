#!/bin/bash

# install curl
apt-get install curl -y

# install rvm 
curl -#LO https://rvm.io/mpapis.asc
gpg --import mpapis.asc
curl -L https://get.rvm.io | bash -s stable --ruby=2.1.5

source /usr/local/rvm/scripts/rvm
