FROM maven:3-eclipse-temurin-17 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM eclipse-temurin:17-alpine
COPY --from=build /target/DogMangementSystem-0.0.1-SNAPSHOT.jar DogMangementSystem.jar
CMD ["java", "-jar", "DogMangementSystem.jar"]