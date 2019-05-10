FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get install -y php libapache2-mod-php php-mcrypt php-mysql
RUN apt-get clean
RUN a2enmod rewrite
COPY info.php /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]