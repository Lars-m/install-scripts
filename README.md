# Install scripts
## Install identical servers on vagrant image and digital ocean droplet

This project serves as an install automation of 
- mysql 8.13-1
- tomcat 9.0.21
- nginx
- certificates for https with certbot and lets-encrypt
- testdata for mysql
- tomcat environment variables

### For vagrant
In Vagrantfile adjust how much of your computers memory (RAM) you will allow the virtual image to reserve. (Somewhere around line 100) default is 2 GB but it can run with 1GB if necessary.

Set port forwarding to localhost and forward mysql port `3306 to 3306` on the host (but only if you are note running a local instance of mysql server. If you have a local mysql server just put host port as: `3307`) and connect on this port when using on mysql workbench and from java code.

If VirtualBox and vagrant are installed locally then from within this project root run:
- `vagrant up`

### For newly created Digital Ocean droplet
From this project root run:
- ./do.sh
- enter ipaddress of the new droplet
- answer questions:
  1. valid email
  2. domain name(s) to use with https
  3. choose option 2 (redirect)
Finally on Digital Oceans website setup your domain name and create DNS records of type A to point to your new droplet.