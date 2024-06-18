FROM eclipse-temurin:17-jdk-focal as build
WORKDIR /app
ADD .mvn .mvn
COPY mvnw pom.xml ./
COPY src ./src
# RUN ./mvnw package -DskipTests
CMD ["./mvnw", "spring-boot:run"]

# FROM openjdk:17-alpine
# COPY --from=build /app/target/spring-boot-docker-0.0.1-SNAPSHOT.jar /app.jar
# ENTRYPOINT ["java", "-jar", "/app.jar"]

 