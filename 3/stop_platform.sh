#!/bin/sh
echo docker kill nginx
docker kill nginx
echo docker rm nginx
docker rm nginx
echo docker kill appA
docker kill appA
echo docker rm appA
docker rm appA
echo docker kill appB
docker kill appB
echo docker rm appB
docker rm appB
echo docker kill mysql
docker kill mysql
echo docker rm mysql
docker rm mysql
