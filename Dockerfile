# Usamos la versión JRE (más ligera) sobre Ubuntu Jammy
FROM tomcat:9.0.115-jre8-temurin-jammy

# Limpiamos las apps de ejemplo que trae Tomcat (opcional pero recomendado)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo .war y lo renombramos a ROOT.war
# Asegúrate de que la ruta "./dist/NIMO.war" coincida con donde está tu archivo real
COPY ./target/NIMO-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto
EXPOSE 8080

# Comando de arranque
CMD ["catalina.sh", "run"]