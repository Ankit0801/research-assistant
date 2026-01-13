# Use official Java image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the application
RUN ./mvnw clean package -DskipTests

# Expose port (Render uses PORT env)
EXPOSE 8080

# Start Spring Boot app
CMD ["java", "-jar", "target/research-assistant-0.0.1-SNAPSHOT.jar"]
