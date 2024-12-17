# Use Java 17 base image
FROM openjdk:17-jdk-slim

# Set the maintainer for the image
LABEL maintainer="prawin1439@gmail.com"

# Set the working directory inside the container
WORKDIR /app

# Expose the application port
EXPOSE 8080

# Copy the application JAR file into the container
COPY target/RDS_MYSQL_Example-0.0.1-SNAPSHOT.jar rds.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app/rds.jar"]
