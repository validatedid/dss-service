FROM openjdk:8-jre-alpine

LABEL maintainer="xavi.vila@validated.id"
LABEL "author"="Xavier Vila"
LABEL "company"="Validated ID"

RUN  apk update && apk add unzip

ADD https://ec.europa.eu/cefdigital/artifact/repository/esignaturedss/eu/europa/ec/joinup/sd-dss/dss-demo-bundle/5.8/dss-demo-bundle-5.8.zip /tmp
RUN unzip /tmp/dss-demo-bundle-5.8.zip -d /tmp
RUN mv /tmp/dss-demo-bundle-5.8 /dss

RUN chmod +x /dss/apache-tomcat-8.5.61/bin/catalina.sh

CMD ["/dss/apache-tomcat-8.5.61/bin/catalina.sh", "run"]