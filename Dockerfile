FROM php:apache

RUN apt-get update && apt-get upgrade -y

RUN apt-get install zip unzip -y

RUN a2enmod rewrite

RUN docker-php-ext-install pdo pdo_mysql bcmath

COPY --from=composer /usr/bin/composer /usr/bin/composer
