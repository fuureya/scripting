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
