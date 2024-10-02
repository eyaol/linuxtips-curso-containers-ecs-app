# Etapa 1: Construção da aplicação
FROM gradle:jdk21 AS build # Use o Gradle 8.3 com JDK 21
WORKDIR /app
COPY --chown=gradle:gradle . /app
RUN ./gradlew build

# Etapa 2: Criação da imagem final
FROM openjdk:21-jdk-slim
WORKDIR /app
# Copia o arquivo JAR gerado na etapa de build
COPY --from=build /app/build/libs/*.jar app.jar
# Define o comando de entrada para executar o JAR
ENTRYPOINT ["java","-jar","/app/app.jar"]
