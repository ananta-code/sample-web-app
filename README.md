# sample-web-app
sample web app to display "Hello World!".
after creating the container we can access the app with the context path :/sample-web-app (war name)

docker file:
  1 From tomcat:8.0.51-jre8-alpine
  2 RUN rm -rf /usr/local/tomcat/webapps/*
  3 ADD ./target/sample-web-app.war /usr/local/tomcat/webapps/sample-web-app.war
  4 EXPOSE 8080
  5 CMD ["catalina.sh","run"]
