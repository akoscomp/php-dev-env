FROM php:5.6-apache

#RUN apt-get update && apt-get install -y \
#        zlib1g-dev \
#        libpng-dev \
#    && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql

### build with popular libs
RUN apt-get update && apt-get install -y \
        zlib1g-dev \
        libpng-dev \
        libcurl4-gnutls-dev \
        libmcrypt-dev \
        libxml2-dev \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql curl mcrypt mbstring soap zip
