#!/bin/sh
echo "ensuring fig environment is clean..."
cd 4
fig kill
fig rm --force
cd ..

STOPPED=`docker ps -a |grep Exit |cut -c-12 |xargs`
if [ -n "$STOPPED" ]; then
  echo "Removing stopped containers..."
  docker rm $STOPPED
fi

DEVOXX=`docker ps -a |grep devoxx/ |cut -c-12 |xargs`
if [ -n "$DEVOXX" ]; then
  echo "Removing remaining devoxx/* containers :"
  for service in nginx app mysql; do
    SERVICE=`docker ps -a |grep devoxx/ |grep $service |cut -c-12 |xargs`
    if [ -n "$SERVICE" ]; then
      echo "\t$service containers..."
      docker rm $SERVICE
    fi
  done
fi
