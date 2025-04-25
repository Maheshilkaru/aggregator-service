# Use OpenJDK 17 as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file built by Maven to the container
COPY target/aggregator-service-0.0.1-SNAPSHOT.jar aggregator-service.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "aggregator-service.jar"]
