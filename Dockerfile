# Use Java 17 LTS
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy Spring Boot project
COPY itemapi/ .

# Make Maven Wrapper executable
RUN chmod +x mvnw

# Build the application
RUN ./mvnw clean package -DskipTests

# Copy the built jar to a known name
RUN cp target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
