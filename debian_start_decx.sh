#!/usr/bin
# This script is for init a new debian/ubuntu server.
# Basically for personal use.

apt-get update
apt-get upgrade
apt-get install sudo
apt-get install aptitude
apt-get install vim
apt-get install nmap

export EDITOR=vi
touch /etc/vim/vimrc.local
echo "set tabstop=4" >> /etc/vim/vimrc.local
echo "set shiftwidth=4" >> /etc/vim/vimrc.local
echo "set expandtab" >> /etc/vim/vimrc.local
echo "syntax on" >> /etc/vim/vimrc.local

apt-get install apache2
a2enmod rewrite
mkdir /var/www/sites
mkdir /var/www/html
/etc/init.d/apache2 restart

apt-get install rcconf
apt-get install mysql
apt-get install ntp 

apt-get install python-pip
pip install pylint

apt-get install git
#git config --global user.name ""
#git config --global user.email "" 
# ln -sf /usr/share/zoneinfo/CST6CDT localtime 

