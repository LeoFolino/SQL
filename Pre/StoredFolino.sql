-- CREAR S.P. QUE ORDENE LAS TABLAS POR NOMBRE ASCENDENTE O DESCENDENTE
-- CALL orden_de_tablas('tabla','nombre', 'ASC' o 'DESC') siendo "nombre" inamovíble

DELIMITER $$
CREATE PROCEDURE orden_de_tablas(IN nombre_tabla VARCHAR(50), IN nombre_columna VARCHAR(50), IN tipo_orden VARCHAR(4))
BEGIN
    SET @tabla = CONCAT('SELECT * FROM ', nombre_tabla, ' ORDER BY ', nombre_columna, ' ', tipo_orden);
    PREPARE stmt FROM @tabla;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$
DELIMITER ;

-- CREAR S.P. QUE INSERTE REGISTROS NUEVOS
-- CALL insertar_registros('empleado', 'Leonel Folino', 25, 1564953356, 'leonelfolinoing@gmail.com');
-- TAMBIÉN PUEDE FUNCIONAR PARA INSERTAR REGISTROS EN LA TABLA PROVEEDOR y CLIENTE
DELIMITER $$
CREATE PROCEDURE insertar_registros(IN nombre_de_tabla VARCHAR(15), IN nombre VARCHAR(30), IN direccion_ID INT, IN telefono INT, IN email VARCHAR(50))
BEGIN
    SET @insertar = CONCAT('INSERT INTO ', nombre_de_tabla, ' (nombre, direccion_ID, telefono, email) VALUES (''', nombre, ''', ', direccion_ID, ', ', telefono, ', ''', email, ''')');
    PREPARE stmt FROM @insertar;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$
DELIMITER ;


