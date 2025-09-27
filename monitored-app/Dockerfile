# Stage 1: Build the app with Maven
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run the app using a lightweight JDK 21 image
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app

# Copy only the JAR from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the port (change if your app uses another port)
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
