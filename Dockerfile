FROM eclipse-temurin:17

LABEL authors="afulvio"

WORKDIR /app

COPY target/api-gateway-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 9191

#ENV SPRING_PROFILES_ACTIVE=docker

CMD ["java", "-jar", "-Dspring.profiles.active=docker", "app.jar"]