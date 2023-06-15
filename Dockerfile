#Dockerfile

FROM tomcat:8.5.88-jdk11-temurin-focal
RUN rm -rf /usr/local/tomcat/webapps/*

WORKDIR /usr/local/tomcat/webapps

COPY target/ISTEA-App-Docker.war ./ROOT.war

CMD ["catalina.sh","run"]

