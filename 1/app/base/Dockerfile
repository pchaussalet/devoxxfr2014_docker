FROM ubuntu:13.10

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y tomcat7
RUN rm -rf /var/lib/tomcat7/webapps/ROOT

ENV CATALINA_BASE /var/lib/tomcat7

ONBUILD ADD app.war /var/lib/tomcat7/webapps/ROOT.war

ENTRYPOINT ["/usr/share/tomcat7/bin/catalina.sh", "run"]
