sudo apt install phpmyadmin # apache2, password != root password
sudo apt install libapache2-mod-php # Fix  * Main loader script
# Create a user to access via PMA (!root)
# GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'pass' WITH GRANT OPTION;
sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf



