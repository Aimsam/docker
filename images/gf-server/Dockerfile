# VERSION 0.0.1
FROM ubuntu:16.04
MAINTAINER aimsam<1thblood@gmail.com>

# replace repo address
# RUN echo "deb http://mirrors.163.com/ubuntu/ xenial main restricted universe multiverse\n\
#		deb http://mirrors.163.com/ubuntu/ xenial-security main restricted universe multiverse\n\
#		deb http://mirrors.163.com/ubuntu/ xenial-updates main restricted universe multiverse\n\
#		deb http://mirrors.163.com/ubuntu/ xenial-proposed main restricted universe multiverse\n\
#		deb http://mirrors.163.com/ubuntu/ xenial-backports main restricted universe multiverse\n\
#		deb-src http://mirrors.163.com/ubuntu/ xenial main restricted universe multiverse\n\
#		deb-src http://mirrors.163.com/ubuntu/ xenial-security main restricted universe multiverse\n\
#		deb-src http://mirrors.163.com/ubuntu/ xenial-updates main restricted universe multiverse\n\
#		deb-src http://mirrors.163.com/ubuntu/ xenial-proposed main restricted universe multiverse\n\
#		deb-src http://mirrors.163.com/ubuntu/ xenial-backports main restricted universe multiverse" > /etc/apt/sources.list

# update & upgrade packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y zsh apt-utils wget python-pip git tesseract-ocr python-dev python-setuptools libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk && chsh -s /bin/zsh

RUN pip install --upgrade pip && pip install pytesseract pillow

# change localtime
RUN cp /usr/share/zoneinfo/Asia/Chongqing /etc/localtime

EXPOSE 8000

CMD python /var/htdocs/go/src/bountyhunter/script/gf_server/server.py

WORKDIR /var/htdocs




