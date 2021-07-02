FROM php:7.4-fpm

# Arguments defined in docker-compose.yml
ARG user
ARG uid

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

RUN composer install

COPY ./app ./app/
COPY ./bootstrap ./bootstrap/
COPY ./config ./config/
COPY ./database ./database/
COPY ./public ./public/
COPY ./resources ./resources/
COPY ./routes ./routes/
COPY ./storage ./storage/
COPY ./artisan ./artisan
COPY ./.env ./.env
COPY ./phpunit.xml ./phpunit.xml

# Get latest Composer
COPY composer.* ./
RUN composer install --prefer-dist --optimize-autoloader

# Set working directory
WORKDIR /var/www

USER $user
