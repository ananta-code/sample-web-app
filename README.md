# sample-web-app
sample web app to display "Hello World!".
after creating the container we can access the app with the context path :/sample-web-app (war name)

docker file:<br>
  1 From tomcat:8.0.51-jre8-alpine <br>
  2 RUN rm -rf /usr/local/tomcat/webapps/* <br>
  3 ADD ./target/sample-web-app.war /usr/local/tomcat/webapps/sample-web-app.war <br>
  4 EXPOSE 8080 <br>
  5 CMD ["catalina.sh","run"]
<br>
build the docker image:<br>
docker build -t webappimage .<br>
run the image:<br>
docker run -p 8088:8080 --name -d tomcatsample1 webappimage
