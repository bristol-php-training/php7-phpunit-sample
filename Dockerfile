ARG PHP_VERSION=7.2
FROM php:${PHP_VERSION}-cli

ENV COMPOSER_ALLOW_SUPERUSER true

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install git zip -y

RUN pecl install xdebug && \
    docker-php-ext-enable xdebug

COPY ./docker/xdebug/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

COPY docker/composer/entrypoint.sh /usr/local/bin/composer-entrypoint.sh

WORKDIR /app/

CMD ["composer-entrypoint.sh"]
