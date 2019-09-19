From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/sample-web-app.war /usr/local/tomcat/webapps/sample-web-app.war
CMD ["catalina.sh","run"]