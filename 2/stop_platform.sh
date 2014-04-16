#!/bin/sh
echo docker stop nginx
docker stop nginx
echo docker rm nginx
docker rm nginx
echo docker stop app-1.0.0
docker stop app-1.0.0
echo docker rm app-1.0.0
docker rm app-1.0.0
echo docker stop mysql
docker stop mysql
echo docker rm mysql
docker rm mysql
