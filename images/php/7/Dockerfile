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

RUN echo "deb http://mirrors.163.com/ubuntu/ xenial main restricted universe multiverse\n\
		deb http://mirrors.163.com/ubuntu/ xenial-security main restricted universe multiverse\n\
		deb http://mirrors.163.com/ubuntu/ xenial-updates main restricted universe multiverse\n\
		deb http://mirrors.163.com/ubuntu/ xenial-proposed main restricted universe multiverse\n\
		deb http://mirrors.163.com/ubuntu/ xenial-backports main restricted universe multiverse\n\
		deb-src http://mirrors.163.com/ubuntu/ xenial main restricted universe multiverse\n\
		deb-src http://mirrors.163.com/ubuntu/ xenial-security main restricted universe multiverse\n\
		deb-src http://mirrors.163.com/ubuntu/ xenial-updates main restricted universe multiverse\n\
		deb-src http://mirrors.163.com/ubuntu/ xenial-proposed main restricted universe multiverse\n\
		deb-src http://mirrors.163.com/ubuntu/ xenial-backports main restricted universe multiverse" > /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils zsh wget git curl && wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh && chsh -s /bin/zsh

EXPOSE 9000

CMD /home/work/local/php-7.0.6/sbin/php-fpm -F
