FROM php:8.0

RUN apt-get update \
        && apt-get -y install \
        git \
        zip \
        nano \
        libpng-dev \
        zlib1g-dev \
        unzip \
        libzip-dev \
        zip \
        && docker-php-ext-install \
        pdo_mysql \
        && curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=1.9.1

COPY ./app ./app/
COPY ./bootstrap ./bootstrap/
COPY ./config ./config/
COPY ./database ./database/
COPY ./public ./public/
COPY ./resources ./resources/
COPY ./routes ./routes/
COPY ./storage ./storage/
COPY ./artisan ./artisan
COPY ./.env.example ./.env
COPY ./phpunit.xml ./phpunit.xml

COPY composer.* ./
RUN composer install --prefer-dist --optimize-autoloader
