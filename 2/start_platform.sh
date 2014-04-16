#!/bin/sh
echo docker run -d --expose 3306 --name mysql --volume /home/devoxx/data:/var/lib/db/mysql:rw devoxx/mysqld
docker run -d --expose 3306 --name mysql --volume /home/devoxx/data:/var/lib/db/mysql:rw devoxx/mysqld
echo
echo docker run -d --expose 8080 --name app-1.0.0 --link mysql:db -e "APP_DB_USERNAME=admin" -e "APP_DB_PASSWORD=changeme" devoxx/app:1.0.0
docker run -d --expose 8080 --name app-1.0.0 --link mysql:db -e "APP_DB_USERNAME=admin" -e "APP_DB_PASSWORD=changeme" devoxx/app:1.0.0
echo
echo docker run -d -p 80:80 --name nginx --link app-1.0.02:app1 devoxx/nginx
docker run -d -p 80:80 --name nginx --link app-1.0.0:app1 devoxx/nginx

