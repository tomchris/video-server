FROM ubuntu:16.04

MAINTAINER Tom Christopoulos <tom@g6ventures.com>

RUN apt-get -y -q update 
RUN apt-get install -y \
      git \
      gcc \
      make \
      libpcre3-dev \
      libssl-dev \
      wget

RUN mkdir -p /home/nginx-rtmp-module
RUN git clone https://github.com/arut/nginx-rtmp-module /home/nginx-rtmp-module

RUN mkdir -p /home/nginx
RUN cd /home/nginx && wget http://nginx.org/download/nginx-1.4.3.tar.gz && tar zxpvf nginx-1.4.3.tar.gz
RUN cd /home/nginx/nginx-1.4.3 && ./configure --add-module=/home/nginx-rtmp-module/ --with-http_ssl_module --prefix=/usr/local/nginx-streaming/
RUN cd /home/nginx/nginx-1.4.3&& make && make install

RUN mkdir -p /var/www/html
RUN mkdir -p /var/nginx-streaming
RUN mkdir -p /var/log/nginx
RUN cp /home/nginx-rtmp-module/stat.xsl /var/nginx-streaming/

ADD nginx/nginx.conf /usr/local/nginx-streaming/conf/nginx.conf
