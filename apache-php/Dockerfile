FROM php:5.6-apache
MAINTAINER ssikyou "ssikyou@gmail.com"
ENV REFRESHED_AT 2017-1-18

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY sources-jessie.aliyun /etc/apt/sources.list

#RUN apt-get update && apt-get install -y --no-install-recommends \
#    vim \
#&& rm -rf /var/lib/apt/lists/*

COPY apache-php/conf/qiqisdress.com.conf /etc/apache2/sites-available/
#RUN a2ensite qiqisdress.com.conf
#RUN a2enmod rewrite
