# to create new droplet on Digital Ocean
echo "Setting up a new droplet with mysql 8, tomcat9 and nginx"
echo "enter ip address of droplet:"

read ip_address
scp nginx.sh root@$ip_address:/tmp/
scp bootstrap.sh root@$ip_address:/tmp/
scp testdata.sh root@$ip_address:/tmp/
scp addvariables.sh root@$ip_address:/tmp/
scp certbot.sh root@$ip_address:/tmp/

ssh root@$ip_address chmod +x /tmp/bootstrap.sh
ssh root@$ip_address chmod +x /tmp/certbot.sh
ssh root@$ip_address /tmp/bootstrap.sh
#ssh root@$ip_address /tmp/certbot.sh

echo "##########################################"
echo "#  To enable https: ssh into server and run file: /tmp/certbot.sh  #"
echo "# you will be asked to enter 1: a valid email, 2: (a list of) domain name(s) to enable https for and 3: to redirect (choose option 2) http trafic."
echo "##########################################"

