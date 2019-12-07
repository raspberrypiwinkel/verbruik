#!/bin/bash
echo ""
echo "Verbruik installer"
echo ""
sudo apt-get update -y
echo ""
echo "Install git"
echo ""
sudo apt-get install git -y
echo ""
echo "Install apache2"
echo ""
sudo apt-get install apache2 -y
echo ""
echo "Install mod-php"
echo ""
sudo apt-get install php libapache2-mod-php -y
echo ""
echo "Install php-sqlite3"
echo ""
sudo apt-get install php-sqlite3
echo ""
echo "Install php-ssh2"
echo ""
sudo apt-get install php-ssh2
echo ""
echo "Install verbruik
echo ""
cd
https://github.com/raspberrypiwinkel/verbruik.git
cd wiringPi
sudo git pull origin
./build
echo ""
echo "Install Verbruik"
echo ""
cd /var/www/html
sudo git clone https://github.com/raspberrypiwinkel/verbruik.git
sudo chmod 775 -R /var/www/html
echo ""
echo "Restart apache service"
echo ""
sudo service apache2 restart
sudo rm -f /var/www/html/verbruik/installer.sh
sudo chmod 777 /var/www/html/vebruik/include/config.php
echo ""
echo "Done"
echo ""
echo ""
echo "Verbuik is als het goed is nu volledig geinstalleerd"
echo ""
IP="$(hostname -I | cut -d' ' -f1)"
echo "http://${IP}/verbuik/"
echo ""
echo "If you cant access it, then something went wrong, you can open an issue at github: https://github.com/raspberrypiwinkel/verbruik/issues"
echo ""
