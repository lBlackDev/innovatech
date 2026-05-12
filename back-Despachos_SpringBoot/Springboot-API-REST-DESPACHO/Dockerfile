# Stage 1: Compilar con Maven
FROM maven:3.9-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn package -DskipTests -B


# Stage 2: Imagen final liviana con solo JREd
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Usuario no root
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=build /app/target/*.jar app.jar

USER appuser
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
