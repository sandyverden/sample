
FROM frolvlad/alpine-oraclejdk8:slim
COPY target/*-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
