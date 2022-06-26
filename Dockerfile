FROM ubuntu:latest
RUN apt-get update -y
RUN apt install openjdk-11-jdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.64.tar.gz
RUN mv apache-tomcat-9.0.64/* /opt/tomcat
EXPOSE 8080
COPY target/Newmavenproject-0.0.1-SNAPSHOT.war /opt/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
