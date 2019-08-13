# certbot is using the configuration file: cli.ini to auto install with no interaction.
echo "######### ADD certbot PPA ##############"
apt-get update
apt-get install software-properties-common
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get update

echo "######### Install certbot ##############"
apt-get install certbot python-certbot-nginx 
echo "######### Run certbot     ##############"
certbot-auto certbot-auto --no-self-upgrade --nginx
service nginx restart
echo "######### certbot done !! ##############"