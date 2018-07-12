#!/usr/bin/env bash

apt-get update

#install and configure nginx
apt-get install -y nginx
if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant/www /var/www
fi

#install wget
apt-get install -y wget

#install vim
apt-get install -y vim

# install Docker
apt-get remove docker docker-engine docker.io
apt-get update
apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

apt-get update

apt-get install -y docker-ce

rm -rf /home/vagrant/.docker/
mkdir /home/vagrant/.docker/
/usr/sbin/addgroup docker
/usr/sbin/usermod -aG docker vagrant
/usr/sbin/adduser vagrant docker

chown vagrant:vagrant /home/vagrant/.docker -R
chmod g+rwx /home/vagrant/.docker -R
systemctl enable docker