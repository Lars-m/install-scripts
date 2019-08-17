# certbot is using the configuration file: cli.ini to auto install with no interaction.
echo "######### ADD certbot PPA ##############"
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

echo "######### Install certbot ##############"
sudo apt-get install -y certbot python-certbot-nginx 
wget https://dl.eff.org/certbot-auto
sudo chmod +x certbot-auto
sudo mv certbot-auto /usr/local/bin/
sudo cp /tmp/cli.ini /etc/letsencrypt/cli.ini
echo "######### Run certbot     ##############"
sudo certbot-auto --config cli.ini --nginx --redirect
sudo service nginx restart
echo "######### certbot done !! ##############"




