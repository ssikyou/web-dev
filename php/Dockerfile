FROM php:5.6-fpm
MAINTAINER ssikyou "ssikyou@gmail.com"
ENV REFRESHED_AT 2017-1-15

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY sources-jessie.aliyun /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
libfreetype6-dev \
libjpeg62-turbo-dev \
libpng12-dev \
vim \
&& docker-php-ext-install pdo_mysql \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install gd \
