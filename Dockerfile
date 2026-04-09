# Stage 1: Build stage (Maven + Java 17)
# Humne stable image use ki hai taki build fail na ho
FROM maven:3.8.6-eclipse-temurin-17 AS builder

# Container ke andar working directory
WORKDIR /app

# Sabse pehle pom.xml copy karein dependencies download karne ke liye
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Source code copy karein
COPY src ./src

# Project build karein aur JAR file generate karein
RUN mvn clean package -DskipTests

# Stage 2: Runtime stage (Sirf Java 17 JRE)
# openjdk:17-jdk-slim ki jagah hum eclipse-temurin use kar rahe hain jo Render par chalta hai
FROM eclipse-temurin:17-jre-focal

WORKDIR /app

# Builder stage se JAR file copy karein
# Aapke pom.xml ke hisaab se name: EducationCrmProject-1.0.jar
COPY --from=builder /app/target/EducationCrmProject-1.0.jar app.jar

# Port jo aapne configure kiya hai
EXPOSE 8085

# Render ke dynamic PORT ko handle karne ke liye command
ENTRYPOINT ["java", "-Dserver.port=${PORT}", "-jar", "app.jar"]
