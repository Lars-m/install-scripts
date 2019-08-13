# certbot is using the configuration file: cli.ini to auto install with no interaction.
echo "######### ADD certbot PPA ##############"
apt-get update
apt-get install software-properties-common
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get update

echo "######### Install certbot ##############"
apt-get install -y certbot python-certbot-nginx 
wget https://dl.eff.org/certbot-auto
chmod +x certbot-auto
mv certbot-auto /usr/local/bin/
mv /tmp/cli.ini /etc/letsencrypt/
echo "######### Run certbot     ##############"
certbot-auto --config cli.ini --nginx --redirect
service nginx restart
echo "######### certbot done !! ##############"




