# Stage 1: Build the JAR inside Render's server
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Create the actual running image
FROM eclipse-temurin:21-jre
WORKDIR /app
# This line grabs the file created in Stage 1
COPY --from=build /app/target/*.jar banksaver-v1.0.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "banksaver-v1.0.jar"]