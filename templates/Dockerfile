FROM gitinsky/baseimage:0.1.9
MAINTAINER Git In Sky <support@gitinsky.com>
EXPOSE 53

RUN apt-get update && apt-get -y install bind9 && mkdir /etc/bind/zones && mkdir /etc/bind/zones/master && mkdir /etc/bind/zones/slave && chown bind /etc/bind/zones/slave && mkdir /run/named && chown bind /run/named
VOLUME /etc/bind/zones/master
ADD start.sh /start.sh

VOLUME "/etc/bind/zones/slave"
VOLUME "/var/run/named"
VOLUME "/var/cache/bind"

CMD ["/start.sh"]
