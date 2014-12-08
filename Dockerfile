FROM centos:centos6

MAINTAINER ishiidaichi

RUN yum -y update

RUN yum -y install httpd gcc make git mysql-server mysql mysql-client python-setuptools
ADD default.conf /etc/httpd/conf.d/virtualhost-default.conf

RUN rpm -Uvh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN yum -y install --enablerepo=remi --enablerepo=remi-php56 php php-opcache php-devel php-mbstring php-mcrypt php-mysqlnd php-pecl-xdebug php-pecl-xhprof pcre-devel

ADD mongodb.repo /etc/yum.repos.d/mongodb.repo
RUN yum install -y mongodb-org
RUN mkdir /data
RUN mkdir /data/db
RUN pecl install mongo
RUN echo extension=mongo.so >> /etc/php.d/mongo.ini

RUN git clone --depth=1 git://github.com/phalcon/cphalcon.git /root/phalcon
RUN cd /root/phalcon/build && ./install 64bits
RUN echo extension=/usr/lib64/php/modules/phalcon.so >> /etc/php.d/phalcon.ini

RUN easy_install supervisor
ADD supervisord.conf /etc/supervisord.conf

EXPOSE 80

CMD ["/usr/bin/supervisord"]