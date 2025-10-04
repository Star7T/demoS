# Imagen base de Java 17
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo .jar generado por Maven
COPY target/*.jar app.jar

# Expone el puerto en el que corre Spring Boot (por defecto 8080)
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
