yum install -y --exclude=kernal

yum install -y nano git unzip screen

yum insall -y httpd httpd-devel https-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

yum install -y php php-cli php-common php-devel php-mysql

yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/prakashrajamani/provision/master/files/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/prakashrajamani/provision/master/files/files/info.php

service httpd restart



