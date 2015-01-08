# docker-dnsmasq
# VERSION 0.1.0

FROM ubuntu:14.04
MAINTAINER jiasir <jiasir@icloud.com>

Add banner_add_hosts /usr/local/etc/banner_add_hosts

RUN apt-get update \
	&& apt-get install -y dnsmasq\
	&& rm -rf /var/lib/apt/lists/*
RUN echo "no-hosts" >> /etc/dnsmasq.conf
RUN echo "addn-hosts=/usr/local/etc/banner_add_hosts" >> /etc/dnsmasq.conf
RUN echo "user=root" >> /etc/dnsmasq.conf
VOLUME /usr/local/etc
EXPOSE 53 53/udp
CMD ["dnsmasq", "-d", "-C", "/etc/dnsmasq.conf"]
