#!/bin/bash

# install curl
apt-get install curl -y

# install rvm alternative1
#curl -#LO https://rvm.io/mpapis.asc
#gpg --import mpapis.asc

# install rvm alternative2
#sudo chown -R $USER:$USER ~/.gnupg/
#command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
#sudo chown -R $USER:$USER ~/.gnupg/

# Gereric steps
curl -L https://get.rvm.io | bash -s stable --ruby=2.1.5

source /home/$USER/.rvm/scripts/rvm
source /usr/local/rvm/scripts/rvm
