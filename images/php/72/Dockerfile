FROM php:7.2-fpm-alpine

ADD https://getcomposer.org/download/1.9.0/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN	echo "http://mirrors.aliyun.com/alpine/v3.7/community" >> /etc/apk/repositories && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --update --virtual buildDeps autoconf gcc g++ make libffi-dev openssl-dev libpng-dev libzip-dev git bash
RUN cd /tmp && wget https://codeload.github.com/edenhill/librdkafka/zip/master && unzip master && cd librdkafka-master && ./configure && make && make install && rm -r /tmp/librdkafka-master && rm -r /tmp/master
RUN docker-php-ext-install pdo_mysql bcmath gd zip
RUN pecl install redis && pecl install yaf && pecl install rdkafka && docker-php-ext-enable yaf redis rdkafka
RUN apk del buildDeps

ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

EXPOSE 9000

CMD ["php-fpm"]
