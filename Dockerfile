FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

#USER www-data
#RUN chown -R www-data:www-data /var/www/html

COPY ./src .

RUN chmod -R o+rw bootstrap/ storage/