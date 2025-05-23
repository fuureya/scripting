# Update dan upgrade sistem
sudo apt update && sudo apt upgrade -y

# Install Nginx
sudo apt install -y nginx

# Aktifkan dan jalankan layanan Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# (Opsional) Cek status Nginx
sudo systemctl status nginx --no-pager

# (Opsional) Cek apakah berjalan di browser
echo "Buka browser dan akses: http://localhost atau http://<ip-server>"

#Install software-properties-common if not installed
sudo apt install -y software-properties-common

#Add the PHP PPA (Ondřej Surý)
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update

#Install PHP 8.3 with standard/common packages
sudo apt install -y php8.3 php8.3-cli php8.3-fpm php8.3-common php8.3-mysql php8.3-xml php8.3-mbstring php8.3-curl php8.3-zip php8.3-gd php8.3-bcmath php8.3-intl php8.3-readline php8.3-soap

#(Optional) Check installed version
php -v

sudo apt install -y mariadb-server mariadb-client


sudo systemctl enable mariadb
sudo systemctl start mariadb

sudo systemctl status mariadb --no-pager

echo "===> Install selesai. Konfigurasi keamanan bisa dilakukan nanti dengan:"
echo "     sudo mysql_secure_installation"
