-- CREAR USUARIO DE LECTURA
CREATE USER 'lectura'@'localhost' IDENTIFIED BY 'miPasswordLectura';

-- CREAR USUARIO PARA LEER, INSERTAR Y MODIFICAR DATOS
CREATE USER 'modificar'@'localhost' IDENTIFIED BY 'miPasswordModificar';

-- BRINDA AL USUARIO "LECTURA" EL PERMISO DE SOLO HACER USO DE LA SENTENCIA SELECT PARA VISUALIZAR LAS TABLAS
GRANT SELECT ON neotec.* TO 'lectura'@'localhost';

-- BRINDA AL USUARIO "MODIFICAR" EL PERMISO DE VER, INSERTAR Y MODIFICAR DATOS EN LAS TABLAS
GRANT SELECT, INSERT, UPDATE ON neotec.* TO 'modificar'@'localhost';