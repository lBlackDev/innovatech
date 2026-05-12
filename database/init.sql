-- Crear base de datos para Ventas
CREATE DATABASE IF NOT EXISTS tienda_ventas
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- Crear base de datos para Despachos
CREATE DATABASE IF NOT EXISTS tienda_despachos
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- Otorgar permisos al usuario de la app sobre ambas bases
GRANT ALL PRIVILEGES ON tienda_ventas.*   TO 'alumno'@'%';
GRANT ALL PRIVILEGES ON tienda_despachos.* TO 'alumno'@'%';
FLUSH PRIVILEGES;
