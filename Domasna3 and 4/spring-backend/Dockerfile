FROM openjdk:17-alpine

# Set the working directory
WORKDIR /spring-backend

# Copy the jar file into the container
COPY target/dians-0.0.1-SNAPSHOT.jar /spring-backend/dians-0.0.1-SNAPSHOT.jar

# Expose the port the application runs on
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "dians-0.0.1-SNAPSHOT.jar"]
