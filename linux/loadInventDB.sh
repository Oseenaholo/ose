!# /bin/bash

# Load Product Inventory Information to database
# Create the db-load-script.sql

cat > db-load-script.sql 
USE ecomdb;
CREATE TABLE products (id mediumint(8) unsigned NOT NULL auto_increment,Name varchar(255) default NULL,Price varchar(255) default NULL, ImageUrl varchar(255) default NULL,PRIMARY KEY (id)) AUTO_INCREMENT=1;

INSERT INTO products (Name,Price,ImageUrl) VALUES ("Laptop","100","c-1.png"),("Drone","200","c-2.png"),("VR","300","c-3.png"),("Tablet","50","c-5.png"),("Watch","90","c-6.png"),("Phone Covers","20","c-7.png"),("Phone","80","c-8.png"),("Laptop","150","c-4.png");


# Run sql script
sudo mysql < db-load-script.sql

# Verify database is populated with data
sudo mysql
SHOW databases;
USE ecomdb;
SELECT * from products;
