#!/bin/bash

CONF_DIR=/etc/nginx/sites-enabled
UP_COUNT=${UPSTREAMS:-1}

UP_STANZAS=""

index=0
while [ $index -lt $UP_COUNT ]; do
#for index in {1..$UP_COUNT}; do
  let $((index++))
  IP_ADDR=`eval echo '$'APP${index}_PORT_8080_TCP_ADDR`
  UP_STANZAS="${UP_STANZAS}"$'\n'"server ${IP_ADDR}:8080;"
done

echo ${UP_STANZAS}

rm ${CONF_DIR}/*
cat << EOF > ${CONF_DIR}/app
upstream backend {
  ${UP_STANZAS}
}

server {
  listen 80;
  server_name localhost;

  location / {
    proxy_pass http://backend;
  }
}
EOF

/usr/sbin/nginx
