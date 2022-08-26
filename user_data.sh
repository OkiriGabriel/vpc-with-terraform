#!/bin/bash
yum update -y
yum install httpd -y
cd /var/www/html
nano index.html
echo "<html><h1>Hello, this is Gabriel</h1></html>"
service httpd start
chkconfig httpd on