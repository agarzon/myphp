FROM webdevops/php-nginx-dev
MAINTAINER Alexander Garzon <agarzon@php.net>

# ioncube for PHP 7.0
ADD https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz /tmp/
RUN cd /tmp/ && tar xvfz /tmp/ioncube_loaders_lin_x86-64.tar.gz
RUN cp /tmp/ioncube/ioncube_loader_lin_* /usr/lib/php/20151012/
RUN echo "zend_extension = /usr/lib/php/20151012/ioncube_loader_lin_7.0.so" > /etc/php/7.0/cli/conf.d/01-ioncube.ini
RUN echo "zend_extension = /usr/lib/php/20151012/ioncube_loader_lin_7.0.so" > /etc/php/7.0/fpm/conf.d/01-ioncube.ini
RUN rm -rf /tmp/ioncube/

# PHPUNIT 6.4 (php 7.0 and 7.1)
ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/phpunit
RUN chmod +x /usr/local/bin/phpunit
