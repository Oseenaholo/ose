!# /bin/bash

## Deploy and Configure Web

sudo yum install -y httpd php php-mysql
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
sudo firewall-cmd --reload

# Configure httpd

#Change `DirectoryIndex index.html` to `DirectoryIndex index.php` to make the php page the default page

sudo sed -i 's/index.html/index.php/g' /etc/httpd/conf/httpd.conf

# Start httpd

sudo service httpd start
sudo systemctl enable httpd

# Download code

sudo yum install -y git
sudo git clone https://github.com/Oseenaholo/learning-app-ecommerce.git /var/www/html/

# update the index.php file to connect to the right database server. In this case `localhost` since the database is on the same server.

sudo sed -i 's/172.20.1.101/localhost/g' /var/www/html/index.php

# ON a multi-node setup remember to provide the IP address of the database server here

sudo sed -i 's/172.20.1.101/localhost/g' /var/www/html/index.php

# Test

curl http://localhost
