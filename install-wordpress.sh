curl -O https://wordpress.org/latest.tar.gz
# Ekstrak file WordPress
tar -xvzf latest.tar.gz

# Pindahkan ke direktori web, misalnya /var/www/html
sudo mv wordpress /var/www/html/

# (Opsional) Atur permission
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 755 /var/www/html/wordpress

