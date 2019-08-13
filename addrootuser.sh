#!/usr/bin/env bash
# add a new user with root privileges and ssh login
echo "enter username to create non root user:"
read username
read password

sudo adduser $username --gecos "Thomas Hartmann, room, phone_work, phone_home" --disabled-password
echo $username:$password | chpasswd # the password is piped into chpasswd command to provide a password
sudo usermod -aG sudo $username

#echo "myuser:password" | sudo chpasswd
cp -r /root/.ssh /home/$username/

chmod 700 /home/$username/.ssh
chmod 600 /home/$username/.ssh/authorized_keys 
chown -R $username:$username /home/$username/.ssh

