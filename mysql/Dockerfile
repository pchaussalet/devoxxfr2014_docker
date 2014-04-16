FROM ubuntu:13.10

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server-5.5
RUN sed -i 's/^bind-address/#bind-address/' /etc/mysql/my.cnf

#ADD mysqld.conf /etc/supervisor/conf.d/mysqld.conf
ADD init_db.sql /tmp/init_db.sql

RUN /usr/sbin/mysqld & sleep 10 && cat /tmp/init_db.sql | mysql

EXPOSE 3306

ENTRYPOINT "/usr/bin/mysqld_safe"
