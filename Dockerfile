# Use an appropriate base image with Java (e.g., OpenJDK)
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Spring Boot jar into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your Spring Boot app listens on
EXPOSE 8080

# Set any necessary environment variables (optional)
ENV SPRING_PROFILES_ACTIVE=production

# Command to run your Spring Boot app
CMD ["java", "-jar", "app.jar"]
