# ---------- Stage 1: Build WAR file using Maven ----------
FROM maven:3.9.6-eclipse-temurin-17 AS builder
 
# Set working directory
WORKDIR /app
 
# Copy Maven project files
COPY pom.xml ./
COPY src ./src
 
# Build the WAR
RUN mvn clean package
 
# ---------- Stage 2: Deploy to Tomcat ----------
FROM tomcat:9-jdk17-temurin
 
# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*
 
# Copy the WAR file built in the previous stage
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
 
# Expose port 8080
EXPOSE 8080
 
# Start Tomcat
CMD ["catalina.sh", "run"]