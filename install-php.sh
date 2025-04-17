# 1. Update system packages
sudo apt update && sudo apt upgrade -y

# 2. Install software-properties-common if not installed
sudo apt install -y software-properties-common

# 3. Add the PHP PPA (Ondřej Surý)
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update

# 4. Install PHP 8.3 with standard/common packages
sudo apt install -y php8.3 php8.3-cli php8.3-fpm php8.3-common php8.3-mysql php8.3-xml php8.3-mbstring php8.3-curl php8.3-zip php8.3-gd php8.3-bcmath php8.3-intl php8.3-readline php8.3-soap

# 5. (Optional) Check installed version
php -v
