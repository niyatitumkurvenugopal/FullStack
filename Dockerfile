# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

RUN mkdir -p /opt/fullstack
# Set the working directory in the container
WORKDIR /app/fullstack

# Copy the packaged JAR file into the container at position /app
COPY target/fullstack-0.0.1-SNAPSHOT.jar /app/fullstack-0.0.1-SNAPSHOT.jar

# Specify the command to run on container start
CMD ["java", "-jar", "fullstack-0.0.1-SNAPSHOT.jar"]
