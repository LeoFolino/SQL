-- CALCULAR DESCUENTO

DELIMITER $$
CREATE FUNCTION `neotec`.`descuento` (precio_original INT, porcentaje_descuento INT) 
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE precio_final INT;
    SET precio_final = precio_original - (precio_original * porcentaje_descuento / 100);
    RETURN precio_final;
END $$
DELIMITER ;

-- CALCULAR VENTAS POR EMPLEADO
DELIMITER $$
CREATE FUNCTION `neotec`.`ventas_empleado` (empleado_nombre VARCHAR(45)) 
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE ventas_totales INT;
    SET ventas_totales = (SELECT COUNT(*) FROM venta 
                        WHERE empleado_ID = (SELECT empleado_ID FROM empleado WHERE nombre = empleado_nombre));
    RETURN ventas_totales;
END $$
DELIMITER ;
