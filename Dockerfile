FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/banksaver-0.0.1-SNAPSHOT.jar banksaver-v1.0.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "banksaver-v1.0.jar"]