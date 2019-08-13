echo "######### ADD certbot PPA ##############"
apt-get update
apt-get install software-properties-common
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get update

echo "######### Install certbot ##############"
apt-get install certbot python-certbot-nginx 
echo "######### Run certbot     ##############"
certbot --nginx

echo "######### certbot done !! ##############"