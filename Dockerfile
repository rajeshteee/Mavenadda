FROM openjdk:11
EXPOSE 8181
ADD target/Mavenaproject-sample.jar Mavenaproject-sample.jar
ENTRYPOINT ["java","-jar","/Mavenaproject-sample.jar"]
