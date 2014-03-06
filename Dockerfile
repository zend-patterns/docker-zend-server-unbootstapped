# Zend Server
#
# Version 0.1

# TODO:
# - version as a variable (both php and ZS)

FROM ubuntu:raring

ADD add-repo.sh /add-repo.sh
ADD start.sh /start.sh
ADD run.sh /run.sh

RUN chmod 775 /*.sh
RUN /add-repo.sh && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y zend-server-php-5.5 supervisor && /usr/local/zend/bin/zendctl.sh stop

ADD zend.conf /etc/supervisor/conf.d/zend.conf

EXPOSE 80
EXPOSE 443
EXPOSE 10081
EXPOSE 10082
EXPOSE 10060
EXPOSE 10061
EXPOSE 10062

CMD ["/run.sh"]