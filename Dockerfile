# Utiliza una imagen de OpenJDK para Java
FROM openjdk:11-jre-slim

# Copia el archivo JAR de tu aplicación al contenedor
COPY target/tu-aplicacion.jar /app/app.jar

# Establece el directorio de trabajo
WORKDIR /app

# Expone el puerto en el que se ejecuta tu aplicación
EXPOSE 8080

# Comando para ejecutar tu aplicación
CMD ["java", "-jar", "app.jar"]
