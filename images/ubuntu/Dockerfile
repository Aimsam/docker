# VERSION 0.0.1
FROM ubuntu:16.04
MAINTAINER aimsam<1thblood@gmail.com>

# replace repo address
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

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# update & upgrade packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y curl vim zsh git && chsh -s /bin/zsh

# change localtime
RUN cp /usr/share/zoneinfo/Asia/Chongqing /etc/localtime

WORKDIR /var/htdocs
ENTRYPOINT ["/entrypoint.sh"]




