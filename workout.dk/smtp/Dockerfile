FROM phusion/baseimage:0.9.16

MAINTAINER dennis@moellegaard.dk

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

# Install postfix
RUN apt-get update && apt-get install postfix -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY setup_postfix.sh /etc/my_init.d/setup_postfix.sh
RUN postconf mynetworks=127.0.0.0/8,172.17.0.0/16
RUN postconf mynetworks_style=class
RUN chmod +x /etc/my_init.d/setup_postfix.sh

EXPOSE 25

CMD ["/sbin/my_init"]
