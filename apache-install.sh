#! /bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl enable httpd
sudo systemctl start httpd
echo "<h1> Welcome to Terraform Learning Course. Kindly concentrate and work hard -- Discussing Enterprise Cloud</h1>" >> /var/www/html/index.html
sudo systemctl restart httpd