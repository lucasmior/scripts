#!/bin/bash

# install curl
apt-get install curl -y

# install rvm 
curl -#LO https://rvm.io/mpapis.asc
gpg --import mpapis.asc
curl -L https://get.rvm.io | bash -s stable --ruby=2.1.5

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> .bashrc
source /usr/local/rvm/scripts/rvm

echo 'Please restart the terminar to use ruby :)'
