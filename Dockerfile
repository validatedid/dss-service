FROM openjdk:14-alpine
LABEL maintainer="xavi.vila@validated.id"
LABEL "author"="Xavier Vila"
LABEL "company"="Validated ID"

RUN  apk update && apk add unzip

ADD https://ec.europa.eu/cefdigital/artifact/repository/esignaturedss/eu/europa/ec/joinup/sd-dss/dss-demo-bundle/5.7/dss-demo-bundle-5.7.zip /tmp
RUN unzip /tmp/dss-demo-bundle-5.7.zip -d /tmp
RUN mv /tmp/dss-demo-bundle-5.7 /dss

RUN chmod +x /dss/apache-tomcat-8.5.56/bin/catalina.sh

COPY ./startup.sh /dss/

ENTRYPOINT [ "/dss/startup.sh" ]
CMD [ "/bin/sh" ]