FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY --from=build /home/ubuntu/workspace/test of jenkins/target/Newmavenproject-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java","-jar","/app.war"]
