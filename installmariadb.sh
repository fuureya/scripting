#!/bin/bash

echo "=========================================="
echo "  Instalasi MariaDB & phpMyAdmin - Kali Linux"
echo "  Username: root | Password: kali"
echo "=========================================="

# Update sistem
sudo apt update && sudo apt upgrade -y

# Install MariaDB
sudo apt install mariadb-server mariadb-client -y

# Atur password root MariaDB
sudo mysql -e "USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'kali';
FLUSH PRIVILEGES;"

# Install Apache2 dan PHP
sudo apt install apache2 php libapache2-mod-php -y

# Install phpMyAdmin dan dependensinya
sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl -y

# Link phpMyAdmin ke direktori Apache
if [ ! -L /var/www/html/phpmyadmin ]; then
    sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
    echo "phpMyAdmin terhubung ke Apache."
else
    echo "phpMyAdmin sudah terhubung ke Apache."
fi

# Restart Apache
sudo systemctl restart apache2

echo "=========================================="
echo "  Instalasi selesai!"
echo "  Akses phpMyAdmin di: http://localhost/phpmyadmin"
echo "  Login dengan Username: root | Password: kali"
echo "=========================================="
