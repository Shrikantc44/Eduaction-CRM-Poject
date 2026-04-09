# Stage 1: Build stage
# Maven image with OpenJDK 17 use kar rahe hain compile karne ke liye
FROM maven:3.8.5-openjdk-17 AS builder

# Container ke andar working directory create karein
WORKDIR /app

# Pom file copy karein dependencies download karne ke liye (Caching optimize karne ke liye)
COPY pom.xml .
RUN mvn dependency:go-offline

# Source code copy karein
COPY src ./src

# Project build karein aur final JAR banayein
RUN mvn clean package -DskipTests

# Stage 2: Runtime stage
# Lightweight JRE/JDK image run karne ke liye
FROM openjdk:17-jdk-slim

WORKDIR /app

# Builder stage se sirf bani hui JAR file copy karein
# Aapke pom.xml ke analysis ke mutabiq name: EducationCrmProject-1.0.jar
COPY --from=builder /app/target/EducationCrmProject-1.0.jar app.jar

# Application port (aapne application.properties mein 8085 rakha hai)
EXPOSE 8085

# Application ko run karne ki command
# Render ka $PORT environment variable handle karne ke liye hum property pass kar sakte hain
ENTRYPOINT ["java", "-Dserver.port=${PORT}", "-jar", "app.jar"]
