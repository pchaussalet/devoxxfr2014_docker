#!/bin/sh
cd my-great-app
VERSION=`xmlstarlet sel -t -v '/_:project/_:version' pom.xml`
echo mvn clean install
mvn clean install
cd ..
mkdir $VERSION
echo cp my-great-app/target/my-great-app-$VERSION.war $VERSION/app.war
cp my-great-app/target/my-great-app-$VERSION.war $VERSION/app.war
echo cd $VERSION
cd $VERSION
echo FROM devoxx/app:base
echo FROM devoxx/app:base > Dockerfile
echo docker build -t devoxx/app:$VERSION .
docker build -t devoxx/app:$VERSION .
# docker run -d --expose 8080 --name app-dev --link mysql:db -e "APP_DB_USERNAME=admin" -e "APP_DB_PASSWORD=changeme" devoxx/app:$VERSION
