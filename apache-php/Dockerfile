FROM php:5.6-apache
MAINTAINER ssikyou "ssikyou@gmail.com"
ENV REFRESHED_AT 2017-1-18

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY sources-jessie.aliyun /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
	ntp \
    cron \
    libfreetype6-dev \
    libicu-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    libxslt1-dev \
&& rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure \
    gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

RUN docker-php-ext-install \
    gd \
    intl \
    mbstring \
    mcrypt \
    pdo_mysql \
    soap \
    xsl \
    zip

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer

COPY conf/php.ini /usr/local/etc/php/
COPY scripts/* /usr/local/bin/
COPY conf/qiqisdress.com.conf /etc/apache2/sites-available/
COPY magento2-2.1.3.tar.gz /tmp/

RUN a2dissite 000-default.conf
RUN a2ensite qiqisdress.com.conf
RUN a2enmod rewrite

WORKDIR /var/www/html
