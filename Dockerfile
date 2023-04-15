# Dockerfile for the main wordpress container 
# Change the version if you want more up-to-date wordpress installation. 4.8 = mid-2017
FROM wordpress:4.8-php7.1-apache

COPY ./other /var/www/html/
COPY ./bin/install-wp.sh /install-wp.sh

ENV PORT 80
ENV PORT 8081

RUN touch /var/www/html/.htaccess
RUN chmod 777 /var/www/html/.htaccess