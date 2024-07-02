# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install additional PHP extensions and tools
RUN apt-get update && \
    apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libzip-dev \
        unzip \
        git \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo_mysql zip

# Enable Apache modules
RUN a2enmod rewrite

# Restart Apache to apply changes
RUN service apache2 restart

