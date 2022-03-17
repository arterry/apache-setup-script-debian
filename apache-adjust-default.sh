#!/bin/bash

sudo apt-get install apache2 ssh mariadb-server

#change port to 8080
sudo sed -i 's/80/8080/' /etc/apache2/ports.conf

#set server name and server admin
servadmin="debian\@test\.site"
servname="ServerName test.site"
sudo cp /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/test-site.conf
sudo sed -i 's/webmaster\@localhost/$servadmin/' /etc/apache2/sites-enabled/test-site.conf
sudo sed -i 's/\#ServerName\swww.example.com/$servname/' /etc/apache2/sites-enabled/test-site.conf

#change localhost to test.site, replace first occurance
sudo sed -i '0,/localhost/s/localhost/test\.site/' /etc/hosts

#restart apache
#/etc/init.d/apache2 restart
#systemctl restart apache2.service
