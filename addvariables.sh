echo "#########################################"
echo "write credentials in tomcat environment variables..."
echo "#########################################"
sudo cat <<- EOF_setenv >> /opt/tomcat/bin/setenv.sh
export DEPLOYED="DEV_ON_DIGITAL_OCEAN"
export USER="dev"
export PW="ax2"
export CONNECTION_STR="jdbc:mysql://localhost:3306/mydb"
EOF_setenv
