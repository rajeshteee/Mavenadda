FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build//home/ubuntu/*.jar
COPY ${JAR_FILE} remoting.jar

RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add

ENTRYPOINT ["java","-jar","/remoting.jar"]
