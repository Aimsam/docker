# VERSION 0.0.1
FROM ubuntu:14.04
MAINTAINER aimsam<1thblood@gmail.com>

VOLUME $PWD/local/:/home/work/local
# phpunit & composer
ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/phpunit
ADD https://getcomposer.org/composer.phar /usr/local/bin/composer

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /usr/local/bin/phpunit /usr/local/bin/composer /entrypoint.sh && \
mkdir /var/htdocs && \
chown -R www-data:www-data /var/htdocs

WORKDIR /var/htdocs
ENTRYPOINT ["/entrypoint.sh"]


EXPOSE 9000

CMD /home/work/local/php-7.0.6/sbin/php-fpm -F
