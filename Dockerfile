FROM openjdk:8-jre-alpine

WORKDIR application
COPY lib lib
COPY ./target/maven-docker-example-0.0.1-SNAPSHOT.jar maven-docker-example-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["/usr/bin/java", "-jar", "maven-docker-example-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
