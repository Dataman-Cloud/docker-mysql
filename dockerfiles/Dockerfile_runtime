FROM demoregistry.dataman-inc.com/library/centos7-base:latest

MAINTAINER Jinye Liu "jyliu@dataman-inc.com"

ENV PACKAGE_URL http://get.dataman-inc.com/repos/centos/7/0/mysql-community-server-minimal-5.6.26-3.el7.x86_64.rpm

# Install server
RUN yum install -y $PACKAGE_URL \
  && yum clean all && rm -rf /var/cache/yum/*

RUN mkdir /docker-entrypoint-initdb.d

COPY my.cnf.temp /etc/my.cnf
COPY docker-entrypoint.sh /entrypoint.sh
COPY init_mycnf.sh /

RUN chmod +x *.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
