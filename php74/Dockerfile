FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
        zlib1g-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql
