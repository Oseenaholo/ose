!# /bin/bash

# Install FirewallD

sudo yum install -y firewalld
sudo service firewalld start
sudo systemctl enable firewalld