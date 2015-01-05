FROM gitinsky/baseimage:0.1.0
MAINTAINER Git In Sky <support@gitinsky.com>
EXPOSE 53

RUN apt-get update && apt-get -y install bind9 && mkdir /etc/bind/zones && mkdir /etc/bind/zones/master && mkdir /etc/bind/zones/slave && chown bind /etc/bind/zones/slave && mkdir /run/named && chown bind /run/named
VOLUME /etc/bind/zones/master
ADD bind.rb /etc/eye/bind.rb
