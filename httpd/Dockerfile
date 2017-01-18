FROM httpd:2.4
MAINTAINER ssikyou "ssikyou@gmail.com"
ENV REFRESHED_AT 2017-1-18

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY sources-jessie.aliyun /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
php5

