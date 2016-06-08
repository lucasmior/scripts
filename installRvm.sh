#!/bin/bash

# install curl
apt-get install curl -y

# install rvm
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
sudo chown -R $USER:$USER ~/.gnupg/

# second alternative to install rvm
#curl -#LO https://rvm.io/mpapis.asc
#gpg --import mpapis.asc

# Gereric steps
curl -L https://get.rvm.io | bash -s stable --ruby=2.1.5

source /home/$USER/.rvm/scripts/rvm
