FROM ubuntu:13.10

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y nginx-light
RUN sed -i 1i'daemon off;' /etc/nginx/nginx.conf

ADD start_nginx.sh /usr/local/bin/start_nginx.sh

EXPOSE 80

ENTRYPOINT "/usr/local/bin/start_nginx.sh"
