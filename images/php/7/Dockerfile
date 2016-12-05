# VERSION 0.0.1
FROM ubuntu:14.04
MAINTAINER aimsam<1thblood@gmail.com>

VOLUME $PWD/local/:/home/work/local
# phpunit & composer
# ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/phpunit
ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
# RUN chmod +x /usr/local/bin/phpunit
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /usr/local/bin/composer /entrypoint.sh && \
mkdir /var/htdocs && \
chown -R www-data:www-data /var/htdocs

WORKDIR /var/htdocs
ENTRYPOINT ["/entrypoint.sh"]

RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\n\
		deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\n\
		deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
		deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
		deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse\n\
		deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\n\
		deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\n\
		deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\n\
		deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\n\
		deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse" > /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils wget git curl 

EXPOSE 9000

CMD /home/work/local/php-7.0.6/sbin/php-fpm -F
