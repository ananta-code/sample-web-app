From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
ADD ./target/sample-web-app.war /usr/local/tomcat/webapps/sample-web-app.war
EXPOSE 8080
CMD ["catalina.sh","run"]
