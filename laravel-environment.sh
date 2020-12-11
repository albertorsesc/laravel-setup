#!/usr/bin/env bash

# This Script is intended to be use in the following situation:
# OS: Ubuntu 16.04/20.04
# When: Need to setup a web development environment for PHP developers.


# Stack:
# Server: Apache2 latest
# Database: MySQL latest
# Language: PHPv7.4
# PHP Dependencies:
        # pear
        # curl
        # dev
        # gd
        # mbstring
        # zip
        # mysql
        # xml
        # cli
        # common
	      # sqlite3
        # libapache2-mod-php;
# Curl
# Composer
# Git

echo "---------------------------------------"
echo        "Updating & Upgrading Ubuntu"
echo "---------------------------------------"

sudo apt-get update;
sudo apt-get upgrade -y;
sudo apt-get dist-upgrade -y;

echo "---------------------------------------"
echo "Finalizing Updating & Upgrading Ubuntu"
echo "---------------------------------------"

echo "---------------------------------------"
echo  "Initializing Environment Installation"
echo "---------------------------------------"

echo "#================|  Installing Apache2 Server... |================#";

sudo apt-get install -y apache2;

echo "#================|  Finalizing Apache2 Server... |================#";

# Choose between PHP Versions
echo "#================|  Installing PHP... |================#";
echo "####"
echo "Select PHP Version to install:"

echo "1. PHP 7.4"

echo "Number? "

read phpVersion

echo "You selected number: $phpVersion"

case $phpVersion in 

	1) 
		echo "#================|  Installing PHP-7.0... |================#";

    sudo apt-get install -y python-software-properties;
		sudo add-apt-repository -y ppa:ondrej/php;
		sudo apt-get update;
		sudo apt-get install -y php7.4
					libapache2-mod-php7.4
					php7.4-fpm
					php7.4-cli
					php7.4-common
					php7.4-mbstring
					php7.4-gd
					php7.4-intl
					php7.4-xml
					php7.4-mysql
					php7.4-zip;
					php-pear
					php7.4-curl
					php7.4-dev

		echo "#================|  End of PHP-7.4 Installation... |================#";;
esac

# echo "#================|  Finalizing PHP Installation... |================#";


echo "#================|  Installing MySQL... |================#";

sudo apt-get update;
sudo apt-get upgrade;
sudo apt-get install mysql-server -y;

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

sudo phpenmod mcrypt;
sudo phpenmod mbstring;

sudo systemctl restart apache2;

echo "#================|  Installing GIT... |================#";

sudo apt-get install git -y;

echo "#================|  Finalizing GIT Installation... |================#";

echo "#================|  Installing Curl... |================#";

sudo apt-get install -y curl;

echo "#================|  Finalizing Curl Installation... |================#";

echo "#================|  Installing Composer... |================#";

cd ~;
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer;
composer;

echo "#================|  Finalizing Composer Installation... |================#";

echo "---------------------------------------"
echo  "Finalizing Environment Installation"
echo "---------------------------------------"

echo "---------------------------------------"
echo        "Verifying Services Status"
echo "---------------------------------------"

sudo service apache2 status;
echo "!! Press letter 'Q' to exit !!"

echo "PHP Version"
php -v;

echo "---------------------------------------"
echo        "End of Environment Setup"
echo "---------------------------------------"

echo "---------------------------------------"
echo                "GoodBye!!"
echo "---------------------------------------"
