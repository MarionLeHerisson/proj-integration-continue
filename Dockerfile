FROM ubuntu:16.04
 
RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php mysql-client php7.0-mysql
 
 RUN sed -i 's/;extension=php_mysqli.dll/extension=php_mysqli.dll/' /etc/php/7.0/apache2/php.ini
 RUN sed -i 's/;extension=php_pdo_mysql.dll/extension=php_pdo_mysql.dll/' /etc/php/7.0/apache2/php.ini
 
 ADD config/host.conf /etc/apache2/sites-enabled/000-default.conf
 # ADD www/ /var/www/html/
 
 ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
