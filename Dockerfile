# Use Java 17 LTS
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Make Maven Wrapper executable (CRITICAL FIX)
RUN chmod +x mvnw

# Build the application
RUN ./mvnw clean package -DskipTests

# Expose port used by Spring Boot
EXPOSE 8080

# Run the jar
CMD ["java", "-jar", "target/*.jar"]
