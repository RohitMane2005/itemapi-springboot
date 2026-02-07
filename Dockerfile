# Use Java 17 LTS
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy Maven wrapper and project files
COPY . .

# Build the application
RUN ./mvnw clean package -DskipTests

# Expose port used by Spring Boot
EXPOSE 8080

# Run the jar
CMD ["java", "-jar", "target/*.jar"]
