#!/usr/bin/env bash

echo "Installing Dependencies..."
export DEBIAN_FRONTEND="noninteractive";


echo #######           Setup the firewall             ####
echo ####### Allow OPENSSH, port 80, 8080 and https   ####

sudo ufw allow OpenSSH
sudo ufw allow http
sudo ufw allow https
sudo ufw allow 8080

sudo ufw allow mysql
sudo ufw --force enable

echo # If you want to play arund with Tomcat without Nginx add this rule:
echo # sudo ufw allow 8080

echo "########################################################################################"
echo "############################ ADDITIONAL SETUP           ################################"
echo "########################################################################################"

echo "############################      Install Mysql web server     ########################"
source $(dirname $0)/mysql.sh
echo "############################      Install TOMCAT web server     ########################"
source $(dirname $0)/tomcat.sh
echo "############################      Add test data to mysql        ########################"
source $(dirname $0)/testdata.sh
echo "############################   Add system variables to tomcat   ########################"
source $(dirname $0)/addvariables.sh
echo "############################ Add https certificate with certbot ########################"
source $(dirname $0)/certbot.sh


echo "Provisioning Complete!!"
