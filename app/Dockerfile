# Imagem base com JDK 21
FROM eclipse-temurin:21-jdk AS builder

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY . .

# Concede permissão para o gradlew
RUN chmod +x gradlew

# Executa o Gradle para construir o projeto
RUN ./gradlew build --no-daemon

# Segunda etapa: cria uma imagem mais leve para rodar o app
FROM eclipse-temurin:21-jre

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o JAR construído na etapa anterior para esta nova imagem
COPY --from=builder /app/build/libs/*.jar app.jar

# Expõe a porta da aplicação Spring Boot
EXPOSE 8080

# Comando para executar o aplicativo
ENTRYPOINT ["java", "-jar", "app.jar"]
