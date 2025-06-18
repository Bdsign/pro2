FROM php:8.3-apache
ARG DEBIAN_FRONTEND=naniinteractive

RUN apt-get update && apt-get install -y \
    libzip-dev \
    zlib1g-dev \
    && docker-php-ext-install zip \
    && docker-php-ext-install mysqli \
    && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite
