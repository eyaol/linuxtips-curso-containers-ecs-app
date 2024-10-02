FROM openjdk:21-jdk-slim
WORKDIR /app
ARG JAR_FILE=build/libs/arquiteturacontainers-1.0.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]