# Imagen base MySQL 8 oficial
FROM mysql:8

# Variables de entorno se pasan desde GitHub Secrets al hacer docker run
# ENV MYSQL_ROOT_PASSWORD, MYSQL_DATABASE, MYSQL_USER, MYSQL_PASSWORD

# Copiar el script de inicialización
# Se ejecuta automáticamente la primera vez que se levanta el contenedor
COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
